import 'dart:ui';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:photo_editor/services/editor/editor.dart';
import 'package:photo_editor/services/editor/editor_extension.dart';
import 'package:photo_editor/services/editor/element_id_generator.dart';
import 'package:photo_editor/services/file_picker/file_picker.dart';
import 'package:replay_bloc/replay_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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
class EditorBloc extends ReplayBloc<EditorEvent, EditorState> {
  final FilePicker _filePicker;
  final Logger _logger;
  final ElementIdGenerator _elementIdGenerator;

  @override
  bool shouldReplay(EditorState state) {
    return state.editor.elements.isNotEmpty &&
        state.draggedElementId is! None &&
        state.dragPosition is! None &&
        state.selectedElementId is! None;
  }

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
  ) : super(EditorState.initial()) {
    _logger.i('created editor bloc with state $state');

    on<EditorTextAdded>((event, emit) async {
      // TODO: add text
    }, transformer: droppable());

    on<EditorImageAdded>(_handleAddImage, transformer: droppable());

    on<EditorUndoTapped>(_handleUndo, transformer: droppable());

    on<EditorRedoTapped>(_handleRedo, transformer: droppable());

    on<EditorDragStarted>(_handleDragStart, transformer: droppable());

    on<EditorDragUpdated>(_handleDragUpdate, transformer: droppable());

    on<EditorDragEnded>(_handleDragEnd, transformer: droppable());

    on<EditorTappedUp>(_handleTapUp, transformer: droppable());
  }

  Future<void> _handleAddImage(EditorImageAdded event, Emitter emit) async {
    final result = await _filePicker.pickSingleFile(
      allowedExtensions: allowedFileExtensions.unlock,
    );

    result.fold(
      () {},
      (file) => emit(
        state.copyWith(
          editor: state.editor.addElement(
            Element(
              id: _elementIdGenerator.generate(),
              rect: const Rect.fromLTWH(0.0, 0.0, 250, 250),
              elementType: ElementType.image(path: file.path),
              showOrder: optionOf(
                state.editor.elementsSortedByShowOrder.lastOrNull,
              ).fold(() => 1, (e) => e.showOrder + 1),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _handleUndo(EditorUndoTapped event, Emitter emit) async {
    if (canUndo) undo();

    // TODO: see if there is something further to undo as well
  }

  Future<void> _handleRedo(EditorRedoTapped event, Emitter emit) async {
    if (canRedo) redo();

    // TODO: see if there is something further to redo as well
  }

  Future<void> _handleDragStart(EditorDragStarted event, Emitter emit) async {
    state.dragPosition.fold(() {
      // no dragPosition
      state.draggedElementId.fold(() {
        // no draggedElementId, can drag
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
        // no draggedElementId, just clear dragPosition
        emit(state.copyWith(dragPosition: none()));
      },
      (draggedId) {
        // draggedElementId is set, check dragPosition
        state.dragPosition.fold(() {
          // no dragPosition, invalid state
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
}
