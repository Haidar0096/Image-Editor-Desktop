import 'dart:ui' as ui;

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart' as widgets;
import 'package:flutter/material.dart' as material;
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:photo_editor/extensions/string_extension.dart';
import 'package:photo_editor/services/editor/editor.dart';
import 'package:photo_editor/services/editor/editor_extension.dart';
import 'package:photo_editor/services/editor/element_id_generator.dart';
import 'package:photo_editor/services/file_picker/file_picker.dart';
import 'package:photo_editor/services/timeline/timeline.dart';
import 'package:rxdart/rxdart.dart';

part 'editor_event.dart';

part 'editor_state.dart';

part 'editor_state_error.dart';

part 'editor_bloc.freezed.dart';

/// Transformer of events of type [T] which ignores incoming events until current processing event is done,
/// plus adding a guard [Duration] between events so that it is guaranteed that minimum duration between
/// processing of an event and processing of a successive event is [Duration].
EventTransformer<T> debounceDroppable<T>(Duration duration) =>
    (events, mapper) => droppable<T>().call(events.debounceTime(duration), mapper);

/// Represents the editor and its interactions with the UI.
///
/// The editor element's positions are relative to the local coordinate system of the editor widget.
@injectable
class EditorBloc extends Bloc<EditorEvent, EditorState> {
  final FilePicker _filePicker;
  final Logger _logger;
  final ElementIdGenerator _elementIdGenerator;
  final Timeline<Editor> _editorTimeline;

  @override
  void onEvent(EditorEvent event) {
    super.onEvent(event);
    _logger.i('[Editor Bloc]: An event has arrived:\n$event\n');
  }

  @override
  void onChange(Change<EditorState> change) {
    super.onChange(change);
    _logger.i(
      '[Editor bloc]: State is changing from:\n${change.currentState}\nTo:\n${change.nextState}\n',
    );
  }

  EditorBloc(
    this._filePicker,
    this._logger,
    this._elementIdGenerator,
    this._editorTimeline,
  ) : super(EditorState.initial()) {
    _logger.i('[Editor bloc]: Created editor bloc with state:\n$state\n');

    // register event handlers:

    on<Undo>(_handleUndo, transformer: droppable());

    on<Redo>(_handleRedo, transformer: droppable());

    on<AddStaticText>(_handleAddStaticText, transformer: droppable());

    on<StaticTextChanged>(_handleStaticTextChanged, transformer: droppable());

    on<StaticTextStyleChanged>(_handleStaticTextStyleChanged, transformer: droppable());

    on<AddVariableText>(_handleAddVariableText, transformer: droppable());

    on<VariableTextStyleChanged>(_handleVariableTextStyleChanged, transformer: droppable());

    on<VariableTextFileChanged>(_handleVariableTextFileChanged, transformer: droppable());

    on<AddImage>(_handleAddImage, transformer: droppable());

    on<ElementDrag>(_handleElementDrag, transformer: droppable());

    on<DragStart>(_handleDragStart, transformer: droppable());

    on<DragUpdate>(_handleDragUpdate, transformer: droppable());

    on<DragEnd>(_handleDragEnd, transformer: droppable());

    on<TapUp>(_handleTapUp, transformer: droppable());

    on<ClearEditor>(_handleClearEditor, transformer: droppable());

    on<RemoveSelectedElement>(_handleRemoveSelectedElement, transformer: droppable());

    on<EnlargeSelectedElement>(_handleEnlargeSelectedElement, transformer: droppable());

    on<ReduceSelectedElement>(_handleReduceSelectedElement, transformer: droppable());

    on<BringSelectedElementToFront>(_handleBringSelectedElementToFront, transformer: droppable());

    // save the initial state of the editor
    _saveState(state);
  }

  /// Saves the [incomingState] in the timeline of the editor.
  void _saveState(EditorState incomingState) => _editorTimeline.top.fold(
        () {
          // timeline is empty, save the state directly
          _editorTimeline.push(incomingState.editor);
        },
        (Editor latestEditor) {
          // timeline is not empty, only save incoming state if top state is not same as incoming state
          if (latestEditor != incomingState.editor) {
            _editorTimeline.push(incomingState.editor);
          }
        },
      );

  Future<void> _handleUndo(Undo event, Emitter emit) async => _editorTimeline.previous.fold(() {
        // there is no previous editor available, do nothing
      }, (Editor previousEditor) {
        // there is previous editor available, emit it if it is different than current editor
        if (previousEditor != state.editor) {
          emit(
            state.copyWith(
              editor: previousEditor,
              draggedElementId: none(),
              dragPosition: none(),
              selectedElementId: none(),
            ),
          );
        }
      });

  Future<void> _handleRedo(Redo event, Emitter emit) async => _editorTimeline.next.fold(() {
        // there is no next editor available, do nothing
      }, (Editor nextEditor) {
        // there is next editor available, emit it if it is different than current editor
        if (nextEditor != state.editor) {
          emit(
            state.copyWith(
              editor: nextEditor,
              draggedElementId: none(),
              dragPosition: none(),
              selectedElementId: none(),
            ),
          );
        }
      });

  Future<void> _handleAddStaticText(AddStaticText event, Emitter emit) async {
    // get the approximate size of the default text that will be displayed
    final ui.Size size = AppLocalizations.of(event.context)!.typeText.textSize(
          textStyle: const widgets.TextStyle(fontSize: 30),
          textDirection: widgets.Directionality.of(event.context),
          minWidth: 0.0,
          maxWidth: double.infinity,
          textScaleFactor: 1.0,
        );

    emit(
      state.copyWith(
        editor: state.editor.addElement(
          Element(
            id: _elementIdGenerator.generate(),
            rect: ui.Rect.fromLTWH(0.0, 0.0, size.width + 0.1 * size.width, size.height + 0.1 * size.height),
            properties: ElementProperties.staticTextProperties(
              text: AppLocalizations.of(event.context)!.typeText,
              textStyle: const widgets.TextStyle(fontSize: 30, color: material.Colors.black),
            ),
            showOrder:
                optionOf(state.editor.elementsSortedByShowOrder.lastOrNull).fold(() => 1, (e) => e.showOrder + 1),
          ),
        ),
      ),
    );

    // save the state after adding the text
    _saveState(state);
  }

  Future<void> _handleStaticTextChanged(StaticTextChanged event, Emitter emit) async {
    state.selectedElementId.fold(
      () {
        // there is no selected element, invalid state
        _logger.e(EditorStateError.noSelectedElement);
        throw const EditorStateError(EditorStateError.noSelectedElement);
      },
      (selectedElementId) {
        // there is selected element, find it in the editor and update it
        state.editor.elementById(selectedElementId).fold(
          () {
            // selected element does not exist, invalid state
            _logger.e(EditorStateError.selectedElementDoesNotExist);
            throw const EditorStateError(EditorStateError.selectedElementDoesNotExist);
          },
          (selectedElement) {
            // there is a selected element, update the text
            emit(
              state.copyWith(
                editor: state.editor.updateElement(
                  selectedElement.copyWith(
                    properties: (selectedElement.properties as StaticTextProperties).copyWith(text: event.updatedText),
                  ),
                ),
              ),
            );

            // save the state after editing
            _saveState(state);
          },
        );
      },
    );
  }

  Future<void> _handleStaticTextStyleChanged(StaticTextStyleChanged event, Emitter emit) async {
    state.selectedElementId.fold(
      () {
        // there is no selected element, invalid state
        _logger.e(EditorStateError.noSelectedElement);
        throw const EditorStateError(EditorStateError.noSelectedElement);
      },
      (selectedElementId) {
        // there is selected element, find it in the editor and update it
        state.editor.elementById(selectedElementId).fold(
          () {
            // selected element does not exist, invalid state
            _logger.e(EditorStateError.selectedElementDoesNotExist);
            throw const EditorStateError(EditorStateError.selectedElementDoesNotExist);
          },
          (selectedElement) {
            // there is a selected element, update the text style
            emit(
              state.copyWith(
                editor: state.editor.updateElement(
                  selectedElement.copyWith(
                    properties: (selectedElement.properties as StaticTextProperties)
                        .copyWith(textStyle: event.updatedTextStyle),
                  ),
                ),
              ),
            );

            // save the state after editing
            _saveState(state);
          },
        );
      },
    );
  }

  // TODO: Complete from here
  Future<void> _handleAddVariableText(AddVariableTextEditorEvent event, Emitter emit) async {
    // TODO: add tests ( and test that it saves the state)

    // get the approximate size of the default text that will be displayed
    final Size size = AppLocalizations.of(event.context)!.generatedTextAppearsHere.textSize(
          textStyle: const material.TextStyle(fontSize: 30),
          textDirection: material.Directionality.of(event.context),
        );

    emit(
      state.copyWith(
        editor: state.editor.addElement(
          Element(
            id: _elementIdGenerator.generate(),
            rect: Rect.fromLTWH(0.0, 0.0, size.width + 0.1 * size.width, size.height + 0.1 * size.height),
            elementType: ElementType.variableText(
              placeHolderText: AppLocalizations.of(event.context)!.generatedTextAppearsHere,
              sourceFilePath: '',
              textStyle: const material.TextStyle(
                fontSize: 30,
                color: material.Colors.black,
              ),
            ),
            showOrder: optionOf(
              state.editor.elementsSortedByShowOrder.lastOrNull,
            ).fold(() => 1, (e) => e.showOrder + 1),
          ),
        ),
      ),
    );

    // save the state after adding the text
    _saveState(state);
  }

  Future<void> _handleVariableTextStyleChangedEvent(
      VariableTextElementTextStyleChangedEditorEvent event, Emitter emit) async {
    state.selectedElementId
        .flatMap(
      (selectedElementId) => state.editor.elementById(selectedElementId).map(
        (selectedElement) {
          emit(
            state.copyWith(
              editor: state.editor.updateElement(
                selectedElement.copyWith(
                  elementType: (selectedElement.elementType as VariableTextElementType).copyWith(
                    textStyle: event.updatedTextStyle,
                  ),
                ),
              ),
            ),
          );

          // save the state after editing
          _saveState(state);
        },
      ),
    )
        .getOrElse(
      () {
        // no selected element set or selected element is not in the editor, invalid state
        _logger.e(EditorStateError.simultaneousDragStart);
        throw const EditorStateError(EditorStateError.simultaneousDragStart);
      },
    );
  }

  Future<void> _handleVariableTextFileChangedEvent(VariableTextElementFileChangedEvent event, Emitter emit) async {
    await state.selectedElementId.fold(
      () {
        // no selected element set, invalid state
        _logger.e(EditorStateError.simultaneousDragStart);
        throw const EditorStateError(EditorStateError.simultaneousDragStart);
      },
      (selectedElementId) async {
        File file = (await _filePicker.pickSingleFile(allowedExtensions: ['txt'])).fold(() => File(''), id);
        return state.editor.elementById(selectedElementId).fold(
          () {
            // no selected element set, invalid state
            _logger.e(EditorStateError.simultaneousDragStart);
            throw const EditorStateError(EditorStateError.simultaneousDragStart);
          },
          (selectedElement) {
            emit(
              state.copyWith(
                editor: state.editor.updateElement(
                  selectedElement.copyWith(
                    elementType: (selectedElement.elementType as VariableTextElementType).copyWith(
                      sourceFilePath: file.path,
                      placeHolderText: file.path.isNotEmpty
                          ? file.path.split(Platform.pathSeparator).last
                          : AppLocalizations.of(event.context)!.generatedTextAppearsHere,
                    ),
                  ),
                ),
              ),
            );
            // save the state
            _saveState(state);
          },
        );
      },
    );
  }

  Future<void> _handleAddImage(AddImageEditorEvent event, Emitter emit) async {
    final result = await _filePicker.pickSingleFile(
      allowedExtensions: allowedFileExtensions.unlock,
    );

    result.fold(
      () {},
      (file) {
        final Editor editor = state.editor.addElement(
          Element(
            id: _elementIdGenerator.generate(),
            rect: const Rect.fromLTWH(0.0, 0.0, 250, 250),
            elementType: ElementType.image(path: file.path),
            showOrder: optionOf(
              state.editor.elementsSortedByShowOrder.lastOrNull,
            ).fold(() => 1, (e) => e.showOrder + 1),
          ),
        );

        emit(
          state.copyWith(
            editor: editor,
          ),
        );

        // save the state after adding the image
        _saveState(state);
      },
    );
  }

  Future<void> _handleDrag(DragEditorEvent event, Emitter emit) async {
    emit(
      state.copyWith(
        editor: state.editor.translateElement(
          event.elementId,
          Offset(
            event.delta.dx,
            event.delta.dy,
          ),
        ),
      ),
    );
  }

  Future<void> _handleDragStart(DragStartEditorEvent event, Emitter emit) async {
    state.dragPosition.fold(() {
      // no dragPosition is set
      state.draggedElementId.fold(() {
        // no draggedElementId set, can drag

        emit(
          state.copyWith(
            dragPosition: some(event.localPosition),
            draggedElementId: optionOf(state.editor.elementsAtPosition(event.localPosition).lastOrNull?.id),
          ),
        );
      }, (_) {
        // draggedElementId is set, invalid state
        _logger.e(EditorStateError.simultaneousDragStart);
        throw const EditorStateError(EditorStateError.simultaneousDragStart);
      });
    }, (_) {
      // dragPosition is set, invalid state
      _logger.e(EditorStateError.simultaneousDragStart);
      throw const EditorStateError(EditorStateError.simultaneousDragStart);
    });
  }

  Future<void> _handleDragUpdate(DragUpdateEditorEvent event, Emitter emit) async {
    state.dragPosition.fold(() {
      // no dragPosition
      // do nothing
    }, (dragPosition) {
      // dragPosition is set, check draggedElementId
      state.draggedElementId.fold(() {
        // no draggedElementId, only update dragPosition
        emit(state.copyWith(dragPosition: some(event.localPosition)));
      }, (draggedId) {
        // draggedElementId is set, can update
        emit(
          state.copyWith(
            editor: state.editor.translateElement(
              draggedId,
              Offset(
                event.localPosition.dx - dragPosition.dx,
                event.localPosition.dy - dragPosition.dy,
              ),
            ),
            dragPosition: some(event.localPosition),
          ),
        );
      });
    });
  }

  Future<void> _handleDragEnd(DragEndEditorEvent event, Emitter emit) async {
    state.draggedElementId.fold(
      () {
        // no draggedElementId set, just clear dragPosition
        emit(state.copyWith(dragPosition: none()));
      },
      (draggedId) {
        // draggedElementId is set, check dragPosition
        state.dragPosition.fold(() {
          // no dragPosition set, invalid state
          _logger.e(EditorStateError.dragPositionNotSet);
          throw const EditorStateError(EditorStateError.dragPositionNotSet);
        }, (dragPosition) {
          // dragPosition is set, clear drag status
          emit(
            state.copyWith(
              draggedElementId: none(),
              dragPosition: none(),
            ),
          );

          // save state after drag end
          _saveState(state);
        });
      },
    );
  }

  Future<void> _handleTapUp(TapUpEditorEvent event, Emitter emit) async {
    final elements = state.editor.elementsAtPosition(event.localPosition);
    if (elements.isNotEmpty) {
      emit(state.copyWith(selectedElementId: some(elements.last.id)));
    } else {
      state.selectedElementId.fold(
        () {
          // no selectedElementId
          // do nothing
        },
        (selectedId) {
          // selectedElementId is set, clear it
          emit(state.copyWith(selectedElementId: none()));
        },
      );
    }
  }

  Future<void> _handleClearEditor(ClearEditorEvent event, Emitter emit) async {
    emit(state.copyWith(
      editor: state.editor.clear(),
      selectedElementId: none(),
      draggedElementId: none(),
      dragPosition: none(),
    ));

    //save the state after clearing the editor
    _saveState(state);
  }

  Future<void> _handleRemoveElement(RemoveElementEditorEvent event, Emitter emit) async {
    emit(
      state.copyWith(
        editor: state.editor.removeElement(event.elementId),
        selectedElementId: none(),
        draggedElementId: none(),
        dragPosition: none(),
      ),
    );

    // save the state after removing
    _saveState(state);
  }

  Future<void> _handleMakeElementLarger(MakeElementLargerEditorEvent event, Emitter emit) async {
    state.selectedElementId
        .flatMap(
      (selectedElementId) => state.editor.elementById(selectedElementId).map(
        (selectedElement) {
          emit(
            state.copyWith(
              editor: state.editor.updateElement(
                selectedElement.copyWith(
                  rect: selectedElement.rect.inflate(10.0),
                ),
              ),
            ),
          );

          // save the state after editing
          _saveState(state);
        },
      ),
    )
        .getOrElse(
      () {
        // no selected element set or selected element is not in the editor, invalid state
        _logger.e(EditorStateError.simultaneousDragStart);
        throw const EditorStateError(EditorStateError.simultaneousDragStart);
      },
    );
  }

  Future<void> _handleMakeElementSmaller(MakeElementSmallerEditorEvent event, Emitter emit) async {
    state.selectedElementId
        .flatMap(
      (selectedElementId) => state.editor.elementById(selectedElementId).map(
        (selectedElement) {
          emit(
            state.copyWith(
              editor: state.editor.updateElement(
                selectedElement.copyWith(
                  rect: selectedElement.rect.deflate(10.0),
                ),
              ),
            ),
          );

          // save the state after editing
          _saveState(state);
        },
      ),
    )
        .getOrElse(
      () {
        // no selected element set or selected element is not in the editor, invalid state
        _logger.e(EditorStateError.simultaneousDragStart);
        throw const EditorStateError(EditorStateError.simultaneousDragStart);
      },
    );
  }

  Future<void> _handleBringToFront(BringToFrontEditorEvent event, Emitter emit) async {
    state.selectedElementId
        .flatMap(
      (selectedElementId) => state.editor.elementById(selectedElementId).map(
        (selectedElement) {
          emit(
            state.copyWith(
              editor: state.editor.updateElement(
                selectedElement.copyWith(
                  showOrder: state.editor.elementsSortedByShowOrder.last.showOrder + 1,
                ),
              ),
            ),
          );

          // save the state after editing
          _saveState(state);
        },
      ),
    )
        .getOrElse(
      () {
        // no selected element set or selected element is not in the editor, invalid state
        _logger.e(EditorStateError.simultaneousDragStart);
        throw const EditorStateError(EditorStateError.simultaneousDragStart);
      },
    );
  }
}
