// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'editor_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EditorEventTearOff {
  const _$EditorEventTearOff();

  AddImageEditorEvent addImage() {
    return const AddImageEditorEvent();
  }

  AddStaticTextEditorEvent addStaticText() {
    return const AddStaticTextEditorEvent();
  }

  AddVariableTextEditorEvent addVariableText() {
    return const AddVariableTextEditorEvent();
  }

  UndoEditorEvent undo() {
    return const UndoEditorEvent();
  }

  RedoEditorEvent redo() {
    return const RedoEditorEvent();
  }

  DragStartEditorEvent dragStart(Offset localPosition) {
    return DragStartEditorEvent(
      localPosition,
    );
  }

  DragUpdateEditorEvent dragUpdate(Offset localPosition) {
    return DragUpdateEditorEvent(
      localPosition,
    );
  }

  DragEndEditorEvent dragEnd() {
    return const DragEndEditorEvent();
  }

  TapUpEditorEvent tapUp(Offset localPosition) {
    return TapUpEditorEvent(
      localPosition,
    );
  }

  ClearEditorEvent clearEditor() {
    return const ClearEditorEvent();
  }
}

/// @nodoc
const $EditorEvent = _$EditorEventTearOff();

/// @nodoc
mixin _$EditorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addImage,
    required TResult Function() addStaticText,
    required TResult Function() addVariableText,
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(Offset localPosition) dragStart,
    required TResult Function(Offset localPosition) dragUpdate,
    required TResult Function() dragEnd,
    required TResult Function(Offset localPosition) tapUp,
    required TResult Function() clearEditor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function()? addStaticText,
    TResult Function()? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(Offset localPosition)? dragStart,
    TResult Function(Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function()? addStaticText,
    TResult Function()? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(Offset localPosition)? dragStart,
    TResult Function(Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddImageEditorEvent value) addImage,
    required TResult Function(AddStaticTextEditorEvent value) addStaticText,
    required TResult Function(AddVariableTextEditorEvent value) addVariableText,
    required TResult Function(UndoEditorEvent value) undo,
    required TResult Function(RedoEditorEvent value) redo,
    required TResult Function(DragStartEditorEvent value) dragStart,
    required TResult Function(DragUpdateEditorEvent value) dragUpdate,
    required TResult Function(DragEndEditorEvent value) dragEnd,
    required TResult Function(TapUpEditorEvent value) tapUp,
    required TResult Function(ClearEditorEvent value) clearEditor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddImageEditorEvent value)? addImage,
    TResult Function(AddStaticTextEditorEvent value)? addStaticText,
    TResult Function(AddVariableTextEditorEvent value)? addVariableText,
    TResult Function(UndoEditorEvent value)? undo,
    TResult Function(RedoEditorEvent value)? redo,
    TResult Function(DragStartEditorEvent value)? dragStart,
    TResult Function(DragUpdateEditorEvent value)? dragUpdate,
    TResult Function(DragEndEditorEvent value)? dragEnd,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddImageEditorEvent value)? addImage,
    TResult Function(AddStaticTextEditorEvent value)? addStaticText,
    TResult Function(AddVariableTextEditorEvent value)? addVariableText,
    TResult Function(UndoEditorEvent value)? undo,
    TResult Function(RedoEditorEvent value)? redo,
    TResult Function(DragStartEditorEvent value)? dragStart,
    TResult Function(DragUpdateEditorEvent value)? dragUpdate,
    TResult Function(DragEndEditorEvent value)? dragEnd,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditorEventCopyWith<$Res> {
  factory $EditorEventCopyWith(
          EditorEvent value, $Res Function(EditorEvent) then) =
      _$EditorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EditorEventCopyWithImpl<$Res> implements $EditorEventCopyWith<$Res> {
  _$EditorEventCopyWithImpl(this._value, this._then);

  final EditorEvent _value;
  // ignore: unused_field
  final $Res Function(EditorEvent) _then;
}

/// @nodoc
abstract class $AddImageEditorEventCopyWith<$Res> {
  factory $AddImageEditorEventCopyWith(
          AddImageEditorEvent value, $Res Function(AddImageEditorEvent) then) =
      _$AddImageEditorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddImageEditorEventCopyWithImpl<$Res>
    extends _$EditorEventCopyWithImpl<$Res>
    implements $AddImageEditorEventCopyWith<$Res> {
  _$AddImageEditorEventCopyWithImpl(
      AddImageEditorEvent _value, $Res Function(AddImageEditorEvent) _then)
      : super(_value, (v) => _then(v as AddImageEditorEvent));

  @override
  AddImageEditorEvent get _value => super._value as AddImageEditorEvent;
}

/// @nodoc

class _$AddImageEditorEvent implements AddImageEditorEvent {
  const _$AddImageEditorEvent();

  @override
  String toString() {
    return 'EditorEvent.addImage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AddImageEditorEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addImage,
    required TResult Function() addStaticText,
    required TResult Function() addVariableText,
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(Offset localPosition) dragStart,
    required TResult Function(Offset localPosition) dragUpdate,
    required TResult Function() dragEnd,
    required TResult Function(Offset localPosition) tapUp,
    required TResult Function() clearEditor,
  }) {
    return addImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function()? addStaticText,
    TResult Function()? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(Offset localPosition)? dragStart,
    TResult Function(Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
  }) {
    return addImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function()? addStaticText,
    TResult Function()? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(Offset localPosition)? dragStart,
    TResult Function(Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
    required TResult orElse(),
  }) {
    if (addImage != null) {
      return addImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddImageEditorEvent value) addImage,
    required TResult Function(AddStaticTextEditorEvent value) addStaticText,
    required TResult Function(AddVariableTextEditorEvent value) addVariableText,
    required TResult Function(UndoEditorEvent value) undo,
    required TResult Function(RedoEditorEvent value) redo,
    required TResult Function(DragStartEditorEvent value) dragStart,
    required TResult Function(DragUpdateEditorEvent value) dragUpdate,
    required TResult Function(DragEndEditorEvent value) dragEnd,
    required TResult Function(TapUpEditorEvent value) tapUp,
    required TResult Function(ClearEditorEvent value) clearEditor,
  }) {
    return addImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddImageEditorEvent value)? addImage,
    TResult Function(AddStaticTextEditorEvent value)? addStaticText,
    TResult Function(AddVariableTextEditorEvent value)? addVariableText,
    TResult Function(UndoEditorEvent value)? undo,
    TResult Function(RedoEditorEvent value)? redo,
    TResult Function(DragStartEditorEvent value)? dragStart,
    TResult Function(DragUpdateEditorEvent value)? dragUpdate,
    TResult Function(DragEndEditorEvent value)? dragEnd,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
  }) {
    return addImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddImageEditorEvent value)? addImage,
    TResult Function(AddStaticTextEditorEvent value)? addStaticText,
    TResult Function(AddVariableTextEditorEvent value)? addVariableText,
    TResult Function(UndoEditorEvent value)? undo,
    TResult Function(RedoEditorEvent value)? redo,
    TResult Function(DragStartEditorEvent value)? dragStart,
    TResult Function(DragUpdateEditorEvent value)? dragUpdate,
    TResult Function(DragEndEditorEvent value)? dragEnd,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
    required TResult orElse(),
  }) {
    if (addImage != null) {
      return addImage(this);
    }
    return orElse();
  }
}

abstract class AddImageEditorEvent implements EditorEvent {
  const factory AddImageEditorEvent() = _$AddImageEditorEvent;
}

/// @nodoc
abstract class $AddStaticTextEditorEventCopyWith<$Res> {
  factory $AddStaticTextEditorEventCopyWith(AddStaticTextEditorEvent value,
          $Res Function(AddStaticTextEditorEvent) then) =
      _$AddStaticTextEditorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddStaticTextEditorEventCopyWithImpl<$Res>
    extends _$EditorEventCopyWithImpl<$Res>
    implements $AddStaticTextEditorEventCopyWith<$Res> {
  _$AddStaticTextEditorEventCopyWithImpl(AddStaticTextEditorEvent _value,
      $Res Function(AddStaticTextEditorEvent) _then)
      : super(_value, (v) => _then(v as AddStaticTextEditorEvent));

  @override
  AddStaticTextEditorEvent get _value =>
      super._value as AddStaticTextEditorEvent;
}

/// @nodoc

class _$AddStaticTextEditorEvent implements AddStaticTextEditorEvent {
  const _$AddStaticTextEditorEvent();

  @override
  String toString() {
    return 'EditorEvent.addStaticText()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is AddStaticTextEditorEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addImage,
    required TResult Function() addStaticText,
    required TResult Function() addVariableText,
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(Offset localPosition) dragStart,
    required TResult Function(Offset localPosition) dragUpdate,
    required TResult Function() dragEnd,
    required TResult Function(Offset localPosition) tapUp,
    required TResult Function() clearEditor,
  }) {
    return addStaticText();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function()? addStaticText,
    TResult Function()? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(Offset localPosition)? dragStart,
    TResult Function(Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
  }) {
    return addStaticText?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function()? addStaticText,
    TResult Function()? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(Offset localPosition)? dragStart,
    TResult Function(Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
    required TResult orElse(),
  }) {
    if (addStaticText != null) {
      return addStaticText();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddImageEditorEvent value) addImage,
    required TResult Function(AddStaticTextEditorEvent value) addStaticText,
    required TResult Function(AddVariableTextEditorEvent value) addVariableText,
    required TResult Function(UndoEditorEvent value) undo,
    required TResult Function(RedoEditorEvent value) redo,
    required TResult Function(DragStartEditorEvent value) dragStart,
    required TResult Function(DragUpdateEditorEvent value) dragUpdate,
    required TResult Function(DragEndEditorEvent value) dragEnd,
    required TResult Function(TapUpEditorEvent value) tapUp,
    required TResult Function(ClearEditorEvent value) clearEditor,
  }) {
    return addStaticText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddImageEditorEvent value)? addImage,
    TResult Function(AddStaticTextEditorEvent value)? addStaticText,
    TResult Function(AddVariableTextEditorEvent value)? addVariableText,
    TResult Function(UndoEditorEvent value)? undo,
    TResult Function(RedoEditorEvent value)? redo,
    TResult Function(DragStartEditorEvent value)? dragStart,
    TResult Function(DragUpdateEditorEvent value)? dragUpdate,
    TResult Function(DragEndEditorEvent value)? dragEnd,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
  }) {
    return addStaticText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddImageEditorEvent value)? addImage,
    TResult Function(AddStaticTextEditorEvent value)? addStaticText,
    TResult Function(AddVariableTextEditorEvent value)? addVariableText,
    TResult Function(UndoEditorEvent value)? undo,
    TResult Function(RedoEditorEvent value)? redo,
    TResult Function(DragStartEditorEvent value)? dragStart,
    TResult Function(DragUpdateEditorEvent value)? dragUpdate,
    TResult Function(DragEndEditorEvent value)? dragEnd,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
    required TResult orElse(),
  }) {
    if (addStaticText != null) {
      return addStaticText(this);
    }
    return orElse();
  }
}

abstract class AddStaticTextEditorEvent implements EditorEvent {
  const factory AddStaticTextEditorEvent() = _$AddStaticTextEditorEvent;
}

/// @nodoc
abstract class $AddVariableTextEditorEventCopyWith<$Res> {
  factory $AddVariableTextEditorEventCopyWith(AddVariableTextEditorEvent value,
          $Res Function(AddVariableTextEditorEvent) then) =
      _$AddVariableTextEditorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddVariableTextEditorEventCopyWithImpl<$Res>
    extends _$EditorEventCopyWithImpl<$Res>
    implements $AddVariableTextEditorEventCopyWith<$Res> {
  _$AddVariableTextEditorEventCopyWithImpl(AddVariableTextEditorEvent _value,
      $Res Function(AddVariableTextEditorEvent) _then)
      : super(_value, (v) => _then(v as AddVariableTextEditorEvent));

  @override
  AddVariableTextEditorEvent get _value =>
      super._value as AddVariableTextEditorEvent;
}

/// @nodoc

class _$AddVariableTextEditorEvent implements AddVariableTextEditorEvent {
  const _$AddVariableTextEditorEvent();

  @override
  String toString() {
    return 'EditorEvent.addVariableText()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddVariableTextEditorEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addImage,
    required TResult Function() addStaticText,
    required TResult Function() addVariableText,
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(Offset localPosition) dragStart,
    required TResult Function(Offset localPosition) dragUpdate,
    required TResult Function() dragEnd,
    required TResult Function(Offset localPosition) tapUp,
    required TResult Function() clearEditor,
  }) {
    return addVariableText();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function()? addStaticText,
    TResult Function()? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(Offset localPosition)? dragStart,
    TResult Function(Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
  }) {
    return addVariableText?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function()? addStaticText,
    TResult Function()? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(Offset localPosition)? dragStart,
    TResult Function(Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
    required TResult orElse(),
  }) {
    if (addVariableText != null) {
      return addVariableText();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddImageEditorEvent value) addImage,
    required TResult Function(AddStaticTextEditorEvent value) addStaticText,
    required TResult Function(AddVariableTextEditorEvent value) addVariableText,
    required TResult Function(UndoEditorEvent value) undo,
    required TResult Function(RedoEditorEvent value) redo,
    required TResult Function(DragStartEditorEvent value) dragStart,
    required TResult Function(DragUpdateEditorEvent value) dragUpdate,
    required TResult Function(DragEndEditorEvent value) dragEnd,
    required TResult Function(TapUpEditorEvent value) tapUp,
    required TResult Function(ClearEditorEvent value) clearEditor,
  }) {
    return addVariableText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddImageEditorEvent value)? addImage,
    TResult Function(AddStaticTextEditorEvent value)? addStaticText,
    TResult Function(AddVariableTextEditorEvent value)? addVariableText,
    TResult Function(UndoEditorEvent value)? undo,
    TResult Function(RedoEditorEvent value)? redo,
    TResult Function(DragStartEditorEvent value)? dragStart,
    TResult Function(DragUpdateEditorEvent value)? dragUpdate,
    TResult Function(DragEndEditorEvent value)? dragEnd,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
  }) {
    return addVariableText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddImageEditorEvent value)? addImage,
    TResult Function(AddStaticTextEditorEvent value)? addStaticText,
    TResult Function(AddVariableTextEditorEvent value)? addVariableText,
    TResult Function(UndoEditorEvent value)? undo,
    TResult Function(RedoEditorEvent value)? redo,
    TResult Function(DragStartEditorEvent value)? dragStart,
    TResult Function(DragUpdateEditorEvent value)? dragUpdate,
    TResult Function(DragEndEditorEvent value)? dragEnd,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
    required TResult orElse(),
  }) {
    if (addVariableText != null) {
      return addVariableText(this);
    }
    return orElse();
  }
}

abstract class AddVariableTextEditorEvent implements EditorEvent {
  const factory AddVariableTextEditorEvent() = _$AddVariableTextEditorEvent;
}

/// @nodoc
abstract class $UndoEditorEventCopyWith<$Res> {
  factory $UndoEditorEventCopyWith(
          UndoEditorEvent value, $Res Function(UndoEditorEvent) then) =
      _$UndoEditorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UndoEditorEventCopyWithImpl<$Res>
    extends _$EditorEventCopyWithImpl<$Res>
    implements $UndoEditorEventCopyWith<$Res> {
  _$UndoEditorEventCopyWithImpl(
      UndoEditorEvent _value, $Res Function(UndoEditorEvent) _then)
      : super(_value, (v) => _then(v as UndoEditorEvent));

  @override
  UndoEditorEvent get _value => super._value as UndoEditorEvent;
}

/// @nodoc

class _$UndoEditorEvent implements UndoEditorEvent {
  const _$UndoEditorEvent();

  @override
  String toString() {
    return 'EditorEvent.undo()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UndoEditorEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addImage,
    required TResult Function() addStaticText,
    required TResult Function() addVariableText,
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(Offset localPosition) dragStart,
    required TResult Function(Offset localPosition) dragUpdate,
    required TResult Function() dragEnd,
    required TResult Function(Offset localPosition) tapUp,
    required TResult Function() clearEditor,
  }) {
    return undo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function()? addStaticText,
    TResult Function()? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(Offset localPosition)? dragStart,
    TResult Function(Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
  }) {
    return undo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function()? addStaticText,
    TResult Function()? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(Offset localPosition)? dragStart,
    TResult Function(Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
    required TResult orElse(),
  }) {
    if (undo != null) {
      return undo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddImageEditorEvent value) addImage,
    required TResult Function(AddStaticTextEditorEvent value) addStaticText,
    required TResult Function(AddVariableTextEditorEvent value) addVariableText,
    required TResult Function(UndoEditorEvent value) undo,
    required TResult Function(RedoEditorEvent value) redo,
    required TResult Function(DragStartEditorEvent value) dragStart,
    required TResult Function(DragUpdateEditorEvent value) dragUpdate,
    required TResult Function(DragEndEditorEvent value) dragEnd,
    required TResult Function(TapUpEditorEvent value) tapUp,
    required TResult Function(ClearEditorEvent value) clearEditor,
  }) {
    return undo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddImageEditorEvent value)? addImage,
    TResult Function(AddStaticTextEditorEvent value)? addStaticText,
    TResult Function(AddVariableTextEditorEvent value)? addVariableText,
    TResult Function(UndoEditorEvent value)? undo,
    TResult Function(RedoEditorEvent value)? redo,
    TResult Function(DragStartEditorEvent value)? dragStart,
    TResult Function(DragUpdateEditorEvent value)? dragUpdate,
    TResult Function(DragEndEditorEvent value)? dragEnd,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
  }) {
    return undo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddImageEditorEvent value)? addImage,
    TResult Function(AddStaticTextEditorEvent value)? addStaticText,
    TResult Function(AddVariableTextEditorEvent value)? addVariableText,
    TResult Function(UndoEditorEvent value)? undo,
    TResult Function(RedoEditorEvent value)? redo,
    TResult Function(DragStartEditorEvent value)? dragStart,
    TResult Function(DragUpdateEditorEvent value)? dragUpdate,
    TResult Function(DragEndEditorEvent value)? dragEnd,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
    required TResult orElse(),
  }) {
    if (undo != null) {
      return undo(this);
    }
    return orElse();
  }
}

abstract class UndoEditorEvent implements EditorEvent {
  const factory UndoEditorEvent() = _$UndoEditorEvent;
}

/// @nodoc
abstract class $RedoEditorEventCopyWith<$Res> {
  factory $RedoEditorEventCopyWith(
          RedoEditorEvent value, $Res Function(RedoEditorEvent) then) =
      _$RedoEditorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RedoEditorEventCopyWithImpl<$Res>
    extends _$EditorEventCopyWithImpl<$Res>
    implements $RedoEditorEventCopyWith<$Res> {
  _$RedoEditorEventCopyWithImpl(
      RedoEditorEvent _value, $Res Function(RedoEditorEvent) _then)
      : super(_value, (v) => _then(v as RedoEditorEvent));

  @override
  RedoEditorEvent get _value => super._value as RedoEditorEvent;
}

/// @nodoc

class _$RedoEditorEvent implements RedoEditorEvent {
  const _$RedoEditorEvent();

  @override
  String toString() {
    return 'EditorEvent.redo()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is RedoEditorEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addImage,
    required TResult Function() addStaticText,
    required TResult Function() addVariableText,
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(Offset localPosition) dragStart,
    required TResult Function(Offset localPosition) dragUpdate,
    required TResult Function() dragEnd,
    required TResult Function(Offset localPosition) tapUp,
    required TResult Function() clearEditor,
  }) {
    return redo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function()? addStaticText,
    TResult Function()? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(Offset localPosition)? dragStart,
    TResult Function(Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
  }) {
    return redo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function()? addStaticText,
    TResult Function()? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(Offset localPosition)? dragStart,
    TResult Function(Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
    required TResult orElse(),
  }) {
    if (redo != null) {
      return redo();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddImageEditorEvent value) addImage,
    required TResult Function(AddStaticTextEditorEvent value) addStaticText,
    required TResult Function(AddVariableTextEditorEvent value) addVariableText,
    required TResult Function(UndoEditorEvent value) undo,
    required TResult Function(RedoEditorEvent value) redo,
    required TResult Function(DragStartEditorEvent value) dragStart,
    required TResult Function(DragUpdateEditorEvent value) dragUpdate,
    required TResult Function(DragEndEditorEvent value) dragEnd,
    required TResult Function(TapUpEditorEvent value) tapUp,
    required TResult Function(ClearEditorEvent value) clearEditor,
  }) {
    return redo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddImageEditorEvent value)? addImage,
    TResult Function(AddStaticTextEditorEvent value)? addStaticText,
    TResult Function(AddVariableTextEditorEvent value)? addVariableText,
    TResult Function(UndoEditorEvent value)? undo,
    TResult Function(RedoEditorEvent value)? redo,
    TResult Function(DragStartEditorEvent value)? dragStart,
    TResult Function(DragUpdateEditorEvent value)? dragUpdate,
    TResult Function(DragEndEditorEvent value)? dragEnd,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
  }) {
    return redo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddImageEditorEvent value)? addImage,
    TResult Function(AddStaticTextEditorEvent value)? addStaticText,
    TResult Function(AddVariableTextEditorEvent value)? addVariableText,
    TResult Function(UndoEditorEvent value)? undo,
    TResult Function(RedoEditorEvent value)? redo,
    TResult Function(DragStartEditorEvent value)? dragStart,
    TResult Function(DragUpdateEditorEvent value)? dragUpdate,
    TResult Function(DragEndEditorEvent value)? dragEnd,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
    required TResult orElse(),
  }) {
    if (redo != null) {
      return redo(this);
    }
    return orElse();
  }
}

abstract class RedoEditorEvent implements EditorEvent {
  const factory RedoEditorEvent() = _$RedoEditorEvent;
}

/// @nodoc
abstract class $DragStartEditorEventCopyWith<$Res> {
  factory $DragStartEditorEventCopyWith(DragStartEditorEvent value,
          $Res Function(DragStartEditorEvent) then) =
      _$DragStartEditorEventCopyWithImpl<$Res>;
  $Res call({Offset localPosition});
}

/// @nodoc
class _$DragStartEditorEventCopyWithImpl<$Res>
    extends _$EditorEventCopyWithImpl<$Res>
    implements $DragStartEditorEventCopyWith<$Res> {
  _$DragStartEditorEventCopyWithImpl(
      DragStartEditorEvent _value, $Res Function(DragStartEditorEvent) _then)
      : super(_value, (v) => _then(v as DragStartEditorEvent));

  @override
  DragStartEditorEvent get _value => super._value as DragStartEditorEvent;

  @override
  $Res call({
    Object? localPosition = freezed,
  }) {
    return _then(DragStartEditorEvent(
      localPosition == freezed
          ? _value.localPosition
          : localPosition // ignore: cast_nullable_to_non_nullable
              as Offset,
    ));
  }
}

/// @nodoc

class _$DragStartEditorEvent implements DragStartEditorEvent {
  const _$DragStartEditorEvent(this.localPosition);

  @override

  /// The local position in the widget where the drag started.
  final Offset localPosition;

  @override
  String toString() {
    return 'EditorEvent.dragStart(localPosition: $localPosition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DragStartEditorEvent &&
            const DeepCollectionEquality()
                .equals(other.localPosition, localPosition));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(localPosition));

  @JsonKey(ignore: true)
  @override
  $DragStartEditorEventCopyWith<DragStartEditorEvent> get copyWith =>
      _$DragStartEditorEventCopyWithImpl<DragStartEditorEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addImage,
    required TResult Function() addStaticText,
    required TResult Function() addVariableText,
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(Offset localPosition) dragStart,
    required TResult Function(Offset localPosition) dragUpdate,
    required TResult Function() dragEnd,
    required TResult Function(Offset localPosition) tapUp,
    required TResult Function() clearEditor,
  }) {
    return dragStart(localPosition);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function()? addStaticText,
    TResult Function()? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(Offset localPosition)? dragStart,
    TResult Function(Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
  }) {
    return dragStart?.call(localPosition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function()? addStaticText,
    TResult Function()? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(Offset localPosition)? dragStart,
    TResult Function(Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
    required TResult orElse(),
  }) {
    if (dragStart != null) {
      return dragStart(localPosition);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddImageEditorEvent value) addImage,
    required TResult Function(AddStaticTextEditorEvent value) addStaticText,
    required TResult Function(AddVariableTextEditorEvent value) addVariableText,
    required TResult Function(UndoEditorEvent value) undo,
    required TResult Function(RedoEditorEvent value) redo,
    required TResult Function(DragStartEditorEvent value) dragStart,
    required TResult Function(DragUpdateEditorEvent value) dragUpdate,
    required TResult Function(DragEndEditorEvent value) dragEnd,
    required TResult Function(TapUpEditorEvent value) tapUp,
    required TResult Function(ClearEditorEvent value) clearEditor,
  }) {
    return dragStart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddImageEditorEvent value)? addImage,
    TResult Function(AddStaticTextEditorEvent value)? addStaticText,
    TResult Function(AddVariableTextEditorEvent value)? addVariableText,
    TResult Function(UndoEditorEvent value)? undo,
    TResult Function(RedoEditorEvent value)? redo,
    TResult Function(DragStartEditorEvent value)? dragStart,
    TResult Function(DragUpdateEditorEvent value)? dragUpdate,
    TResult Function(DragEndEditorEvent value)? dragEnd,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
  }) {
    return dragStart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddImageEditorEvent value)? addImage,
    TResult Function(AddStaticTextEditorEvent value)? addStaticText,
    TResult Function(AddVariableTextEditorEvent value)? addVariableText,
    TResult Function(UndoEditorEvent value)? undo,
    TResult Function(RedoEditorEvent value)? redo,
    TResult Function(DragStartEditorEvent value)? dragStart,
    TResult Function(DragUpdateEditorEvent value)? dragUpdate,
    TResult Function(DragEndEditorEvent value)? dragEnd,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
    required TResult orElse(),
  }) {
    if (dragStart != null) {
      return dragStart(this);
    }
    return orElse();
  }
}

abstract class DragStartEditorEvent implements EditorEvent {
  const factory DragStartEditorEvent(Offset localPosition) =
      _$DragStartEditorEvent;

  /// The local position in the widget where the drag started.
  Offset get localPosition;
  @JsonKey(ignore: true)
  $DragStartEditorEventCopyWith<DragStartEditorEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DragUpdateEditorEventCopyWith<$Res> {
  factory $DragUpdateEditorEventCopyWith(DragUpdateEditorEvent value,
          $Res Function(DragUpdateEditorEvent) then) =
      _$DragUpdateEditorEventCopyWithImpl<$Res>;
  $Res call({Offset localPosition});
}

/// @nodoc
class _$DragUpdateEditorEventCopyWithImpl<$Res>
    extends _$EditorEventCopyWithImpl<$Res>
    implements $DragUpdateEditorEventCopyWith<$Res> {
  _$DragUpdateEditorEventCopyWithImpl(
      DragUpdateEditorEvent _value, $Res Function(DragUpdateEditorEvent) _then)
      : super(_value, (v) => _then(v as DragUpdateEditorEvent));

  @override
  DragUpdateEditorEvent get _value => super._value as DragUpdateEditorEvent;

  @override
  $Res call({
    Object? localPosition = freezed,
  }) {
    return _then(DragUpdateEditorEvent(
      localPosition == freezed
          ? _value.localPosition
          : localPosition // ignore: cast_nullable_to_non_nullable
              as Offset,
    ));
  }
}

/// @nodoc

class _$DragUpdateEditorEvent implements DragUpdateEditorEvent {
  const _$DragUpdateEditorEvent(this.localPosition);

  @override

  /// The local position in the widget where the drag update has happened.
  final Offset localPosition;

  @override
  String toString() {
    return 'EditorEvent.dragUpdate(localPosition: $localPosition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DragUpdateEditorEvent &&
            const DeepCollectionEquality()
                .equals(other.localPosition, localPosition));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(localPosition));

  @JsonKey(ignore: true)
  @override
  $DragUpdateEditorEventCopyWith<DragUpdateEditorEvent> get copyWith =>
      _$DragUpdateEditorEventCopyWithImpl<DragUpdateEditorEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addImage,
    required TResult Function() addStaticText,
    required TResult Function() addVariableText,
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(Offset localPosition) dragStart,
    required TResult Function(Offset localPosition) dragUpdate,
    required TResult Function() dragEnd,
    required TResult Function(Offset localPosition) tapUp,
    required TResult Function() clearEditor,
  }) {
    return dragUpdate(localPosition);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function()? addStaticText,
    TResult Function()? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(Offset localPosition)? dragStart,
    TResult Function(Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
  }) {
    return dragUpdate?.call(localPosition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function()? addStaticText,
    TResult Function()? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(Offset localPosition)? dragStart,
    TResult Function(Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
    required TResult orElse(),
  }) {
    if (dragUpdate != null) {
      return dragUpdate(localPosition);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddImageEditorEvent value) addImage,
    required TResult Function(AddStaticTextEditorEvent value) addStaticText,
    required TResult Function(AddVariableTextEditorEvent value) addVariableText,
    required TResult Function(UndoEditorEvent value) undo,
    required TResult Function(RedoEditorEvent value) redo,
    required TResult Function(DragStartEditorEvent value) dragStart,
    required TResult Function(DragUpdateEditorEvent value) dragUpdate,
    required TResult Function(DragEndEditorEvent value) dragEnd,
    required TResult Function(TapUpEditorEvent value) tapUp,
    required TResult Function(ClearEditorEvent value) clearEditor,
  }) {
    return dragUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddImageEditorEvent value)? addImage,
    TResult Function(AddStaticTextEditorEvent value)? addStaticText,
    TResult Function(AddVariableTextEditorEvent value)? addVariableText,
    TResult Function(UndoEditorEvent value)? undo,
    TResult Function(RedoEditorEvent value)? redo,
    TResult Function(DragStartEditorEvent value)? dragStart,
    TResult Function(DragUpdateEditorEvent value)? dragUpdate,
    TResult Function(DragEndEditorEvent value)? dragEnd,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
  }) {
    return dragUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddImageEditorEvent value)? addImage,
    TResult Function(AddStaticTextEditorEvent value)? addStaticText,
    TResult Function(AddVariableTextEditorEvent value)? addVariableText,
    TResult Function(UndoEditorEvent value)? undo,
    TResult Function(RedoEditorEvent value)? redo,
    TResult Function(DragStartEditorEvent value)? dragStart,
    TResult Function(DragUpdateEditorEvent value)? dragUpdate,
    TResult Function(DragEndEditorEvent value)? dragEnd,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
    required TResult orElse(),
  }) {
    if (dragUpdate != null) {
      return dragUpdate(this);
    }
    return orElse();
  }
}

abstract class DragUpdateEditorEvent implements EditorEvent {
  const factory DragUpdateEditorEvent(Offset localPosition) =
      _$DragUpdateEditorEvent;

  /// The local position in the widget where the drag update has happened.
  Offset get localPosition;
  @JsonKey(ignore: true)
  $DragUpdateEditorEventCopyWith<DragUpdateEditorEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DragEndEditorEventCopyWith<$Res> {
  factory $DragEndEditorEventCopyWith(
          DragEndEditorEvent value, $Res Function(DragEndEditorEvent) then) =
      _$DragEndEditorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DragEndEditorEventCopyWithImpl<$Res>
    extends _$EditorEventCopyWithImpl<$Res>
    implements $DragEndEditorEventCopyWith<$Res> {
  _$DragEndEditorEventCopyWithImpl(
      DragEndEditorEvent _value, $Res Function(DragEndEditorEvent) _then)
      : super(_value, (v) => _then(v as DragEndEditorEvent));

  @override
  DragEndEditorEvent get _value => super._value as DragEndEditorEvent;
}

/// @nodoc

class _$DragEndEditorEvent implements DragEndEditorEvent {
  const _$DragEndEditorEvent();

  @override
  String toString() {
    return 'EditorEvent.dragEnd()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DragEndEditorEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addImage,
    required TResult Function() addStaticText,
    required TResult Function() addVariableText,
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(Offset localPosition) dragStart,
    required TResult Function(Offset localPosition) dragUpdate,
    required TResult Function() dragEnd,
    required TResult Function(Offset localPosition) tapUp,
    required TResult Function() clearEditor,
  }) {
    return dragEnd();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function()? addStaticText,
    TResult Function()? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(Offset localPosition)? dragStart,
    TResult Function(Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
  }) {
    return dragEnd?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function()? addStaticText,
    TResult Function()? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(Offset localPosition)? dragStart,
    TResult Function(Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
    required TResult orElse(),
  }) {
    if (dragEnd != null) {
      return dragEnd();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddImageEditorEvent value) addImage,
    required TResult Function(AddStaticTextEditorEvent value) addStaticText,
    required TResult Function(AddVariableTextEditorEvent value) addVariableText,
    required TResult Function(UndoEditorEvent value) undo,
    required TResult Function(RedoEditorEvent value) redo,
    required TResult Function(DragStartEditorEvent value) dragStart,
    required TResult Function(DragUpdateEditorEvent value) dragUpdate,
    required TResult Function(DragEndEditorEvent value) dragEnd,
    required TResult Function(TapUpEditorEvent value) tapUp,
    required TResult Function(ClearEditorEvent value) clearEditor,
  }) {
    return dragEnd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddImageEditorEvent value)? addImage,
    TResult Function(AddStaticTextEditorEvent value)? addStaticText,
    TResult Function(AddVariableTextEditorEvent value)? addVariableText,
    TResult Function(UndoEditorEvent value)? undo,
    TResult Function(RedoEditorEvent value)? redo,
    TResult Function(DragStartEditorEvent value)? dragStart,
    TResult Function(DragUpdateEditorEvent value)? dragUpdate,
    TResult Function(DragEndEditorEvent value)? dragEnd,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
  }) {
    return dragEnd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddImageEditorEvent value)? addImage,
    TResult Function(AddStaticTextEditorEvent value)? addStaticText,
    TResult Function(AddVariableTextEditorEvent value)? addVariableText,
    TResult Function(UndoEditorEvent value)? undo,
    TResult Function(RedoEditorEvent value)? redo,
    TResult Function(DragStartEditorEvent value)? dragStart,
    TResult Function(DragUpdateEditorEvent value)? dragUpdate,
    TResult Function(DragEndEditorEvent value)? dragEnd,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
    required TResult orElse(),
  }) {
    if (dragEnd != null) {
      return dragEnd(this);
    }
    return orElse();
  }
}

abstract class DragEndEditorEvent implements EditorEvent {
  const factory DragEndEditorEvent() = _$DragEndEditorEvent;
}

/// @nodoc
abstract class $TapUpEditorEventCopyWith<$Res> {
  factory $TapUpEditorEventCopyWith(
          TapUpEditorEvent value, $Res Function(TapUpEditorEvent) then) =
      _$TapUpEditorEventCopyWithImpl<$Res>;
  $Res call({Offset localPosition});
}

/// @nodoc
class _$TapUpEditorEventCopyWithImpl<$Res>
    extends _$EditorEventCopyWithImpl<$Res>
    implements $TapUpEditorEventCopyWith<$Res> {
  _$TapUpEditorEventCopyWithImpl(
      TapUpEditorEvent _value, $Res Function(TapUpEditorEvent) _then)
      : super(_value, (v) => _then(v as TapUpEditorEvent));

  @override
  TapUpEditorEvent get _value => super._value as TapUpEditorEvent;

  @override
  $Res call({
    Object? localPosition = freezed,
  }) {
    return _then(TapUpEditorEvent(
      localPosition == freezed
          ? _value.localPosition
          : localPosition // ignore: cast_nullable_to_non_nullable
              as Offset,
    ));
  }
}

/// @nodoc

class _$TapUpEditorEvent implements TapUpEditorEvent {
  const _$TapUpEditorEvent(this.localPosition);

  @override

  /// The local position where the tap happened.
  final Offset localPosition;

  @override
  String toString() {
    return 'EditorEvent.tapUp(localPosition: $localPosition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TapUpEditorEvent &&
            const DeepCollectionEquality()
                .equals(other.localPosition, localPosition));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(localPosition));

  @JsonKey(ignore: true)
  @override
  $TapUpEditorEventCopyWith<TapUpEditorEvent> get copyWith =>
      _$TapUpEditorEventCopyWithImpl<TapUpEditorEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addImage,
    required TResult Function() addStaticText,
    required TResult Function() addVariableText,
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(Offset localPosition) dragStart,
    required TResult Function(Offset localPosition) dragUpdate,
    required TResult Function() dragEnd,
    required TResult Function(Offset localPosition) tapUp,
    required TResult Function() clearEditor,
  }) {
    return tapUp(localPosition);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function()? addStaticText,
    TResult Function()? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(Offset localPosition)? dragStart,
    TResult Function(Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
  }) {
    return tapUp?.call(localPosition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function()? addStaticText,
    TResult Function()? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(Offset localPosition)? dragStart,
    TResult Function(Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
    required TResult orElse(),
  }) {
    if (tapUp != null) {
      return tapUp(localPosition);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddImageEditorEvent value) addImage,
    required TResult Function(AddStaticTextEditorEvent value) addStaticText,
    required TResult Function(AddVariableTextEditorEvent value) addVariableText,
    required TResult Function(UndoEditorEvent value) undo,
    required TResult Function(RedoEditorEvent value) redo,
    required TResult Function(DragStartEditorEvent value) dragStart,
    required TResult Function(DragUpdateEditorEvent value) dragUpdate,
    required TResult Function(DragEndEditorEvent value) dragEnd,
    required TResult Function(TapUpEditorEvent value) tapUp,
    required TResult Function(ClearEditorEvent value) clearEditor,
  }) {
    return tapUp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddImageEditorEvent value)? addImage,
    TResult Function(AddStaticTextEditorEvent value)? addStaticText,
    TResult Function(AddVariableTextEditorEvent value)? addVariableText,
    TResult Function(UndoEditorEvent value)? undo,
    TResult Function(RedoEditorEvent value)? redo,
    TResult Function(DragStartEditorEvent value)? dragStart,
    TResult Function(DragUpdateEditorEvent value)? dragUpdate,
    TResult Function(DragEndEditorEvent value)? dragEnd,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
  }) {
    return tapUp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddImageEditorEvent value)? addImage,
    TResult Function(AddStaticTextEditorEvent value)? addStaticText,
    TResult Function(AddVariableTextEditorEvent value)? addVariableText,
    TResult Function(UndoEditorEvent value)? undo,
    TResult Function(RedoEditorEvent value)? redo,
    TResult Function(DragStartEditorEvent value)? dragStart,
    TResult Function(DragUpdateEditorEvent value)? dragUpdate,
    TResult Function(DragEndEditorEvent value)? dragEnd,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
    required TResult orElse(),
  }) {
    if (tapUp != null) {
      return tapUp(this);
    }
    return orElse();
  }
}

abstract class TapUpEditorEvent implements EditorEvent {
  const factory TapUpEditorEvent(Offset localPosition) = _$TapUpEditorEvent;

  /// The local position where the tap happened.
  Offset get localPosition;
  @JsonKey(ignore: true)
  $TapUpEditorEventCopyWith<TapUpEditorEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClearEditorEventCopyWith<$Res> {
  factory $ClearEditorEventCopyWith(
          ClearEditorEvent value, $Res Function(ClearEditorEvent) then) =
      _$ClearEditorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ClearEditorEventCopyWithImpl<$Res>
    extends _$EditorEventCopyWithImpl<$Res>
    implements $ClearEditorEventCopyWith<$Res> {
  _$ClearEditorEventCopyWithImpl(
      ClearEditorEvent _value, $Res Function(ClearEditorEvent) _then)
      : super(_value, (v) => _then(v as ClearEditorEvent));

  @override
  ClearEditorEvent get _value => super._value as ClearEditorEvent;
}

/// @nodoc

class _$ClearEditorEvent implements ClearEditorEvent {
  const _$ClearEditorEvent();

  @override
  String toString() {
    return 'EditorEvent.clearEditor()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ClearEditorEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addImage,
    required TResult Function() addStaticText,
    required TResult Function() addVariableText,
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(Offset localPosition) dragStart,
    required TResult Function(Offset localPosition) dragUpdate,
    required TResult Function() dragEnd,
    required TResult Function(Offset localPosition) tapUp,
    required TResult Function() clearEditor,
  }) {
    return clearEditor();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function()? addStaticText,
    TResult Function()? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(Offset localPosition)? dragStart,
    TResult Function(Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
  }) {
    return clearEditor?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function()? addStaticText,
    TResult Function()? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(Offset localPosition)? dragStart,
    TResult Function(Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
    required TResult orElse(),
  }) {
    if (clearEditor != null) {
      return clearEditor();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AddImageEditorEvent value) addImage,
    required TResult Function(AddStaticTextEditorEvent value) addStaticText,
    required TResult Function(AddVariableTextEditorEvent value) addVariableText,
    required TResult Function(UndoEditorEvent value) undo,
    required TResult Function(RedoEditorEvent value) redo,
    required TResult Function(DragStartEditorEvent value) dragStart,
    required TResult Function(DragUpdateEditorEvent value) dragUpdate,
    required TResult Function(DragEndEditorEvent value) dragEnd,
    required TResult Function(TapUpEditorEvent value) tapUp,
    required TResult Function(ClearEditorEvent value) clearEditor,
  }) {
    return clearEditor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AddImageEditorEvent value)? addImage,
    TResult Function(AddStaticTextEditorEvent value)? addStaticText,
    TResult Function(AddVariableTextEditorEvent value)? addVariableText,
    TResult Function(UndoEditorEvent value)? undo,
    TResult Function(RedoEditorEvent value)? redo,
    TResult Function(DragStartEditorEvent value)? dragStart,
    TResult Function(DragUpdateEditorEvent value)? dragUpdate,
    TResult Function(DragEndEditorEvent value)? dragEnd,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
  }) {
    return clearEditor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AddImageEditorEvent value)? addImage,
    TResult Function(AddStaticTextEditorEvent value)? addStaticText,
    TResult Function(AddVariableTextEditorEvent value)? addVariableText,
    TResult Function(UndoEditorEvent value)? undo,
    TResult Function(RedoEditorEvent value)? redo,
    TResult Function(DragStartEditorEvent value)? dragStart,
    TResult Function(DragUpdateEditorEvent value)? dragUpdate,
    TResult Function(DragEndEditorEvent value)? dragEnd,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
    required TResult orElse(),
  }) {
    if (clearEditor != null) {
      return clearEditor(this);
    }
    return orElse();
  }
}

abstract class ClearEditorEvent implements EditorEvent {
  const factory ClearEditorEvent() = _$ClearEditorEvent;
}

/// @nodoc
class _$EditorStateTearOff {
  const _$EditorStateTearOff();

  _EditorState call(
      {required Editor editor,
      required Option<String> draggedElementId,
      required Option<Offset> dragPosition,
      required Option<String> selectedElementId}) {
    return _EditorState(
      editor: editor,
      draggedElementId: draggedElementId,
      dragPosition: dragPosition,
      selectedElementId: selectedElementId,
    );
  }
}

/// @nodoc
const $EditorState = _$EditorStateTearOff();

/// @nodoc
mixin _$EditorState {
  Editor get editor => throw _privateConstructorUsedError;
  Option<String> get draggedElementId => throw _privateConstructorUsedError;
  Option<Offset> get dragPosition => throw _privateConstructorUsedError;
  Option<String> get selectedElementId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditorStateCopyWith<EditorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditorStateCopyWith<$Res> {
  factory $EditorStateCopyWith(
          EditorState value, $Res Function(EditorState) then) =
      _$EditorStateCopyWithImpl<$Res>;
  $Res call(
      {Editor editor,
      Option<String> draggedElementId,
      Option<Offset> dragPosition,
      Option<String> selectedElementId});

  $EditorCopyWith<$Res> get editor;
}

/// @nodoc
class _$EditorStateCopyWithImpl<$Res> implements $EditorStateCopyWith<$Res> {
  _$EditorStateCopyWithImpl(this._value, this._then);

  final EditorState _value;
  // ignore: unused_field
  final $Res Function(EditorState) _then;

  @override
  $Res call({
    Object? editor = freezed,
    Object? draggedElementId = freezed,
    Object? dragPosition = freezed,
    Object? selectedElementId = freezed,
  }) {
    return _then(_value.copyWith(
      editor: editor == freezed
          ? _value.editor
          : editor // ignore: cast_nullable_to_non_nullable
              as Editor,
      draggedElementId: draggedElementId == freezed
          ? _value.draggedElementId
          : draggedElementId // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      dragPosition: dragPosition == freezed
          ? _value.dragPosition
          : dragPosition // ignore: cast_nullable_to_non_nullable
              as Option<Offset>,
      selectedElementId: selectedElementId == freezed
          ? _value.selectedElementId
          : selectedElementId // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }

  @override
  $EditorCopyWith<$Res> get editor {
    return $EditorCopyWith<$Res>(_value.editor, (value) {
      return _then(_value.copyWith(editor: value));
    });
  }
}

/// @nodoc
abstract class _$EditorStateCopyWith<$Res>
    implements $EditorStateCopyWith<$Res> {
  factory _$EditorStateCopyWith(
          _EditorState value, $Res Function(_EditorState) then) =
      __$EditorStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Editor editor,
      Option<String> draggedElementId,
      Option<Offset> dragPosition,
      Option<String> selectedElementId});

  @override
  $EditorCopyWith<$Res> get editor;
}

/// @nodoc
class __$EditorStateCopyWithImpl<$Res> extends _$EditorStateCopyWithImpl<$Res>
    implements _$EditorStateCopyWith<$Res> {
  __$EditorStateCopyWithImpl(
      _EditorState _value, $Res Function(_EditorState) _then)
      : super(_value, (v) => _then(v as _EditorState));

  @override
  _EditorState get _value => super._value as _EditorState;

  @override
  $Res call({
    Object? editor = freezed,
    Object? draggedElementId = freezed,
    Object? dragPosition = freezed,
    Object? selectedElementId = freezed,
  }) {
    return _then(_EditorState(
      editor: editor == freezed
          ? _value.editor
          : editor // ignore: cast_nullable_to_non_nullable
              as Editor,
      draggedElementId: draggedElementId == freezed
          ? _value.draggedElementId
          : draggedElementId // ignore: cast_nullable_to_non_nullable
              as Option<String>,
      dragPosition: dragPosition == freezed
          ? _value.dragPosition
          : dragPosition // ignore: cast_nullable_to_non_nullable
              as Option<Offset>,
      selectedElementId: selectedElementId == freezed
          ? _value.selectedElementId
          : selectedElementId // ignore: cast_nullable_to_non_nullable
              as Option<String>,
    ));
  }
}

/// @nodoc

class _$_EditorState extends _EditorState {
  const _$_EditorState(
      {required this.editor,
      required this.draggedElementId,
      required this.dragPosition,
      required this.selectedElementId})
      : super._();

  @override
  final Editor editor;
  @override
  final Option<String> draggedElementId;
  @override
  final Option<Offset> dragPosition;
  @override
  final Option<String> selectedElementId;

  @override
  String toString() {
    return 'EditorState(editor: $editor, draggedElementId: $draggedElementId, dragPosition: $dragPosition, selectedElementId: $selectedElementId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EditorState &&
            const DeepCollectionEquality().equals(other.editor, editor) &&
            const DeepCollectionEquality()
                .equals(other.draggedElementId, draggedElementId) &&
            const DeepCollectionEquality()
                .equals(other.dragPosition, dragPosition) &&
            const DeepCollectionEquality()
                .equals(other.selectedElementId, selectedElementId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(editor),
      const DeepCollectionEquality().hash(draggedElementId),
      const DeepCollectionEquality().hash(dragPosition),
      const DeepCollectionEquality().hash(selectedElementId));

  @JsonKey(ignore: true)
  @override
  _$EditorStateCopyWith<_EditorState> get copyWith =>
      __$EditorStateCopyWithImpl<_EditorState>(this, _$identity);
}

abstract class _EditorState extends EditorState {
  const factory _EditorState(
      {required Editor editor,
      required Option<String> draggedElementId,
      required Option<Offset> dragPosition,
      required Option<String> selectedElementId}) = _$_EditorState;
  const _EditorState._() : super._();

  @override
  Editor get editor;
  @override
  Option<String> get draggedElementId;
  @override
  Option<Offset> get dragPosition;
  @override
  Option<String> get selectedElementId;
  @override
  @JsonKey(ignore: true)
  _$EditorStateCopyWith<_EditorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$EditorStateErrorTearOff {
  const _$EditorStateErrorTearOff();

  _EditorStateError call(String message) {
    return _EditorStateError(
      message,
    );
  }
}

/// @nodoc
const $EditorStateError = _$EditorStateErrorTearOff();

/// @nodoc
mixin _$EditorStateError {
  String get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditorStateErrorCopyWith<EditorStateError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditorStateErrorCopyWith<$Res> {
  factory $EditorStateErrorCopyWith(
          EditorStateError value, $Res Function(EditorStateError) then) =
      _$EditorStateErrorCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$EditorStateErrorCopyWithImpl<$Res>
    implements $EditorStateErrorCopyWith<$Res> {
  _$EditorStateErrorCopyWithImpl(this._value, this._then);

  final EditorStateError _value;
  // ignore: unused_field
  final $Res Function(EditorStateError) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$EditorStateErrorCopyWith<$Res>
    implements $EditorStateErrorCopyWith<$Res> {
  factory _$EditorStateErrorCopyWith(
          _EditorStateError value, $Res Function(_EditorStateError) then) =
      __$EditorStateErrorCopyWithImpl<$Res>;
  @override
  $Res call({String message});
}

/// @nodoc
class __$EditorStateErrorCopyWithImpl<$Res>
    extends _$EditorStateErrorCopyWithImpl<$Res>
    implements _$EditorStateErrorCopyWith<$Res> {
  __$EditorStateErrorCopyWithImpl(
      _EditorStateError _value, $Res Function(_EditorStateError) _then)
      : super(_value, (v) => _then(v as _EditorStateError));

  @override
  _EditorStateError get _value => super._value as _EditorStateError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_EditorStateError(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EditorStateError extends _EditorStateError {
  const _$_EditorStateError(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'EditorStateError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EditorStateError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$EditorStateErrorCopyWith<_EditorStateError> get copyWith =>
      __$EditorStateErrorCopyWithImpl<_EditorStateError>(this, _$identity);
}

abstract class _EditorStateError extends EditorStateError {
  const factory _EditorStateError(String message) = _$_EditorStateError;
  const _EditorStateError._() : super._();

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$EditorStateErrorCopyWith<_EditorStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
