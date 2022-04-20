import 'dart:async';
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

part 'editor_bloc.freezed.dart';

@Injectable()
class EditorBloc extends ReplayBloc<EditorEvent, EditorState> {
  final FilePicker _filePicker;
  final Logger _logger;
  final ElementIdGenerator _elementIdGenerator;

  EditorBloc(this._filePicker, this._logger, this._elementIdGenerator,
      {EditorState? initialState})
      : super(initialState ?? EditorState.initial()) {
    _logger.i('created editor bloc with state $state');

    on<AddImage>(
      (event, emit) async => await _handleAddImage(event, emit),
      transformer: droppable(),
    );

    on<AddText>((event, emit) async {
      // todo add text
    }, transformer: droppable());

    on<Undo>(
      (event, emit) async => await _handleUndo(event, emit),
      transformer: droppable(),
    );

    on<Redo>(
      (event, emit) async => await _handleRedo(event, emit),
      transformer: droppable(),
    );

    on<DragStart>(
      (event, emit) async => await _handleDragStart(event, emit),
      transformer: droppable(),
    );

    on<DragUpdate>(
      (event, emit) async => await _handleDragUpdate(event, emit),
      transformer: debounceDroppable(const Duration(milliseconds: 2)),
    );

    on<DragEnd>(
      (event, emit) async => await _handleDragEnd(event, emit),
      transformer: droppable(),
    );

    on<TapUp>(
      (event, emit) async => await _handleTapUp(event, emit),
      transformer: droppable(),
      // transformer: droppable(),
    );
  }

  Future<void> _handleAddImage(AddImage event, Emitter emit) async {
    (await _filePicker.pickSingleFile(
            allowedExtensions: allowedFileExtensions.unlock))
        .fold(
      () {},
      (file) => emit(
        state.copyWith(
          editor: state.editor.addElement(
            Element(
              id: _elementIdGenerator.generate(),
              rect: const Rect.fromLTWH(0.0, 0.0, 250, 250),
              elementType: ElementType.image(path: file.path),
              showOrder:
                  optionOf(state.editor.elementsSortedByShowOrder.lastOrNull)
                      .fold(() => 1, (e) => e.showOrder + 1),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _handleUndo(Undo event, Emitter emit) async {
    // undo();
    // todo see if there is something further to undo as well
  }

  Future<void> _handleRedo(Redo event, Emitter emit) async {
    // redo();
    // todo see if there is something further to redo as well
  }

  Future<void> _handleDragStart(DragStart event, Emitter emit) async {
    emit(
      state.copyWith(
        dragPosition: some(event.localPosition),
        draggedElementId: optionOf(state.editor
            .elementsAtPosition(event.localPosition)
            .lastOrNull
            ?.id),
      ),
    );
  }

  Future<void> _handleDragUpdate(DragUpdate event, Emitter emit) async {
    state.dragPosition.fold(() {
      // no dragging: do nothing
    }, (dragPosition) {
      //dragging
      state.draggedElementId.fold(() {
        // no dragged element: just update drag details
        emit(state.copyWith(dragPosition: some(event.localPosition)));
      }, (draggedId) {
        // there is dragged element: update drag details and element's rect
        final element = state.editor.elementById(draggedId).toNullable()!;
        final Rect updatedRect = element.rect.translate(
            event.localPosition.dx - dragPosition.dx,
            event.localPosition.dy - dragPosition.dy);
        emit(
          state.copyWith(
            editor:
                state.editor.updateElement(element.copyWith(rect: updatedRect)),
            dragPosition: some(event.localPosition),
          ),
        );
      });
    });
  }

  Future<void> _handleDragEnd(DragEnd event, Emitter emit) async {
    state.draggedElementId.fold(
      () {
        // if no dragged element then just clear drag status
        emit(state.copyWith(dragPosition: none()));
      },
      (draggedId) {
        // if dragged element then clear both statuses
        emit(
          state.copyWith(
            draggedElementId: none(),
            dragPosition: none(),
          ),
        );
      },
    );
  }

  Future<void> _handleTapUp(TapUp event, Emitter emit) async {
    final elements = state.editor.elementsAtPosition(event.localPosition);
    if (elements.isNotEmpty) {
      emit(state.copyWith(selectedElementId: some(elements.last.id)));
    } else {
      emit(state.copyWith(selectedElementId: none()));
    }
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
        'Editor bloc: state is changing \nfrom:\n${change.currentState}\nto:\n${change.nextState}\n');
  }

  /// Transformer of events of type [T] which ignores incoming events until current processing event is done,
  /// plus adding a guard [duration] between events so that it is guaranteed that minimum duration between
  /// processing of an event and processing of a successive event is [duration].
  EventTransformer<T> debounceDroppable<T>(Duration duration) {
    return (events, mapper) =>
        droppable<T>().call(events.debounceTime(duration), mapper);
  }
}
