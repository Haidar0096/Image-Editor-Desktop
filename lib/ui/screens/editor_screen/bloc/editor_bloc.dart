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

    on<CanvasDragStart>(
      _handleCanvasDragStart,
      transformer: droppable(),
    );

    on<CanvasDragUpdate>(
      _handleCanvasDragUpdate,
      transformer: droppable(),
    );

    on<CanvasDragEnd>(
      _handleCanvasDragEnd,
      transformer: droppable(),
    );

    on<CanvasTap>(
      _handleCanvasTap,
      transformer: droppable(),
    );

    on<ElementDragStart>(
      _handleElementDragStart,
      transformer: droppable(),
    );

    on<ElementDragUpdate>(
      _handleElementDragUpdate,
      transformer: droppable(),
    );

    on<ElementDragEnd>(
      _handleElementDragEnd,
      transformer: droppable(),
    );

    on<ElementTap>(
      _handleElementTap,
      transformer: droppable(),
    );

    on<RemoveSelectedElement>(
      _handleRemoveSelectedElement,
      transformer: droppable(),
    );

    on<DeselectElement>(
      _handleDeselectElement,
      transformer: droppable(),
    );

    on<BringSelectedElementToFront>(
      _handleBringSelectedElementToFront,
      transformer: droppable(),
    );

    on<ResizeUpdate>(
      _handleResizeUpdate,
      transformer: droppable(),
    );

    on<ResizeEnd>(
      _handleResizeEnd,
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
    state.selectedElementId.map(
      (id) => state.editor.elementById(id).map(
        (el) {
          emit(
            state.copyWith(
              editor: state.editor.updateElement(
                el.copyWith(
                  properties: (el.properties as StaticTextProperties).copyWith(text: event.updatedText),
                ),
              ),
            ),
          );
          // save the state after editing
          _saveState(state);
        },
      ),
    );
  }

  Future<void> _handleStaticTextStyleChanged(StaticTextStyleChanged event, Emitter emit) async {
    state.selectedElementId.map(
      (id) => state.editor.elementById(id).map(
        (el) {
          emit(
            state.copyWith(
              editor: state.editor.updateElement(
                el.copyWith(
                  properties: (el.properties as StaticTextProperties).copyWith(textStyle: event.updatedTextStyle),
                ),
              ),
            ),
          );
          // save the state after editing
          _saveState(state);
        },
      ),
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
    state.selectedElementId.map(
      (id) => state.editor.elementById(id).map(
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

          fileOption.map((file) {
            emit(
              state.copyWith(
                editor: state.editor.updateElement(
                  el.copyWith(
                    properties: (el.properties as VariableTextProperties).copyWith(
                      sourceFilePath: some(file.path),
                      placeHolderText: file.path.split(io.Platform.pathSeparator).last,
                    ),
                  ),
                ),
              ),
            );

            // save the state
            _saveState(state);
          });
        },
      ),
    );
  }

  Future<void> _handleVariableTextStyleChanged(VariableTextStyleChanged event, Emitter emit) async {
    state.selectedElementId.map(
      (id) => state.editor.elementById(id).map(
        (el) {
          emit(
            state.copyWith(
              editor: state.editor.updateElement(
                el.copyWith(
                  properties: (el.properties as VariableTextProperties).copyWith(textStyle: event.updatedTextStyle),
                ),
              ),
            ),
          );

          // save the state after editing
          _saveState(state);
        },
      ),
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
    ui.Offset? dragPosition = state.dragPosition.fold(() => null, (p) => p);
    ui.Offset updatedDragPosition = dragPosition!.translate(event.delta.dx, event.delta.dy);
    emit(state.copyWith(dragPosition: some(updatedDragPosition)));
  }

  Future<void> _handleCanvasDragEnd(CanvasDragEnd event, Emitter emit) async {
    emit(state.copyWith(dragPosition: none()));
  }

  Future<void> _handleCanvasTap(CanvasTap event, Emitter emit) async {
    emit(state.copyWith(selectedElementId: none()));
  }

  Future<void> _handleElementDragStart(ElementDragStart event, Emitter emit) async {
    emit(state.copyWith(draggedElementId: some(event.draggedElementId), dragPosition: some(event.localPosition)));
  }

  Future<void> _handleElementDragUpdate(ElementDragUpdate event, Emitter emit) async {
    ElementId? draggedElementId = state.draggedElementId.fold(() => null, (el) => el);
    ui.Offset? dragPosition = state.dragPosition.fold(() => null, (p) => p);
    ui.Offset updatedDragPosition = dragPosition!.translate(event.delta.dx, event.delta.dy);
    emit(
      state.copyWith(
        editor: state.editor.translateElement(draggedElementId!, event.delta),
        dragPosition: some(updatedDragPosition),
      ),
    );
  }

  Future<void> _handleElementDragEnd(ElementDragEnd event, Emitter emit) async {
    emit(state.copyWith(draggedElementId: none(), dragPosition: none()));
    _saveState(state);
  }

  Future<void> _handleElementTap(ElementTap event, Emitter emit) async {
    emit(state.copyWith(selectedElementId: some(event.elementId)));
  }

  Future<void> _handleRemoveSelectedElement(RemoveSelectedElement event, Emitter emit) async {
    state.selectedElementId.map(
      (id) {
        emit(
          state.copyWith(
            editor: state.editor.removeElement(id),
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

  Future<void> _handleDeselectElement(DeselectElement event, Emitter emit) async {
    emit(state.copyWith(selectedElementId: none()));
  }

  Future<void> _handleBringSelectedElementToFront(BringSelectedElementToFront event, Emitter emit) async {
    state.selectedElementId.map(
      (id) => state.editor.elementById(id).map(
        (el) {
          emit(
            state.copyWith(
              editor: state.editor.updateElement(
                el.copyWith(showOrder: state.editor.elementsSortedByShowOrder.last.showOrder + 1),
              ),
            ),
          );

          // save the state
          _saveState(state);
        },
      ),
    );
  }

  Future<void> _handleResizeUpdate(ResizeUpdate event, Emitter emit) async {
    final ElementId selectedElementId = state.selectedElementId.toNullable()!;
    final Element el = state.editor.elementById(selectedElementId).toNullable()!;
    late Element updatedElement;
    const double minSideSize = 30.0;
    // update the element's rect accordingly depending on the resize direction:
    switch (event.resizeDirection) {
      case ResizeDirection.topLeft:
        updatedElement = el.copyWith(
            rect: ui.Rect.fromPoints(el.rect.bottomRight, el.rect.topLeft.translate(event.delta.dx, event.delta.dy)));
        break;
      case ResizeDirection.topCenter:
        updatedElement =
            el.copyWith(rect: ui.Rect.fromPoints(el.rect.bottomLeft, el.rect.topRight.translate(0, event.delta.dy)));
        break;
      case ResizeDirection.topRight:
        updatedElement = el.copyWith(
            rect: ui.Rect.fromPoints(el.rect.bottomLeft, el.rect.topRight.translate(event.delta.dx, event.delta.dy)));
        break;
      case ResizeDirection.centerRight:
        updatedElement = el.copyWith(
            rect: ui.Rect.fromLTWH(el.rect.left, el.rect.top, el.rect.width + event.delta.dx, el.rect.height));
        break;
      case ResizeDirection.bottomRight:
        updatedElement = el.copyWith(
            rect: ui.Rect.fromPoints(el.rect.topLeft, el.rect.bottomRight.translate(event.delta.dx, event.delta.dy)));
        break;
      case ResizeDirection.bottomCenter:
        updatedElement =
            el.copyWith(rect: ui.Rect.fromPoints(el.rect.topLeft, el.rect.bottomRight.translate(0, event.delta.dy)));
        break;
      case ResizeDirection.bottomLeft:
        updatedElement = el.copyWith(
            rect: ui.Rect.fromPoints(el.rect.bottomLeft.translate(event.delta.dx, event.delta.dy), el.rect.topRight));
        break;
      case ResizeDirection.centerLeft:
        updatedElement =
            el.copyWith(rect: ui.Rect.fromPoints(el.rect.bottomLeft.translate(event.delta.dx, 0), el.rect.topRight));
        break;
    }
    // prevent the rect from becoming smaller than the minimum allowed size:
    if (updatedElement.rect.size.width < minSideSize) {
      updatedElement = updatedElement.copyWith(
        rect: ui.Rect.fromLTWH(
            updatedElement.rect.left, updatedElement.rect.top, minSideSize, updatedElement.rect.height),
      );
    }
    if (updatedElement.rect.size.height < minSideSize) {
      updatedElement = updatedElement.copyWith(
        rect:
            ui.Rect.fromLTWH(updatedElement.rect.left, updatedElement.rect.top, updatedElement.rect.width, minSideSize),
      );
    }
    emit(state.copyWith(editor: state.editor.updateElement(updatedElement)));
  }

  Future<void> _handleResizeEnd(ResizeEnd event, Emitter emit) async {
    _saveState(state);
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
