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
import 'package:photo_editor/ui/common/error/invalid_state_error.dart';
import 'package:photo_editor/ui/common/widgets/manipulating_balls_widget.dart';
import 'package:rxdart/rxdart.dart';

part 'editor_event.dart';

part 'editor_state.dart';

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
      (event, emit) async => await _handleUndo(event, emit),
      transformer: debounceDroppable(const Duration(milliseconds: 1)),
    );

    on<Redo>(
      (event, emit) async => await _handleRedo(event, emit),
      transformer: debounceDroppable(const Duration(milliseconds: 1)),
    );

    on<AddStaticText>(
      (event, emit) async => await _handleAddStaticText(event, emit),
      transformer: droppable(),
    );

    on<StaticTextChanged>(
      (event, emit) async => await _handleStaticTextChanged(event, emit),
      transformer: droppable(),
    );

    on<StaticTextStyleChanged>(
      (event, emit) async => await _handleStaticTextStyleChanged(event, emit),
      transformer: droppable(),
    );

    on<StaticTextAlignChanged>(
      (event, emit) async => await _handleStaticTextAlignChanged(event, emit),
      transformer: droppable(),
    );

    on<AddVariableText>(
      (event, emit) async => await _handleAddVariableText(event, emit),
      transformer: droppable(),
    );

    on<VariableTextFileChanged>(
      (event, emit) async => await _handleVariableTextFileChanged(event, emit),
      transformer: droppable(),
    );

    on<VariableTextStyleChanged>(
      (event, emit) async => await _handleVariableTextStyleChanged(event, emit),
      transformer: droppable(),
    );

    on<VariableTextAlignChanged>(
      (event, emit) async => await _handleVariableTextAlignChanged(event, emit),
      transformer: droppable(),
    );

    on<AddImage>(
      (event, emit) async => await _handleAddImage(event, emit),
      transformer: droppable(),
    );

    on<CanvasDragStart>(
      (event, emit) async => await _handleCanvasDragStart(event, emit),
      transformer: droppable(),
    );

    on<CanvasDragUpdate>(
      (event, emit) async => await _handleCanvasDragUpdate(event, emit),
      transformer: droppable(),
    );

    on<CanvasDragEnd>(
      (event, emit) async => await _handleCanvasDragEnd(event, emit),
      transformer: droppable(),
    );

    on<CanvasTap>(
      (event, emit) async => await _handleCanvasTap(event, emit),
      transformer: droppable(),
    );

    on<ElementDragStart>(
      (event, emit) async => await _handleElementDragStart(event, emit),
      transformer: droppable(),
    );

    on<ElementDragUpdate>(
      (event, emit) async => await _handleElementDragUpdate(event, emit),
      transformer: droppable(),
    );

    on<ElementDragEnd>(
      (event, emit) async => await _handleElementDragEnd(event, emit),
      transformer: droppable(),
    );

    on<ElementTap>(
      (event, emit) async => await _handleElementTap(event, emit),
      transformer: droppable(),
    );

    on<RemoveSelectedElement>(
      (event, emit) async => await _handleRemoveSelectedElement(event, emit),
      transformer: droppable(),
    );

    on<DeselectElement>(
      (event, emit) async => await _handleDeselectElement(event, emit),
      transformer: droppable(),
    );

    on<BringSelectedElementToFront>(
      (event, emit) async => await _handleBringSelectedElementToFront(event, emit),
      transformer: droppable(),
    );

    on<ResizeUpdate>(
      (event, emit) async => await _handleResizeUpdate(event, emit),
      transformer: droppable(),
    );

    on<ResizeEnd>(
      (event, emit) async => await _handleResizeEnd(event, emit),
      transformer: droppable(),
    );

    on<SelectedElementSizeChanged>(
      (event, emit) async => await _handleSelectedElementSizeChanged(event, emit),
      transformer: droppable(),
    );

    on<SelectedElementPositionChanged>(
      (event, emit) async => await _handleSelectedElementPositionChanged(event, emit),
      transformer: droppable(),
    );

    on<TextEditingModeChanged>(
      (event, emit) async => await _handleTextEditingModeChanged(event, emit),
      transformer: droppable(),
    );

    on<ClearEditor>(
      (event, emit) async => await _handleClearEditor(event, emit),
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

  Future<void> _handleUndo(Undo event, Emitter emit) async => _editorTimeline.previous.fold(
        () {
          // there is no previous editor available, do nothing
        },
        (Editor previousEditor) {
          // there is previous editor available, emit it if its editor is different than current editor
          if (previousEditor != state.editor) {
            emit(
              EditorState(
                editor: previousEditor,
                draggedElement: none(),
                dragPosition: none(),
                selectedElement: none(),
                isEditingTextElement: false,
              ),
            );
          }
        },
      );

  Future<void> _handleRedo(Redo event, Emitter emit) async => _editorTimeline.next.fold(
        () {
          // there is no next editor available, do nothing
        },
        (Editor nextEditor) {
          // there is next editor available, emit it if it is different than current editor
          if (nextEditor != state.editor) {
            emit(
              EditorState(
                editor: nextEditor,
                draggedElement: none(),
                dragPosition: none(),
                selectedElement: none(),
                isEditingTextElement: false,
              ),
            );
          }
        },
      );

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
    state.selectedElement.fold(
      () {
        throw const InvalidStateError(message: "StaticTextChanged was fired but no element was selected");
      },
      (el) {
        final Element updatedElement = el.copyWith(
          properties: (el.properties as StaticTextProperties).copyWith(text: event.updatedText),
        );
        emit(
          state.copyWith(
            editor: state.editor.updateElement(updatedElement),
            selectedElement: some(updatedElement),
          ),
        );
        // save the state after editing
        _saveState(state);
      },
    );
  }

  Future<void> _handleStaticTextStyleChanged(StaticTextStyleChanged event, Emitter emit) async {
    state.selectedElement.fold(
      () {
        throw const InvalidStateError(message: "StaticTextStyleChanged was fired but no element was selected");
      },
      (el) {
        // make sure the font size is positive or zero
        material.TextStyle? updatedTextStyle = event.updatedTextStyle;
        if ((event.updatedTextStyle?.fontSize ?? -1) < 0 || !(event.updatedTextStyle?.fontSize ?? -1).isFinite) {
          updatedTextStyle =
              event.updatedTextStyle?.copyWith(fontSize: (el.properties as StaticTextProperties).textStyle?.fontSize);
        }

        final Element updatedElement = el.copyWith(
          properties: (el.properties as StaticTextProperties).copyWith(textStyle: updatedTextStyle),
        );
        emit(
          state.copyWith(
            editor: state.editor.updateElement(updatedElement),
            selectedElement: some(updatedElement),
          ),
        );
        // save the state after editing
        _saveState(state);
      },
    );
  }

  Future<void> _handleStaticTextAlignChanged(StaticTextAlignChanged event, Emitter emit) async {
    state.selectedElement.fold(
      () {
        throw const InvalidStateError(message: "StaticTextAlignChanged was fired but no element was selected");
      },
      (el) {
        final Element updatedElement = el.copyWith(
          properties: (el.properties as StaticTextProperties).copyWith(textAlign: event.updatedTextAlign),
        );
        emit(
          state.copyWith(
            editor: state.editor.updateElement(updatedElement),
            selectedElement: some(updatedElement),
          ),
        );
        // save the state after editing
        _saveState(state);
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
    return state.selectedElement.fold<Future<void>>(
      () {
        throw const InvalidStateError(message: "VariableTextFileChanged was fired but no element was selected");
      },
      (el) async {
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
            // no file was selected, do nothing
          },
          (file) {
            // a file was selected, update the element
            final Element updatedElement = el.copyWith(
              properties: (el.properties as VariableTextProperties).copyWith(
                sourceFilePath: some(file.path),
                placeHolderText: file.path.split(io.Platform.pathSeparator).last,
              ),
            );
            emit(
              state.copyWith(
                editor: state.editor.updateElement(updatedElement),
                selectedElement: some(updatedElement),
              ),
            );

            // save the state
            _saveState(state);
          },
        );
      },
    );
  }

  Future<void> _handleVariableTextStyleChanged(VariableTextStyleChanged event, Emitter emit) async {
    state.selectedElement.fold(
      () {
        throw const InvalidStateError(message: "VariableTextStyleChanged was fired but no element was selected");
      },
      (el) {
        // make sure the font size is positive or zero
        material.TextStyle? updatedTextStyle = event.updatedTextStyle;
        if ((event.updatedTextStyle?.fontSize ?? -1) < 0 || !(event.updatedTextStyle?.fontSize ?? -1).isFinite) {
          updatedTextStyle =
              event.updatedTextStyle?.copyWith(fontSize: (el.properties as VariableTextProperties).textStyle?.fontSize);
        }

        final Element updatedElement = el.copyWith(
          properties: (el.properties as VariableTextProperties).copyWith(textStyle: updatedTextStyle),
        );

        emit(
          state.copyWith(
            editor: state.editor.updateElement(updatedElement),
            selectedElement: some(updatedElement),
          ),
        );

        // save the state after editing
        _saveState(state);
      },
    );
  }

  Future<void> _handleVariableTextAlignChanged(VariableTextAlignChanged event, Emitter emit) async {
    state.selectedElement.fold(
      () {
        throw const InvalidStateError(message: "VariableTextAlignChanged was fired but no element was selected");
      },
      (el) {
        final Element updatedElement = el.copyWith(
          properties: (el.properties as VariableTextProperties).copyWith(textAlign: event.updatedTextAlign),
        );
        emit(
          state.copyWith(
            editor: state.editor.updateElement(updatedElement),
            selectedElement: some(updatedElement),
          ),
        );

        // save the state after editing
        _saveState(state);
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

  Future<void> _handleCanvasDragStart(CanvasDragStart event, Emitter emit) async {
    emit(state.copyWith(dragPosition: some(event.localPosition)));
  }

  Future<void> _handleCanvasDragUpdate(CanvasDragUpdate event, Emitter emit) async {
    state.dragPosition.fold(
      () {
        throw const InvalidStateError(message: "CanvasDragUpdate was fired but no dragPosition was set");
      },
      (pos) {
        ui.Offset updatedDragPosition = pos.translate(event.delta.dx, event.delta.dy);
        emit(state.copyWith(dragPosition: some(updatedDragPosition)));
      },
    );
  }

  Future<void> _handleCanvasDragEnd(CanvasDragEnd event, Emitter emit) async {
    emit(state.copyWith(dragPosition: none()));
  }

  Future<void> _handleCanvasTap(CanvasTap event, Emitter emit) async {
    state.selectedElement.fold(
      () {
        // no selected element, do nothing
      },
      (el) {
        el.properties.maybeWhen(
          staticTextProperties: (text, _, __) {
            if (text.isEmpty) {
              emit(
                state.copyWith(
                  selectedElement: none(),
                  editor: state.editor.removeElement(el.id),
                ),
              );
              _saveState(state);
            } else {
              emit(state.copyWith(selectedElement: none()));
            }
          },
          orElse: () => emit(state.copyWith(selectedElement: none())),
        );
      },
    );
  }

  Future<void> _handleElementDragStart(ElementDragStart event, Emitter emit) async {
    emit(state.copyWith(draggedElement: some(event.draggedElement), dragPosition: some(event.localPosition)));
  }

  Future<void> _handleElementDragUpdate(ElementDragUpdate event, Emitter emit) async {
    Option.map2(
      state.draggedElement,
      state.dragPosition,
      (Element el, ui.Offset pos) {
        ui.Offset updatedDragPosition = pos.translate(event.delta.dx, event.delta.dy);
        final Element updatedElement = el.copyWith(rect: el.rect.translate(event.delta.dx, event.delta.dy));
        // check also if this element is selected
        final Option<Element> selectedElement = state.selectedElement.fold(
          () {
            // there is no selected element
            return none();
          },
          (currentSelectedElement) {
            // there is a selected element
            if (currentSelectedElement.id == el.id) {
              // this element is the selected element, update the selected element
              return some(updatedElement);
            } else {
              // this element is not the selected element, don't update the selected element
              return some(currentSelectedElement);
            }
          },
        );
        emit(
          state.copyWith(
            editor: state.editor.updateElement(updatedElement),
            draggedElement: some(updatedElement),
            dragPosition: some(updatedDragPosition),
            selectedElement: selectedElement,
          ),
        );
      },
    ).fold(
      () {
        throw const InvalidStateError(
            message: "ElementDragUpdate was fired but no dragPosition or no draggedElement was set");
      },
      (_) {},
    );
  }

  Future<void> _handleElementDragEnd(ElementDragEnd event, Emitter emit) async {
    emit(state.copyWith(draggedElement: none(), dragPosition: none()));
    _saveState(state);
  }

  Future<void> _handleElementTap(ElementTap event, Emitter emit) async {
    emit(state.copyWith(selectedElement: some(event.element)));
  }

  Future<void> _handleRemoveSelectedElement(RemoveSelectedElement event, Emitter emit) async {
    state.selectedElement.fold(
      () {
        throw const InvalidStateError(message: "RemoveSelectedElement was fired but no selectedElement was set");
      },
      (el) {
        emit(
          state.copyWith(
            editor: state.editor.removeElement(el.id),
            selectedElement: none(),
            draggedElement: none(),
            dragPosition: none(),
          ),
        );

        // save the state after removing the element
        _saveState(state);
      },
    );
  }

  Future<void> _handleDeselectElement(DeselectElement event, Emitter emit) async {
    state.selectedElement.fold(
      () {
        throw const InvalidStateError(message: "DeselectElement was fired but no selectedElement was set");
      },
      (el) {
        el.properties.maybeWhen(
          staticTextProperties: (text, _, __) {
            if (text.isEmpty) {
              emit(
                state.copyWith(
                  selectedElement: none(),
                  editor: state.editor.removeElement(el.id),
                ),
              );
              _saveState(state);
            } else {
              emit(state.copyWith(selectedElement: none()));
            }
          },
          orElse: () => emit(state.copyWith(selectedElement: none())),
        );
      },
    );
  }

  Future<void> _handleBringSelectedElementToFront(BringSelectedElementToFront event, Emitter emit) async {
    state.selectedElement.fold(
      () {
        throw const InvalidStateError(message: "BringSelectedElementToFront was fired but no selectedElement was set");
      },
      (el) {
        final Element updatedElement =
            el.copyWith(showOrder: state.editor.elementsSortedByShowOrder.last.showOrder + 1);
        emit(
          state.copyWith(
            editor: state.editor.updateElement(updatedElement),
            selectedElement: some(updatedElement),
          ),
        );

        // save the state
        _saveState(state);
      },
    );
  }

  Future<void> _handleResizeUpdate(ResizeUpdate event, Emitter emit) async {
    state.selectedElement.fold(
      () {
        throw const InvalidStateError(message: "ResizeUpdate was fired but no selectedElement was set");
      },
      (el) {
        late Element updatedElement;
        // update the element's rect accordingly depending on the resize direction:
        switch (event.resizeDirection) {
          case ResizeDirection.topLeft:
            updatedElement = el.copyWith(
                rect:
                    ui.Rect.fromPoints(el.rect.bottomRight, el.rect.topLeft.translate(event.delta.dx, event.delta.dy)));
            break;
          case ResizeDirection.topCenter:
            updatedElement = el.copyWith(
                rect: ui.Rect.fromPoints(el.rect.bottomLeft, el.rect.topRight.translate(0, event.delta.dy)));
            break;
          case ResizeDirection.topRight:
            updatedElement = el.copyWith(
                rect:
                    ui.Rect.fromPoints(el.rect.bottomLeft, el.rect.topRight.translate(event.delta.dx, event.delta.dy)));
            break;
          case ResizeDirection.centerRight:
            updatedElement = el.copyWith(
                rect: ui.Rect.fromLTWH(el.rect.left, el.rect.top, el.rect.width + event.delta.dx, el.rect.height));
            break;
          case ResizeDirection.bottomRight:
            updatedElement = el.copyWith(
                rect:
                    ui.Rect.fromPoints(el.rect.topLeft, el.rect.bottomRight.translate(event.delta.dx, event.delta.dy)));
            break;
          case ResizeDirection.bottomCenter:
            updatedElement = el.copyWith(
                rect: ui.Rect.fromPoints(el.rect.topLeft, el.rect.bottomRight.translate(0, event.delta.dy)));
            break;
          case ResizeDirection.bottomLeft:
            updatedElement = el.copyWith(
                rect:
                    ui.Rect.fromPoints(el.rect.bottomLeft.translate(event.delta.dx, event.delta.dy), el.rect.topRight));
            break;
          case ResizeDirection.centerLeft:
            updatedElement = el.copyWith(
                rect: ui.Rect.fromPoints(el.rect.bottomLeft.translate(event.delta.dx, 0), el.rect.topRight));
            break;
        }
        // prevent the rect from becoming smaller than the minimum allowed size:
        if (updatedElement.rect.size.width < minElementSideSize) {
          updatedElement = updatedElement.copyWith(
            rect: ui.Rect.fromLTWH(
                updatedElement.rect.left, updatedElement.rect.top, minElementSideSize, updatedElement.rect.height),
          );
        }
        if (updatedElement.rect.size.height < minElementSideSize) {
          updatedElement = updatedElement.copyWith(
            rect: ui.Rect.fromLTWH(
                updatedElement.rect.left, updatedElement.rect.top, updatedElement.rect.width, minElementSideSize),
          );
        }
        emit(state.copyWith(
          editor: state.editor.updateElement(updatedElement),
          selectedElement: some(updatedElement),
        ));
      },
    );
  }

  Future<void> _handleResizeEnd(ResizeEnd event, Emitter emit) async {
    _saveState(state);
  }

  Future<void> _handleSelectedElementSizeChanged(SelectedElementSizeChanged event, Emitter emit) async {
    state.selectedElement.fold(
      () {
        throw const InvalidStateError(message: "SelectedElementSizeChanged was fired but no selectedElement was set");
      },
      (el) {
        ui.Size updatedSize = event.updatedSize;
        if (event.updatedSize.width < minElementSideSize) {
          updatedSize = ui.Size(el.rect.size.width, updatedSize.height);
        }
        if (event.updatedSize.height < minElementSideSize) {
          updatedSize = ui.Size(updatedSize.width, el.rect.size.height);
        }

        final Element updatedElement = el.copyWith(
          rect: ui.Rect.fromCenter(
            center: el.rect.center,
            width: updatedSize.width,
            height: updatedSize.height,
          ),
        );
        emit(
          state.copyWith(
            editor: state.editor.updateElement(updatedElement),
            selectedElement: some(updatedElement),
          ),
        );

        // save the state
        _saveState(state);
      },
    );
  }

  Future<void> _handleSelectedElementPositionChanged(SelectedElementPositionChanged event, Emitter emit) async {
    state.selectedElement.fold(
      () {
        throw const InvalidStateError(
            message: "SelectedElementPositionChanged was fired but no selectedElement was set");
      },
      (el) {
        double xUpdated = event.updatedPosition.dx.isFinite ? event.updatedPosition.dx : el.rect.topLeft.dx;
        double yUpdated = event.updatedPosition.dy.isFinite ? event.updatedPosition.dy : el.rect.topLeft.dy;

        final Element updatedElement = el.copyWith(
          rect: ui.Rect.fromLTWH(xUpdated, yUpdated, el.rect.width, el.rect.height),
        );
        emit(
          state.copyWith(
            editor: state.editor.updateElement(updatedElement),
            selectedElement: some(updatedElement),
          ),
        );

        // save the state
        _saveState(state);
      },
    );
  }

  Future<void> _handleTextEditingModeChanged(TextEditingModeChanged event, Emitter emit) async {
    state.selectedElement.fold(
      () {
        throw const InvalidStateError(message: "TextEditingModeChanged was fired but no selectedElement was set");
      },
      (el) {
        if (!el.properties.isStaticTextProperties) {
          throw const InvalidStateError(
              message: "TextEditingModeChanged was fired but selected element was not static text element");
        }
        emit(
          state.copyWith(
            isEditingTextElement: event.isEditingTextElement,
          ),
        );
      },
    );
  }

  Future<void> _handleClearEditor(ClearEditor event, Emitter emit) async {
    emit(
      state.copyWith(
        editor: state.editor.clear(),
        selectedElement: none(),
        dragPosition: none(),
        draggedElement: none(),
      ),
    );

    //save the state after clearing the editor
    _saveState(state);
  }
}
