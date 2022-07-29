import 'dart:ui' as ui;
import 'dart:io' as io;

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dartz/dartz.dart' hide IList;
import 'package:flutter/widgets.dart' as widgets;
import 'package:flutter/material.dart' as material;
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

    on<Undo>(
      _handleUndo,
      transformer: debounceDroppable(const Duration(milliseconds: 1)),
    );

    on<Redo>(
      _handleRedo,
      transformer: debounceDroppable(const Duration(milliseconds: 1)),
    );

    on<AddStaticText>(
      _handleAddStaticText,
      transformer: droppable(),
    );

    on<StaticTextChanged>(
      _handleStaticTextChanged,
      transformer: droppable(),
    );

    on<StaticTextStyleChanged>(
      _handleStaticTextStyleChanged,
      transformer: droppable(),
    );

    on<AddVariableText>(
      _handleAddVariableText,
      transformer: droppable(),
    );

    on<VariableTextFileChanged>(
      _handleVariableTextFileChanged,
      transformer: droppable(),
    );

    on<VariableTextStyleChanged>(
      _handleVariableTextStyleChanged,
      transformer: droppable(),
    );

    on<AddImage>(
      _handleAddImage,
      transformer: droppable(),
    );

    on<DragStart>(
      _handleDragStart,
      transformer: droppable(),
    );

    on<DragUpdate>(
      _handleDragUpdate,
      transformer: droppable(),
    );

    on<DragEnd>(
      _handleDragEnd,
      transformer: droppable(),
    );

    on<Tap>(
      _handleTap,
      transformer: droppable(),
    );

    on<RemoveSelectedElement>(
      _handleRemoveSelectedElement,
      transformer: droppable(),
    );

    on<BringSelectedElementToFront>(
      _handleBringSelectedElementToFront,
      transformer: droppable(),
    );

    on<ClearEditor>(
      _handleClearEditor,
      transformer: droppable(),
    );

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

  Future<void> _handleUndo(Undo event, Emitter emit) async {
    return _editorTimeline.previous.fold(() {
      // there is no previous editor available, do nothing
    }, (Editor previousEditor) {
      // there is previous editor available, emit it if its editor is different than current editor
      if (previousEditor != state.editor) {
        emit(
          state.copyWith(
            editor: previousEditor,
            dragPosition: none(),
            draggedElementId: none(),
            selectedElementId: none(),
          ),
        );
      }
    });
  }

  Future<void> _handleRedo(Redo event, Emitter emit) async => _editorTimeline.next.fold(() {
        // there is no next editor available, do nothing
      }, (Editor nextEditor) {
        // there is next editor available, emit it if it is different than current editor
        if (nextEditor != state.editor) {
          emit(
            state.copyWith(
              editor: nextEditor,
              dragPosition: none(),
              draggedElementId: none(),
              selectedElementId: none(),
            ),
          );
        }
      });

  Future<void> _handleAddStaticText(AddStaticText event, Emitter emit) async {
    // get the approximate size of the default text that will be displayed
    final ui.Size size = event.initialText.textSize(
      textStyle: const widgets.TextStyle(fontSize: 30, color: material.Colors.black),
      textDirection: event.textDirection,
      minWidth: event.minWidth,
      maxWidth: event.maxWidth,
      textScaleFactor: 1.0,
    );

    emit(
      state.copyWith(
        editor: state.editor.addElement(
          Element(
            id: _elementIdGenerator.generate(),
            rect: ui.Rect.fromLTWH(0.0, 0.0, size.width + 0.1 * size.width, size.height + 0.1 * size.height),
            properties: ElementProperties.staticTextProperties(
              text: event.initialText,
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
            // selected element exists, update the text
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
            // selected element exists, update the text style
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

  Future<void> _handleAddVariableText(AddVariableText event, Emitter emit) async {
    // get the approximate size of the default text that will be displayed
    final ui.Size size = event.initialText.textSize(
      textStyle: const material.TextStyle(fontSize: 30),
      textDirection: event.textDirection,
      textScaleFactor: 1.0,
      minWidth: event.minWidth,
      maxWidth: event.maxWidth,
    );

    emit(
      state.copyWith(
        editor: state.editor.addElement(
          Element(
            id: _elementIdGenerator.generate(),
            rect: ui.Rect.fromLTWH(0.0, 0.0, size.width + 0.1 * size.width, size.height + 0.1 * size.height),
            properties: ElementProperties.variableTextProperties(
              placeHolderText: event.initialText,
              sourceFilePath: none(),
              textStyle: const material.TextStyle(fontSize: 30, color: material.Colors.black),
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

  Future<void> _handleVariableTextFileChanged(VariableTextFileChanged event, Emitter emit) async {
    await state.selectedElementId.fold(
      () {
        // there is no selected element, invalid state
        _logger.e(EditorStateError.noSelectedElement);
        throw const EditorStateError(EditorStateError.noSelectedElement);
      },
      (selectedElementId) async {
        // there is selected element, find it in the editor
        state.editor.elementById(selectedElementId).fold(
          () {
            // selected element does not exist, invalid state
            _logger.e(EditorStateError.selectedElementDoesNotExist);
            throw const EditorStateError(EditorStateError.selectedElementDoesNotExist);
          },
          (selectedElement) async {
            // selected element exists, pick a file path
            Option<io.File> fileOption =
                (await _filePicker.pickSingleFile(allowedExtensions: allowedTextFilesExtensions.unlock)).fold(
              () {
                // no file was selected
                return none();
              },
              (file) {
                // a file was selected
                return some(file);
              },
            );

            fileOption.fold(
              () {
                // no file was selected
                // do nothing
              },
              (file) async {
                // a file was selected, update the text properties
                emit(
                  state.copyWith(
                    editor: state.editor.updateElement(
                      selectedElement.copyWith(
                        properties: (selectedElement.properties as VariableTextProperties).copyWith(
                          sourceFilePath: some(file.path),
                          placeHolderText: file.path.split(io.Platform.pathSeparator).last,
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
      },
    );
  }

  Future<void> _handleVariableTextStyleChanged(VariableTextStyleChanged event, Emitter emit) async {
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
            // selected element exists, update the text style
            emit(
              state.copyWith(
                editor: state.editor.updateElement(
                  selectedElement.copyWith(
                    properties: (selectedElement.properties as VariableTextProperties)
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

  Future<void> _handleAddImage(AddImage event, Emitter emit) async {
    // pick an image
    final Option<io.File> fileOption =
        await _filePicker.pickSingleFile(allowedExtensions: allowedImageFilesExtensions.unlock);

    fileOption.fold(
      () {
        // no file was selected, do nothing
      },
      (file) {
        // a file was selected, add the image to the editor
        emit(
          state.copyWith(
            editor: state.editor.addElement(
              Element(
                id: _elementIdGenerator.generate(),
                rect: const ui.Rect.fromLTWH(0.0, 0.0, 250, 250),
                properties: ElementProperties.fileImageProperties(sourceFilePath: file.path),
                showOrder:
                    optionOf(state.editor.elementsSortedByShowOrder.lastOrNull).fold(() => 1, (e) => e.showOrder + 1),
              ),
            ),
          ),
        );

        // save the state after adding the image
        _saveState(state);
      },
    );
  }

  Future<void> _handleDragStart(DragStart event, Emitter emit) async {
    state.dragPosition.fold(
      () {
        // there is no dragPosition set
        state.draggedElementId.fold(
          () {
            // there is no draggedElementId set
            // check if there is an element at the dragPosition
            // and in that case get the element with largest show order
            final Element? element = state.editor
                .elementsAtPosition(event.localPosition)
                .sort((a, b) => b.showOrder.compareTo(a.showOrder))
                .firstOrNull;
            if (element == null) {
              // there is no element at the dragPosition
              emit(state.copyWith(dragPosition: some(event.localPosition)));
            } else {
              // there is an element at the dragPosition
              emit(
                state.copyWith(
                  dragPosition: some(event.localPosition),
                  draggedElementId: some(element.id),
                ),
              );
            }
          },
          (draggedElementId) {
            // there is a draggedElementId set, invalid state
            _logger.e(EditorStateError.simultaneousDragStart);
            throw const EditorStateError(EditorStateError.simultaneousDragStart);
          },
        );
      },
      (dragPosition) {
        // there is a dragPosition set already, invalid state
        _logger.e(EditorStateError.simultaneousDragStart);
        throw const EditorStateError(EditorStateError.simultaneousDragStart);
      },
    );
  }

  Future<void> _handleDragUpdate(DragUpdate event, Emitter emit) async {
    state.dragPosition.fold(
      () {
        // there is no dragPosition, invalid state
        _logger.e(EditorStateError.noDragPosition);
        throw const EditorStateError(EditorStateError.noDragPosition);
      },
      (dragPosition) {
        // there is a dragPosition
        ui.Offset updatedDragPosition = dragPosition.translate(event.delta.dx, event.delta.dy);
        state.draggedElementId.fold(
          () {
            // there is no dragged element, just update dragPosition
            emit(state.copyWith(dragPosition: some(updatedDragPosition)));
          },
          (draggedElementId) {
            // there is a dragged element, update it and the dragPosition
            emit(
              state.copyWith(
                dragPosition: some(updatedDragPosition),
                editor: state.editor.translateElement(draggedElementId, event.delta),
              ),
            );
          },
        );
      },
    );
  }

  Future<void> _handleDragEnd(DragEnd event, Emitter emit) async {
    state.dragPosition.fold(
      () {
        // there is no drag position, invalid state
        _logger.e(EditorStateError.noDragPosition);
        throw const EditorStateError(EditorStateError.noDragPosition);
      },
      (dragPosition) {
        // there is a drag position
        state.draggedElementId.fold(
          () {
            // there is no dragged element, just clear dragPosition
            emit(state.copyWith(dragPosition: none()));
          },
          (draggedElementId) {
            // there is dragged element, clear both dragPosition and draggedElementId
            emit(state.copyWith(dragPosition: none(), draggedElementId: none()));
          },
        );
        _saveState(state);
      },
    );
  }

  Future<void> _handleTap(Tap event, Emitter emit) async {
    // find the element at tap position with largest show order, if it exists
    final Element? element = state.editor
        .elementsAtPosition(event.localPosition)
        .sort((a, b) => b.showOrder.compareTo(a.showOrder))
        .firstOrNull;

    if (element == null) {
      // there is no element at the tap position
      // check if there is a selected element an deselect it
      state.selectedElementId.fold(
        () {
          // there is no selected element, do nothing
        },
        (selectedElementId) {
          emit(state.copyWith(selectedElementId: none()));
        },
      );
    } else {
      // there is an element at the tap position, select it
      emit(state.copyWith(selectedElementId: some(element.id)));
    }
  }

  Future<void> _handleRemoveSelectedElement(RemoveSelectedElement event, Emitter emit) async {
    state.selectedElementId.fold(
      () {
        // there is no selectedElementId, do nothing
      },
      (selectedElementId) {
        // there is a selectedElementId, remove it and clear drag and selection states
        emit(
          state.copyWith(
            editor: state.editor.removeElement(selectedElementId),
            selectedElementId: none(),
            draggedElementId: none(),
            dragPosition: none(),
          ),
        );

        // save the state after removing the element
        _saveState(state);
      },
    );
  }

  Future<void> _handleBringSelectedElementToFront(BringSelectedElementToFront event, Emitter emit) async {
    state.selectedElementId.fold(
      () {
        // there is no selectedElementId, do nothing
      },
      (selectedElementId) {
        // there is a selectedElementId, find it and bring it to front
        state.editor.elementById(selectedElementId).fold(
          () {
            // selected element does not exist, invalid state
            _logger.e(EditorStateError.selectedElementDoesNotExist);
            throw const EditorStateError(EditorStateError.selectedElementDoesNotExist);
          },
          (selectedElement) {
            // selected element exists, bring it to front
            emit(
              state.copyWith(
                editor: state.editor.updateElement(
                  selectedElement.copyWith(showOrder: state.editor.elementsSortedByShowOrder.last.showOrder + 1),
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

  Future<void> _handleClearEditor(ClearEditor event, Emitter emit) async {
    emit(
      state.copyWith(
        editor: state.editor.clear(),
        selectedElementId: none(),
        dragPosition: none(),
        draggedElementId: none(),
      ),
    );

    //save the state after clearing the editor
    _saveState(state);
  }
}
