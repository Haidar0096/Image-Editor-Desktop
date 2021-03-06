import 'dart:ui';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:photo_editor/services/editor/editor.dart';
import 'package:photo_editor/services/editor/editor_extension.dart';
import 'package:photo_editor/services/editor/element_id_generator.dart';
import 'package:photo_editor/services/file_picker/file_picker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:photo_editor/services/history/history.dart';
import 'package:rxdart/rxdart.dart';

part 'editor_event.dart';

part 'editor_state.dart';

part 'editor_state_error.dart';

part 'editor_bloc.freezed.dart';

/// Transformer of events of type [T] which ignores incoming events until current processing event is done,
/// plus adding a guard [Duration] between events so that it is guaranteed that minimum duration between
/// processing of an event and processing of a successive event is [Duration].
EventTransformer<T> debounceDroppable<T>(Duration duration) {
  return (events, mapper) {
    return droppable<T>().call(events.debounceTime(duration), mapper);
  };
}

@Injectable()
class EditorBloc extends Bloc<EditorEvent, EditorState> {
  final FilePicker _filePicker;
  final Logger _logger;
  final ElementIdGenerator _elementIdGenerator;
  final History<Editor> _editorHistory;

  @override
  void onEvent(EditorEvent event) {
    super.onEvent(event);
    _logger.i('Editor Bloc: an event has arrived:\n$event\n');
  }

  @override
  void onChange(Change<EditorState> change) {
    super.onChange(change);
    _logger.d(
      'Editor bloc: state is changing \nfrom:\n${change.currentState}\nto:\n${change.nextState}\n',
    );
  }

  EditorBloc(
    this._filePicker,
    this._logger,
    this._elementIdGenerator,
    this._editorHistory,
  ) : super(EditorState.initial()) {
    _logger.i('created editor bloc with state $state');

    on<EditorStaticTextAdded>((event, emit) async {
      // TODO: add static text
    }, transformer: droppable());

    on<EditorVariableTextAdded>((event, emit) async {
      // TODO: add variable text
    }, transformer: droppable());

    on<EditorImageAdded>(_handleAddImage, transformer: droppable());

    on<EditorUndoTapped>(_handleUndo, transformer: droppable());

    on<EditorRedoTapped>(_handleRedo, transformer: droppable());

    on<EditorDragStarted>(_handleDragStart, transformer: droppable());

    on<EditorDragUpdated>(_handleDragUpdate, transformer: droppable());

    on<EditorDragEnded>(_handleDragEnd, transformer: droppable());

    on<EditorTappedUp>(_handleTapUp, transformer: droppable());

    on<EditorCleared>(_handleClearEditor, transformer: droppable());

    _saveState(state);
  }

  void _saveState(EditorState s) {
    _editorHistory.top.fold(() {
      // history is empty, save the state directly
      _editorHistory.push(s.editor);
    }, (topEditor) {
      // history is not empty, only save current state if top state is not same as current
      if (topEditor != s.editor) {
        _editorHistory.push(s.editor);
      }
    });
  }

  Future<void> _handleUndo(EditorUndoTapped event, Emitter emit) async {
    _editorHistory.previous.fold(() {
      // there is no previous history available, do nothing
    }, (Editor previousEditor) {
      if (previousEditor != state.editor) {
        emit(state.copyWith(
          editor: previousEditor,
          draggedElementId: none(),
          dragPosition: none(),
          selectedElementId: none(),
        ));
      }
    });
  }

  Future<void> _handleRedo(EditorRedoTapped event, Emitter emit) async {
    _editorHistory.next.fold(() {
      // no next history editor entry available, do nothing
    }, (Editor nextEditor) {
      if (nextEditor != state.editor) {
        emit(state.copyWith(
          editor: nextEditor,
          draggedElementId: none(),
          dragPosition: none(),
          selectedElementId: none(),
        ));
      }
    });
  }

  Future<void> _handleAddImage(EditorImageAdded event, Emitter emit) async {
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

  Future<void> _handleDragStart(EditorDragStarted event, Emitter emit) async {
    state.dragPosition.fold(() {
      // no dragPosition is set
      state.draggedElementId.fold(() {
        // no draggedElementId set, can drag

        emit(
          state.copyWith(
            dragPosition: some(event.localPosition),
            draggedElementId: optionOf(state.editor
                .elementsAtPosition(event.localPosition)
                .lastOrNull
                ?.id),
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

  Future<void> _handleDragUpdate(EditorDragUpdated event, Emitter emit) async {
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

  Future<void> _handleDragEnd(EditorDragEnded event, Emitter emit) async {
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

  Future<void> _handleTapUp(EditorTappedUp event, Emitter emit) async {
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

  Future<void> _handleClearEditor(EditorCleared event, Emitter emit) async {
    emit(state.copyWith(
      editor: state.editor.clear(),
      selectedElementId: none(),
      draggedElementId: none(),
      dragPosition: none(),
    ));

    //save the state after clearing the editor
    _saveState(state);
  }
}
