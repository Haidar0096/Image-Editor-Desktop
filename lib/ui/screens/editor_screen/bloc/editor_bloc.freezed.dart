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

  AddStaticTextEditorEvent addStaticText(
      {required material.BuildContext context}) {
    return AddStaticTextEditorEvent(
      context: context,
    );
  }

  AddVariableTextEditorEvent addVariableText(
      {required material.BuildContext context}) {
    return AddVariableTextEditorEvent(
      context: context,
    );
  }

  UndoEditorEvent undo() {
    return const UndoEditorEvent();
  }

  RedoEditorEvent redo() {
    return const RedoEditorEvent();
  }

  DragStartEditorEvent dragStart(material.Offset localPosition) {
    return DragStartEditorEvent(
      localPosition,
    );
  }

  DragUpdateEditorEvent dragUpdate(material.Offset localPosition) {
    return DragUpdateEditorEvent(
      localPosition,
    );
  }

  DragEndEditorEvent dragEnd() {
    return const DragEndEditorEvent();
  }

  DragEditorEvent drag(
      {required String elementId, required material.Offset delta}) {
    return DragEditorEvent(
      elementId: elementId,
      delta: delta,
    );
  }

  TapUpEditorEvent tapUp(material.Offset localPosition) {
    return TapUpEditorEvent(
      localPosition,
    );
  }

  ClearEditorEvent clearEditor() {
    return const ClearEditorEvent();
  }

  RemoveElementEditorEvent removeElement({required String elementId}) {
    return RemoveElementEditorEvent(
      elementId: elementId,
    );
  }

  TextElementTextChangedEditorEvent textElementTextChanged(
      {required material.BuildContext context, required String updatedText}) {
    return TextElementTextChangedEditorEvent(
      context: context,
      updatedText: updatedText,
    );
  }

  TextElementTextStyleChangedEditorEvent textElementTextStyleChanged(
      {required material.BuildContext context,
      required material.TextStyle updatedTextStyle}) {
    return TextElementTextStyleChangedEditorEvent(
      context: context,
      updatedTextStyle: updatedTextStyle,
    );
  }

  MakeElementLargerEditorEvent makeLarger() {
    return const MakeElementLargerEditorEvent();
  }

  MakeElementSmallerEditorEvent makeSmaller() {
    return const MakeElementSmallerEditorEvent();
  }

  BringToFrontEditorEvent bringToFront() {
    return const BringToFrontEditorEvent();
  }

  VariableTextElementTextStyleChangedEditorEvent
      variableTextElementTextStyleChanged(
          {required material.BuildContext context,
          required material.TextStyle updatedTextStyle}) {
    return VariableTextElementTextStyleChangedEditorEvent(
      context: context,
      updatedTextStyle: updatedTextStyle,
    );
  }

  VariableTextElementFileChangedEvent variableTextElementFileChangedEvent(
      {required material.BuildContext context}) {
    return VariableTextElementFileChangedEvent(
      context: context,
    );
  }
}

/// @nodoc
const $EditorEvent = _$EditorEventTearOff();

/// @nodoc
mixin _$EditorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addImage,
    required TResult Function(material.BuildContext context) addStaticText,
    required TResult Function(material.BuildContext context) addVariableText,
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(material.Offset localPosition) dragStart,
    required TResult Function(material.Offset localPosition) dragUpdate,
    required TResult Function() dragEnd,
    required TResult Function(String elementId, material.Offset delta) drag,
    required TResult Function(material.Offset localPosition) tapUp,
    required TResult Function() clearEditor,
    required TResult Function(String elementId) removeElement,
    required TResult Function(material.BuildContext context, String updatedText)
        textElementTextChanged,
    required TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)
        textElementTextStyleChanged,
    required TResult Function() makeLarger,
    required TResult Function() makeSmaller,
    required TResult Function() bringToFront,
    required TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)
        variableTextElementTextStyleChanged,
    required TResult Function(material.BuildContext context)
        variableTextElementFileChangedEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function(material.BuildContext context)? addStaticText,
    TResult Function(material.BuildContext context)? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(material.Offset localPosition)? dragStart,
    TResult Function(material.Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(String elementId, material.Offset delta)? drag,
    TResult Function(material.Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
    TResult Function(String elementId)? removeElement,
    TResult Function(material.BuildContext context, String updatedText)?
        textElementTextChanged,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        textElementTextStyleChanged,
    TResult Function()? makeLarger,
    TResult Function()? makeSmaller,
    TResult Function()? bringToFront,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        variableTextElementTextStyleChanged,
    TResult Function(material.BuildContext context)?
        variableTextElementFileChangedEvent,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function(material.BuildContext context)? addStaticText,
    TResult Function(material.BuildContext context)? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(material.Offset localPosition)? dragStart,
    TResult Function(material.Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(String elementId, material.Offset delta)? drag,
    TResult Function(material.Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
    TResult Function(String elementId)? removeElement,
    TResult Function(material.BuildContext context, String updatedText)?
        textElementTextChanged,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        textElementTextStyleChanged,
    TResult Function()? makeLarger,
    TResult Function()? makeSmaller,
    TResult Function()? bringToFront,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        variableTextElementTextStyleChanged,
    TResult Function(material.BuildContext context)?
        variableTextElementFileChangedEvent,
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
    required TResult Function(DragEditorEvent value) drag,
    required TResult Function(TapUpEditorEvent value) tapUp,
    required TResult Function(ClearEditorEvent value) clearEditor,
    required TResult Function(RemoveElementEditorEvent value) removeElement,
    required TResult Function(TextElementTextChangedEditorEvent value)
        textElementTextChanged,
    required TResult Function(TextElementTextStyleChangedEditorEvent value)
        textElementTextStyleChanged,
    required TResult Function(MakeElementLargerEditorEvent value) makeLarger,
    required TResult Function(MakeElementSmallerEditorEvent value) makeSmaller,
    required TResult Function(BringToFrontEditorEvent value) bringToFront,
    required TResult Function(
            VariableTextElementTextStyleChangedEditorEvent value)
        variableTextElementTextStyleChanged,
    required TResult Function(VariableTextElementFileChangedEvent value)
        variableTextElementFileChangedEvent,
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
    TResult Function(DragEditorEvent value)? drag,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
    TResult Function(RemoveElementEditorEvent value)? removeElement,
    TResult Function(TextElementTextChangedEditorEvent value)?
        textElementTextChanged,
    TResult Function(TextElementTextStyleChangedEditorEvent value)?
        textElementTextStyleChanged,
    TResult Function(MakeElementLargerEditorEvent value)? makeLarger,
    TResult Function(MakeElementSmallerEditorEvent value)? makeSmaller,
    TResult Function(BringToFrontEditorEvent value)? bringToFront,
    TResult Function(VariableTextElementTextStyleChangedEditorEvent value)?
        variableTextElementTextStyleChanged,
    TResult Function(VariableTextElementFileChangedEvent value)?
        variableTextElementFileChangedEvent,
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
    TResult Function(DragEditorEvent value)? drag,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
    TResult Function(RemoveElementEditorEvent value)? removeElement,
    TResult Function(TextElementTextChangedEditorEvent value)?
        textElementTextChanged,
    TResult Function(TextElementTextStyleChangedEditorEvent value)?
        textElementTextStyleChanged,
    TResult Function(MakeElementLargerEditorEvent value)? makeLarger,
    TResult Function(MakeElementSmallerEditorEvent value)? makeSmaller,
    TResult Function(BringToFrontEditorEvent value)? bringToFront,
    TResult Function(VariableTextElementTextStyleChangedEditorEvent value)?
        variableTextElementTextStyleChanged,
    TResult Function(VariableTextElementFileChangedEvent value)?
        variableTextElementFileChangedEvent,
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
    required TResult Function(material.BuildContext context) addStaticText,
    required TResult Function(material.BuildContext context) addVariableText,
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(material.Offset localPosition) dragStart,
    required TResult Function(material.Offset localPosition) dragUpdate,
    required TResult Function() dragEnd,
    required TResult Function(String elementId, material.Offset delta) drag,
    required TResult Function(material.Offset localPosition) tapUp,
    required TResult Function() clearEditor,
    required TResult Function(String elementId) removeElement,
    required TResult Function(material.BuildContext context, String updatedText)
        textElementTextChanged,
    required TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)
        textElementTextStyleChanged,
    required TResult Function() makeLarger,
    required TResult Function() makeSmaller,
    required TResult Function() bringToFront,
    required TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)
        variableTextElementTextStyleChanged,
    required TResult Function(material.BuildContext context)
        variableTextElementFileChangedEvent,
  }) {
    return addImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function(material.BuildContext context)? addStaticText,
    TResult Function(material.BuildContext context)? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(material.Offset localPosition)? dragStart,
    TResult Function(material.Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(String elementId, material.Offset delta)? drag,
    TResult Function(material.Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
    TResult Function(String elementId)? removeElement,
    TResult Function(material.BuildContext context, String updatedText)?
        textElementTextChanged,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        textElementTextStyleChanged,
    TResult Function()? makeLarger,
    TResult Function()? makeSmaller,
    TResult Function()? bringToFront,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        variableTextElementTextStyleChanged,
    TResult Function(material.BuildContext context)?
        variableTextElementFileChangedEvent,
  }) {
    return addImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function(material.BuildContext context)? addStaticText,
    TResult Function(material.BuildContext context)? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(material.Offset localPosition)? dragStart,
    TResult Function(material.Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(String elementId, material.Offset delta)? drag,
    TResult Function(material.Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
    TResult Function(String elementId)? removeElement,
    TResult Function(material.BuildContext context, String updatedText)?
        textElementTextChanged,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        textElementTextStyleChanged,
    TResult Function()? makeLarger,
    TResult Function()? makeSmaller,
    TResult Function()? bringToFront,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        variableTextElementTextStyleChanged,
    TResult Function(material.BuildContext context)?
        variableTextElementFileChangedEvent,
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
    required TResult Function(DragEditorEvent value) drag,
    required TResult Function(TapUpEditorEvent value) tapUp,
    required TResult Function(ClearEditorEvent value) clearEditor,
    required TResult Function(RemoveElementEditorEvent value) removeElement,
    required TResult Function(TextElementTextChangedEditorEvent value)
        textElementTextChanged,
    required TResult Function(TextElementTextStyleChangedEditorEvent value)
        textElementTextStyleChanged,
    required TResult Function(MakeElementLargerEditorEvent value) makeLarger,
    required TResult Function(MakeElementSmallerEditorEvent value) makeSmaller,
    required TResult Function(BringToFrontEditorEvent value) bringToFront,
    required TResult Function(
            VariableTextElementTextStyleChangedEditorEvent value)
        variableTextElementTextStyleChanged,
    required TResult Function(VariableTextElementFileChangedEvent value)
        variableTextElementFileChangedEvent,
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
    TResult Function(DragEditorEvent value)? drag,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
    TResult Function(RemoveElementEditorEvent value)? removeElement,
    TResult Function(TextElementTextChangedEditorEvent value)?
        textElementTextChanged,
    TResult Function(TextElementTextStyleChangedEditorEvent value)?
        textElementTextStyleChanged,
    TResult Function(MakeElementLargerEditorEvent value)? makeLarger,
    TResult Function(MakeElementSmallerEditorEvent value)? makeSmaller,
    TResult Function(BringToFrontEditorEvent value)? bringToFront,
    TResult Function(VariableTextElementTextStyleChangedEditorEvent value)?
        variableTextElementTextStyleChanged,
    TResult Function(VariableTextElementFileChangedEvent value)?
        variableTextElementFileChangedEvent,
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
    TResult Function(DragEditorEvent value)? drag,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
    TResult Function(RemoveElementEditorEvent value)? removeElement,
    TResult Function(TextElementTextChangedEditorEvent value)?
        textElementTextChanged,
    TResult Function(TextElementTextStyleChangedEditorEvent value)?
        textElementTextStyleChanged,
    TResult Function(MakeElementLargerEditorEvent value)? makeLarger,
    TResult Function(MakeElementSmallerEditorEvent value)? makeSmaller,
    TResult Function(BringToFrontEditorEvent value)? bringToFront,
    TResult Function(VariableTextElementTextStyleChangedEditorEvent value)?
        variableTextElementTextStyleChanged,
    TResult Function(VariableTextElementFileChangedEvent value)?
        variableTextElementFileChangedEvent,
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
  $Res call({material.BuildContext context});
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

  @override
  $Res call({
    Object? context = freezed,
  }) {
    return _then(AddStaticTextEditorEvent(
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as material.BuildContext,
    ));
  }
}

/// @nodoc

class _$AddStaticTextEditorEvent implements AddStaticTextEditorEvent {
  const _$AddStaticTextEditorEvent({required this.context});

  @override
  final material.BuildContext context;

  @override
  String toString() {
    return 'EditorEvent.addStaticText(context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddStaticTextEditorEvent &&
            const DeepCollectionEquality().equals(other.context, context));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(context));

  @JsonKey(ignore: true)
  @override
  $AddStaticTextEditorEventCopyWith<AddStaticTextEditorEvent> get copyWith =>
      _$AddStaticTextEditorEventCopyWithImpl<AddStaticTextEditorEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addImage,
    required TResult Function(material.BuildContext context) addStaticText,
    required TResult Function(material.BuildContext context) addVariableText,
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(material.Offset localPosition) dragStart,
    required TResult Function(material.Offset localPosition) dragUpdate,
    required TResult Function() dragEnd,
    required TResult Function(String elementId, material.Offset delta) drag,
    required TResult Function(material.Offset localPosition) tapUp,
    required TResult Function() clearEditor,
    required TResult Function(String elementId) removeElement,
    required TResult Function(material.BuildContext context, String updatedText)
        textElementTextChanged,
    required TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)
        textElementTextStyleChanged,
    required TResult Function() makeLarger,
    required TResult Function() makeSmaller,
    required TResult Function() bringToFront,
    required TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)
        variableTextElementTextStyleChanged,
    required TResult Function(material.BuildContext context)
        variableTextElementFileChangedEvent,
  }) {
    return addStaticText(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function(material.BuildContext context)? addStaticText,
    TResult Function(material.BuildContext context)? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(material.Offset localPosition)? dragStart,
    TResult Function(material.Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(String elementId, material.Offset delta)? drag,
    TResult Function(material.Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
    TResult Function(String elementId)? removeElement,
    TResult Function(material.BuildContext context, String updatedText)?
        textElementTextChanged,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        textElementTextStyleChanged,
    TResult Function()? makeLarger,
    TResult Function()? makeSmaller,
    TResult Function()? bringToFront,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        variableTextElementTextStyleChanged,
    TResult Function(material.BuildContext context)?
        variableTextElementFileChangedEvent,
  }) {
    return addStaticText?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function(material.BuildContext context)? addStaticText,
    TResult Function(material.BuildContext context)? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(material.Offset localPosition)? dragStart,
    TResult Function(material.Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(String elementId, material.Offset delta)? drag,
    TResult Function(material.Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
    TResult Function(String elementId)? removeElement,
    TResult Function(material.BuildContext context, String updatedText)?
        textElementTextChanged,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        textElementTextStyleChanged,
    TResult Function()? makeLarger,
    TResult Function()? makeSmaller,
    TResult Function()? bringToFront,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        variableTextElementTextStyleChanged,
    TResult Function(material.BuildContext context)?
        variableTextElementFileChangedEvent,
    required TResult orElse(),
  }) {
    if (addStaticText != null) {
      return addStaticText(context);
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
    required TResult Function(DragEditorEvent value) drag,
    required TResult Function(TapUpEditorEvent value) tapUp,
    required TResult Function(ClearEditorEvent value) clearEditor,
    required TResult Function(RemoveElementEditorEvent value) removeElement,
    required TResult Function(TextElementTextChangedEditorEvent value)
        textElementTextChanged,
    required TResult Function(TextElementTextStyleChangedEditorEvent value)
        textElementTextStyleChanged,
    required TResult Function(MakeElementLargerEditorEvent value) makeLarger,
    required TResult Function(MakeElementSmallerEditorEvent value) makeSmaller,
    required TResult Function(BringToFrontEditorEvent value) bringToFront,
    required TResult Function(
            VariableTextElementTextStyleChangedEditorEvent value)
        variableTextElementTextStyleChanged,
    required TResult Function(VariableTextElementFileChangedEvent value)
        variableTextElementFileChangedEvent,
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
    TResult Function(DragEditorEvent value)? drag,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
    TResult Function(RemoveElementEditorEvent value)? removeElement,
    TResult Function(TextElementTextChangedEditorEvent value)?
        textElementTextChanged,
    TResult Function(TextElementTextStyleChangedEditorEvent value)?
        textElementTextStyleChanged,
    TResult Function(MakeElementLargerEditorEvent value)? makeLarger,
    TResult Function(MakeElementSmallerEditorEvent value)? makeSmaller,
    TResult Function(BringToFrontEditorEvent value)? bringToFront,
    TResult Function(VariableTextElementTextStyleChangedEditorEvent value)?
        variableTextElementTextStyleChanged,
    TResult Function(VariableTextElementFileChangedEvent value)?
        variableTextElementFileChangedEvent,
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
    TResult Function(DragEditorEvent value)? drag,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
    TResult Function(RemoveElementEditorEvent value)? removeElement,
    TResult Function(TextElementTextChangedEditorEvent value)?
        textElementTextChanged,
    TResult Function(TextElementTextStyleChangedEditorEvent value)?
        textElementTextStyleChanged,
    TResult Function(MakeElementLargerEditorEvent value)? makeLarger,
    TResult Function(MakeElementSmallerEditorEvent value)? makeSmaller,
    TResult Function(BringToFrontEditorEvent value)? bringToFront,
    TResult Function(VariableTextElementTextStyleChangedEditorEvent value)?
        variableTextElementTextStyleChanged,
    TResult Function(VariableTextElementFileChangedEvent value)?
        variableTextElementFileChangedEvent,
    required TResult orElse(),
  }) {
    if (addStaticText != null) {
      return addStaticText(this);
    }
    return orElse();
  }
}

abstract class AddStaticTextEditorEvent implements EditorEvent {
  const factory AddStaticTextEditorEvent(
      {required material.BuildContext context}) = _$AddStaticTextEditorEvent;

  material.BuildContext get context;
  @JsonKey(ignore: true)
  $AddStaticTextEditorEventCopyWith<AddStaticTextEditorEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddVariableTextEditorEventCopyWith<$Res> {
  factory $AddVariableTextEditorEventCopyWith(AddVariableTextEditorEvent value,
          $Res Function(AddVariableTextEditorEvent) then) =
      _$AddVariableTextEditorEventCopyWithImpl<$Res>;
  $Res call({material.BuildContext context});
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

  @override
  $Res call({
    Object? context = freezed,
  }) {
    return _then(AddVariableTextEditorEvent(
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as material.BuildContext,
    ));
  }
}

/// @nodoc

class _$AddVariableTextEditorEvent implements AddVariableTextEditorEvent {
  const _$AddVariableTextEditorEvent({required this.context});

  @override
  final material.BuildContext context;

  @override
  String toString() {
    return 'EditorEvent.addVariableText(context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AddVariableTextEditorEvent &&
            const DeepCollectionEquality().equals(other.context, context));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(context));

  @JsonKey(ignore: true)
  @override
  $AddVariableTextEditorEventCopyWith<AddVariableTextEditorEvent>
      get copyWith =>
          _$AddVariableTextEditorEventCopyWithImpl<AddVariableTextEditorEvent>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addImage,
    required TResult Function(material.BuildContext context) addStaticText,
    required TResult Function(material.BuildContext context) addVariableText,
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(material.Offset localPosition) dragStart,
    required TResult Function(material.Offset localPosition) dragUpdate,
    required TResult Function() dragEnd,
    required TResult Function(String elementId, material.Offset delta) drag,
    required TResult Function(material.Offset localPosition) tapUp,
    required TResult Function() clearEditor,
    required TResult Function(String elementId) removeElement,
    required TResult Function(material.BuildContext context, String updatedText)
        textElementTextChanged,
    required TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)
        textElementTextStyleChanged,
    required TResult Function() makeLarger,
    required TResult Function() makeSmaller,
    required TResult Function() bringToFront,
    required TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)
        variableTextElementTextStyleChanged,
    required TResult Function(material.BuildContext context)
        variableTextElementFileChangedEvent,
  }) {
    return addVariableText(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function(material.BuildContext context)? addStaticText,
    TResult Function(material.BuildContext context)? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(material.Offset localPosition)? dragStart,
    TResult Function(material.Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(String elementId, material.Offset delta)? drag,
    TResult Function(material.Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
    TResult Function(String elementId)? removeElement,
    TResult Function(material.BuildContext context, String updatedText)?
        textElementTextChanged,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        textElementTextStyleChanged,
    TResult Function()? makeLarger,
    TResult Function()? makeSmaller,
    TResult Function()? bringToFront,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        variableTextElementTextStyleChanged,
    TResult Function(material.BuildContext context)?
        variableTextElementFileChangedEvent,
  }) {
    return addVariableText?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function(material.BuildContext context)? addStaticText,
    TResult Function(material.BuildContext context)? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(material.Offset localPosition)? dragStart,
    TResult Function(material.Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(String elementId, material.Offset delta)? drag,
    TResult Function(material.Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
    TResult Function(String elementId)? removeElement,
    TResult Function(material.BuildContext context, String updatedText)?
        textElementTextChanged,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        textElementTextStyleChanged,
    TResult Function()? makeLarger,
    TResult Function()? makeSmaller,
    TResult Function()? bringToFront,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        variableTextElementTextStyleChanged,
    TResult Function(material.BuildContext context)?
        variableTextElementFileChangedEvent,
    required TResult orElse(),
  }) {
    if (addVariableText != null) {
      return addVariableText(context);
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
    required TResult Function(DragEditorEvent value) drag,
    required TResult Function(TapUpEditorEvent value) tapUp,
    required TResult Function(ClearEditorEvent value) clearEditor,
    required TResult Function(RemoveElementEditorEvent value) removeElement,
    required TResult Function(TextElementTextChangedEditorEvent value)
        textElementTextChanged,
    required TResult Function(TextElementTextStyleChangedEditorEvent value)
        textElementTextStyleChanged,
    required TResult Function(MakeElementLargerEditorEvent value) makeLarger,
    required TResult Function(MakeElementSmallerEditorEvent value) makeSmaller,
    required TResult Function(BringToFrontEditorEvent value) bringToFront,
    required TResult Function(
            VariableTextElementTextStyleChangedEditorEvent value)
        variableTextElementTextStyleChanged,
    required TResult Function(VariableTextElementFileChangedEvent value)
        variableTextElementFileChangedEvent,
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
    TResult Function(DragEditorEvent value)? drag,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
    TResult Function(RemoveElementEditorEvent value)? removeElement,
    TResult Function(TextElementTextChangedEditorEvent value)?
        textElementTextChanged,
    TResult Function(TextElementTextStyleChangedEditorEvent value)?
        textElementTextStyleChanged,
    TResult Function(MakeElementLargerEditorEvent value)? makeLarger,
    TResult Function(MakeElementSmallerEditorEvent value)? makeSmaller,
    TResult Function(BringToFrontEditorEvent value)? bringToFront,
    TResult Function(VariableTextElementTextStyleChangedEditorEvent value)?
        variableTextElementTextStyleChanged,
    TResult Function(VariableTextElementFileChangedEvent value)?
        variableTextElementFileChangedEvent,
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
    TResult Function(DragEditorEvent value)? drag,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
    TResult Function(RemoveElementEditorEvent value)? removeElement,
    TResult Function(TextElementTextChangedEditorEvent value)?
        textElementTextChanged,
    TResult Function(TextElementTextStyleChangedEditorEvent value)?
        textElementTextStyleChanged,
    TResult Function(MakeElementLargerEditorEvent value)? makeLarger,
    TResult Function(MakeElementSmallerEditorEvent value)? makeSmaller,
    TResult Function(BringToFrontEditorEvent value)? bringToFront,
    TResult Function(VariableTextElementTextStyleChangedEditorEvent value)?
        variableTextElementTextStyleChanged,
    TResult Function(VariableTextElementFileChangedEvent value)?
        variableTextElementFileChangedEvent,
    required TResult orElse(),
  }) {
    if (addVariableText != null) {
      return addVariableText(this);
    }
    return orElse();
  }
}

abstract class AddVariableTextEditorEvent implements EditorEvent {
  const factory AddVariableTextEditorEvent(
      {required material.BuildContext context}) = _$AddVariableTextEditorEvent;

  material.BuildContext get context;
  @JsonKey(ignore: true)
  $AddVariableTextEditorEventCopyWith<AddVariableTextEditorEvent>
      get copyWith => throw _privateConstructorUsedError;
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
    required TResult Function(material.BuildContext context) addStaticText,
    required TResult Function(material.BuildContext context) addVariableText,
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(material.Offset localPosition) dragStart,
    required TResult Function(material.Offset localPosition) dragUpdate,
    required TResult Function() dragEnd,
    required TResult Function(String elementId, material.Offset delta) drag,
    required TResult Function(material.Offset localPosition) tapUp,
    required TResult Function() clearEditor,
    required TResult Function(String elementId) removeElement,
    required TResult Function(material.BuildContext context, String updatedText)
        textElementTextChanged,
    required TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)
        textElementTextStyleChanged,
    required TResult Function() makeLarger,
    required TResult Function() makeSmaller,
    required TResult Function() bringToFront,
    required TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)
        variableTextElementTextStyleChanged,
    required TResult Function(material.BuildContext context)
        variableTextElementFileChangedEvent,
  }) {
    return undo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function(material.BuildContext context)? addStaticText,
    TResult Function(material.BuildContext context)? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(material.Offset localPosition)? dragStart,
    TResult Function(material.Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(String elementId, material.Offset delta)? drag,
    TResult Function(material.Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
    TResult Function(String elementId)? removeElement,
    TResult Function(material.BuildContext context, String updatedText)?
        textElementTextChanged,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        textElementTextStyleChanged,
    TResult Function()? makeLarger,
    TResult Function()? makeSmaller,
    TResult Function()? bringToFront,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        variableTextElementTextStyleChanged,
    TResult Function(material.BuildContext context)?
        variableTextElementFileChangedEvent,
  }) {
    return undo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function(material.BuildContext context)? addStaticText,
    TResult Function(material.BuildContext context)? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(material.Offset localPosition)? dragStart,
    TResult Function(material.Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(String elementId, material.Offset delta)? drag,
    TResult Function(material.Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
    TResult Function(String elementId)? removeElement,
    TResult Function(material.BuildContext context, String updatedText)?
        textElementTextChanged,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        textElementTextStyleChanged,
    TResult Function()? makeLarger,
    TResult Function()? makeSmaller,
    TResult Function()? bringToFront,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        variableTextElementTextStyleChanged,
    TResult Function(material.BuildContext context)?
        variableTextElementFileChangedEvent,
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
    required TResult Function(DragEditorEvent value) drag,
    required TResult Function(TapUpEditorEvent value) tapUp,
    required TResult Function(ClearEditorEvent value) clearEditor,
    required TResult Function(RemoveElementEditorEvent value) removeElement,
    required TResult Function(TextElementTextChangedEditorEvent value)
        textElementTextChanged,
    required TResult Function(TextElementTextStyleChangedEditorEvent value)
        textElementTextStyleChanged,
    required TResult Function(MakeElementLargerEditorEvent value) makeLarger,
    required TResult Function(MakeElementSmallerEditorEvent value) makeSmaller,
    required TResult Function(BringToFrontEditorEvent value) bringToFront,
    required TResult Function(
            VariableTextElementTextStyleChangedEditorEvent value)
        variableTextElementTextStyleChanged,
    required TResult Function(VariableTextElementFileChangedEvent value)
        variableTextElementFileChangedEvent,
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
    TResult Function(DragEditorEvent value)? drag,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
    TResult Function(RemoveElementEditorEvent value)? removeElement,
    TResult Function(TextElementTextChangedEditorEvent value)?
        textElementTextChanged,
    TResult Function(TextElementTextStyleChangedEditorEvent value)?
        textElementTextStyleChanged,
    TResult Function(MakeElementLargerEditorEvent value)? makeLarger,
    TResult Function(MakeElementSmallerEditorEvent value)? makeSmaller,
    TResult Function(BringToFrontEditorEvent value)? bringToFront,
    TResult Function(VariableTextElementTextStyleChangedEditorEvent value)?
        variableTextElementTextStyleChanged,
    TResult Function(VariableTextElementFileChangedEvent value)?
        variableTextElementFileChangedEvent,
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
    TResult Function(DragEditorEvent value)? drag,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
    TResult Function(RemoveElementEditorEvent value)? removeElement,
    TResult Function(TextElementTextChangedEditorEvent value)?
        textElementTextChanged,
    TResult Function(TextElementTextStyleChangedEditorEvent value)?
        textElementTextStyleChanged,
    TResult Function(MakeElementLargerEditorEvent value)? makeLarger,
    TResult Function(MakeElementSmallerEditorEvent value)? makeSmaller,
    TResult Function(BringToFrontEditorEvent value)? bringToFront,
    TResult Function(VariableTextElementTextStyleChangedEditorEvent value)?
        variableTextElementTextStyleChanged,
    TResult Function(VariableTextElementFileChangedEvent value)?
        variableTextElementFileChangedEvent,
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
    required TResult Function(material.BuildContext context) addStaticText,
    required TResult Function(material.BuildContext context) addVariableText,
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(material.Offset localPosition) dragStart,
    required TResult Function(material.Offset localPosition) dragUpdate,
    required TResult Function() dragEnd,
    required TResult Function(String elementId, material.Offset delta) drag,
    required TResult Function(material.Offset localPosition) tapUp,
    required TResult Function() clearEditor,
    required TResult Function(String elementId) removeElement,
    required TResult Function(material.BuildContext context, String updatedText)
        textElementTextChanged,
    required TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)
        textElementTextStyleChanged,
    required TResult Function() makeLarger,
    required TResult Function() makeSmaller,
    required TResult Function() bringToFront,
    required TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)
        variableTextElementTextStyleChanged,
    required TResult Function(material.BuildContext context)
        variableTextElementFileChangedEvent,
  }) {
    return redo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function(material.BuildContext context)? addStaticText,
    TResult Function(material.BuildContext context)? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(material.Offset localPosition)? dragStart,
    TResult Function(material.Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(String elementId, material.Offset delta)? drag,
    TResult Function(material.Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
    TResult Function(String elementId)? removeElement,
    TResult Function(material.BuildContext context, String updatedText)?
        textElementTextChanged,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        textElementTextStyleChanged,
    TResult Function()? makeLarger,
    TResult Function()? makeSmaller,
    TResult Function()? bringToFront,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        variableTextElementTextStyleChanged,
    TResult Function(material.BuildContext context)?
        variableTextElementFileChangedEvent,
  }) {
    return redo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function(material.BuildContext context)? addStaticText,
    TResult Function(material.BuildContext context)? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(material.Offset localPosition)? dragStart,
    TResult Function(material.Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(String elementId, material.Offset delta)? drag,
    TResult Function(material.Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
    TResult Function(String elementId)? removeElement,
    TResult Function(material.BuildContext context, String updatedText)?
        textElementTextChanged,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        textElementTextStyleChanged,
    TResult Function()? makeLarger,
    TResult Function()? makeSmaller,
    TResult Function()? bringToFront,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        variableTextElementTextStyleChanged,
    TResult Function(material.BuildContext context)?
        variableTextElementFileChangedEvent,
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
    required TResult Function(DragEditorEvent value) drag,
    required TResult Function(TapUpEditorEvent value) tapUp,
    required TResult Function(ClearEditorEvent value) clearEditor,
    required TResult Function(RemoveElementEditorEvent value) removeElement,
    required TResult Function(TextElementTextChangedEditorEvent value)
        textElementTextChanged,
    required TResult Function(TextElementTextStyleChangedEditorEvent value)
        textElementTextStyleChanged,
    required TResult Function(MakeElementLargerEditorEvent value) makeLarger,
    required TResult Function(MakeElementSmallerEditorEvent value) makeSmaller,
    required TResult Function(BringToFrontEditorEvent value) bringToFront,
    required TResult Function(
            VariableTextElementTextStyleChangedEditorEvent value)
        variableTextElementTextStyleChanged,
    required TResult Function(VariableTextElementFileChangedEvent value)
        variableTextElementFileChangedEvent,
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
    TResult Function(DragEditorEvent value)? drag,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
    TResult Function(RemoveElementEditorEvent value)? removeElement,
    TResult Function(TextElementTextChangedEditorEvent value)?
        textElementTextChanged,
    TResult Function(TextElementTextStyleChangedEditorEvent value)?
        textElementTextStyleChanged,
    TResult Function(MakeElementLargerEditorEvent value)? makeLarger,
    TResult Function(MakeElementSmallerEditorEvent value)? makeSmaller,
    TResult Function(BringToFrontEditorEvent value)? bringToFront,
    TResult Function(VariableTextElementTextStyleChangedEditorEvent value)?
        variableTextElementTextStyleChanged,
    TResult Function(VariableTextElementFileChangedEvent value)?
        variableTextElementFileChangedEvent,
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
    TResult Function(DragEditorEvent value)? drag,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
    TResult Function(RemoveElementEditorEvent value)? removeElement,
    TResult Function(TextElementTextChangedEditorEvent value)?
        textElementTextChanged,
    TResult Function(TextElementTextStyleChangedEditorEvent value)?
        textElementTextStyleChanged,
    TResult Function(MakeElementLargerEditorEvent value)? makeLarger,
    TResult Function(MakeElementSmallerEditorEvent value)? makeSmaller,
    TResult Function(BringToFrontEditorEvent value)? bringToFront,
    TResult Function(VariableTextElementTextStyleChangedEditorEvent value)?
        variableTextElementTextStyleChanged,
    TResult Function(VariableTextElementFileChangedEvent value)?
        variableTextElementFileChangedEvent,
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
  $Res call({material.Offset localPosition});
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
              as material.Offset,
    ));
  }
}

/// @nodoc

class _$DragStartEditorEvent implements DragStartEditorEvent {
  const _$DragStartEditorEvent(this.localPosition);

  @override

  /// The local position in the widget where the drag started.
  final material.Offset localPosition;

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
    required TResult Function(material.BuildContext context) addStaticText,
    required TResult Function(material.BuildContext context) addVariableText,
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(material.Offset localPosition) dragStart,
    required TResult Function(material.Offset localPosition) dragUpdate,
    required TResult Function() dragEnd,
    required TResult Function(String elementId, material.Offset delta) drag,
    required TResult Function(material.Offset localPosition) tapUp,
    required TResult Function() clearEditor,
    required TResult Function(String elementId) removeElement,
    required TResult Function(material.BuildContext context, String updatedText)
        textElementTextChanged,
    required TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)
        textElementTextStyleChanged,
    required TResult Function() makeLarger,
    required TResult Function() makeSmaller,
    required TResult Function() bringToFront,
    required TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)
        variableTextElementTextStyleChanged,
    required TResult Function(material.BuildContext context)
        variableTextElementFileChangedEvent,
  }) {
    return dragStart(localPosition);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function(material.BuildContext context)? addStaticText,
    TResult Function(material.BuildContext context)? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(material.Offset localPosition)? dragStart,
    TResult Function(material.Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(String elementId, material.Offset delta)? drag,
    TResult Function(material.Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
    TResult Function(String elementId)? removeElement,
    TResult Function(material.BuildContext context, String updatedText)?
        textElementTextChanged,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        textElementTextStyleChanged,
    TResult Function()? makeLarger,
    TResult Function()? makeSmaller,
    TResult Function()? bringToFront,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        variableTextElementTextStyleChanged,
    TResult Function(material.BuildContext context)?
        variableTextElementFileChangedEvent,
  }) {
    return dragStart?.call(localPosition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function(material.BuildContext context)? addStaticText,
    TResult Function(material.BuildContext context)? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(material.Offset localPosition)? dragStart,
    TResult Function(material.Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(String elementId, material.Offset delta)? drag,
    TResult Function(material.Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
    TResult Function(String elementId)? removeElement,
    TResult Function(material.BuildContext context, String updatedText)?
        textElementTextChanged,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        textElementTextStyleChanged,
    TResult Function()? makeLarger,
    TResult Function()? makeSmaller,
    TResult Function()? bringToFront,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        variableTextElementTextStyleChanged,
    TResult Function(material.BuildContext context)?
        variableTextElementFileChangedEvent,
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
    required TResult Function(DragEditorEvent value) drag,
    required TResult Function(TapUpEditorEvent value) tapUp,
    required TResult Function(ClearEditorEvent value) clearEditor,
    required TResult Function(RemoveElementEditorEvent value) removeElement,
    required TResult Function(TextElementTextChangedEditorEvent value)
        textElementTextChanged,
    required TResult Function(TextElementTextStyleChangedEditorEvent value)
        textElementTextStyleChanged,
    required TResult Function(MakeElementLargerEditorEvent value) makeLarger,
    required TResult Function(MakeElementSmallerEditorEvent value) makeSmaller,
    required TResult Function(BringToFrontEditorEvent value) bringToFront,
    required TResult Function(
            VariableTextElementTextStyleChangedEditorEvent value)
        variableTextElementTextStyleChanged,
    required TResult Function(VariableTextElementFileChangedEvent value)
        variableTextElementFileChangedEvent,
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
    TResult Function(DragEditorEvent value)? drag,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
    TResult Function(RemoveElementEditorEvent value)? removeElement,
    TResult Function(TextElementTextChangedEditorEvent value)?
        textElementTextChanged,
    TResult Function(TextElementTextStyleChangedEditorEvent value)?
        textElementTextStyleChanged,
    TResult Function(MakeElementLargerEditorEvent value)? makeLarger,
    TResult Function(MakeElementSmallerEditorEvent value)? makeSmaller,
    TResult Function(BringToFrontEditorEvent value)? bringToFront,
    TResult Function(VariableTextElementTextStyleChangedEditorEvent value)?
        variableTextElementTextStyleChanged,
    TResult Function(VariableTextElementFileChangedEvent value)?
        variableTextElementFileChangedEvent,
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
    TResult Function(DragEditorEvent value)? drag,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
    TResult Function(RemoveElementEditorEvent value)? removeElement,
    TResult Function(TextElementTextChangedEditorEvent value)?
        textElementTextChanged,
    TResult Function(TextElementTextStyleChangedEditorEvent value)?
        textElementTextStyleChanged,
    TResult Function(MakeElementLargerEditorEvent value)? makeLarger,
    TResult Function(MakeElementSmallerEditorEvent value)? makeSmaller,
    TResult Function(BringToFrontEditorEvent value)? bringToFront,
    TResult Function(VariableTextElementTextStyleChangedEditorEvent value)?
        variableTextElementTextStyleChanged,
    TResult Function(VariableTextElementFileChangedEvent value)?
        variableTextElementFileChangedEvent,
    required TResult orElse(),
  }) {
    if (dragStart != null) {
      return dragStart(this);
    }
    return orElse();
  }
}

abstract class DragStartEditorEvent implements EditorEvent {
  const factory DragStartEditorEvent(material.Offset localPosition) =
      _$DragStartEditorEvent;

  /// The local position in the widget where the drag started.
  material.Offset get localPosition;
  @JsonKey(ignore: true)
  $DragStartEditorEventCopyWith<DragStartEditorEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DragUpdateEditorEventCopyWith<$Res> {
  factory $DragUpdateEditorEventCopyWith(DragUpdateEditorEvent value,
          $Res Function(DragUpdateEditorEvent) then) =
      _$DragUpdateEditorEventCopyWithImpl<$Res>;
  $Res call({material.Offset localPosition});
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
              as material.Offset,
    ));
  }
}

/// @nodoc

class _$DragUpdateEditorEvent implements DragUpdateEditorEvent {
  const _$DragUpdateEditorEvent(this.localPosition);

  @override

  /// The local position in the widget where the drag update has happened.
  final material.Offset localPosition;

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
    required TResult Function(material.BuildContext context) addStaticText,
    required TResult Function(material.BuildContext context) addVariableText,
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(material.Offset localPosition) dragStart,
    required TResult Function(material.Offset localPosition) dragUpdate,
    required TResult Function() dragEnd,
    required TResult Function(String elementId, material.Offset delta) drag,
    required TResult Function(material.Offset localPosition) tapUp,
    required TResult Function() clearEditor,
    required TResult Function(String elementId) removeElement,
    required TResult Function(material.BuildContext context, String updatedText)
        textElementTextChanged,
    required TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)
        textElementTextStyleChanged,
    required TResult Function() makeLarger,
    required TResult Function() makeSmaller,
    required TResult Function() bringToFront,
    required TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)
        variableTextElementTextStyleChanged,
    required TResult Function(material.BuildContext context)
        variableTextElementFileChangedEvent,
  }) {
    return dragUpdate(localPosition);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function(material.BuildContext context)? addStaticText,
    TResult Function(material.BuildContext context)? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(material.Offset localPosition)? dragStart,
    TResult Function(material.Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(String elementId, material.Offset delta)? drag,
    TResult Function(material.Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
    TResult Function(String elementId)? removeElement,
    TResult Function(material.BuildContext context, String updatedText)?
        textElementTextChanged,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        textElementTextStyleChanged,
    TResult Function()? makeLarger,
    TResult Function()? makeSmaller,
    TResult Function()? bringToFront,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        variableTextElementTextStyleChanged,
    TResult Function(material.BuildContext context)?
        variableTextElementFileChangedEvent,
  }) {
    return dragUpdate?.call(localPosition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function(material.BuildContext context)? addStaticText,
    TResult Function(material.BuildContext context)? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(material.Offset localPosition)? dragStart,
    TResult Function(material.Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(String elementId, material.Offset delta)? drag,
    TResult Function(material.Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
    TResult Function(String elementId)? removeElement,
    TResult Function(material.BuildContext context, String updatedText)?
        textElementTextChanged,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        textElementTextStyleChanged,
    TResult Function()? makeLarger,
    TResult Function()? makeSmaller,
    TResult Function()? bringToFront,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        variableTextElementTextStyleChanged,
    TResult Function(material.BuildContext context)?
        variableTextElementFileChangedEvent,
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
    required TResult Function(DragEditorEvent value) drag,
    required TResult Function(TapUpEditorEvent value) tapUp,
    required TResult Function(ClearEditorEvent value) clearEditor,
    required TResult Function(RemoveElementEditorEvent value) removeElement,
    required TResult Function(TextElementTextChangedEditorEvent value)
        textElementTextChanged,
    required TResult Function(TextElementTextStyleChangedEditorEvent value)
        textElementTextStyleChanged,
    required TResult Function(MakeElementLargerEditorEvent value) makeLarger,
    required TResult Function(MakeElementSmallerEditorEvent value) makeSmaller,
    required TResult Function(BringToFrontEditorEvent value) bringToFront,
    required TResult Function(
            VariableTextElementTextStyleChangedEditorEvent value)
        variableTextElementTextStyleChanged,
    required TResult Function(VariableTextElementFileChangedEvent value)
        variableTextElementFileChangedEvent,
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
    TResult Function(DragEditorEvent value)? drag,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
    TResult Function(RemoveElementEditorEvent value)? removeElement,
    TResult Function(TextElementTextChangedEditorEvent value)?
        textElementTextChanged,
    TResult Function(TextElementTextStyleChangedEditorEvent value)?
        textElementTextStyleChanged,
    TResult Function(MakeElementLargerEditorEvent value)? makeLarger,
    TResult Function(MakeElementSmallerEditorEvent value)? makeSmaller,
    TResult Function(BringToFrontEditorEvent value)? bringToFront,
    TResult Function(VariableTextElementTextStyleChangedEditorEvent value)?
        variableTextElementTextStyleChanged,
    TResult Function(VariableTextElementFileChangedEvent value)?
        variableTextElementFileChangedEvent,
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
    TResult Function(DragEditorEvent value)? drag,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
    TResult Function(RemoveElementEditorEvent value)? removeElement,
    TResult Function(TextElementTextChangedEditorEvent value)?
        textElementTextChanged,
    TResult Function(TextElementTextStyleChangedEditorEvent value)?
        textElementTextStyleChanged,
    TResult Function(MakeElementLargerEditorEvent value)? makeLarger,
    TResult Function(MakeElementSmallerEditorEvent value)? makeSmaller,
    TResult Function(BringToFrontEditorEvent value)? bringToFront,
    TResult Function(VariableTextElementTextStyleChangedEditorEvent value)?
        variableTextElementTextStyleChanged,
    TResult Function(VariableTextElementFileChangedEvent value)?
        variableTextElementFileChangedEvent,
    required TResult orElse(),
  }) {
    if (dragUpdate != null) {
      return dragUpdate(this);
    }
    return orElse();
  }
}

abstract class DragUpdateEditorEvent implements EditorEvent {
  const factory DragUpdateEditorEvent(material.Offset localPosition) =
      _$DragUpdateEditorEvent;

  /// The local position in the widget where the drag update has happened.
  material.Offset get localPosition;
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
    required TResult Function(material.BuildContext context) addStaticText,
    required TResult Function(material.BuildContext context) addVariableText,
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(material.Offset localPosition) dragStart,
    required TResult Function(material.Offset localPosition) dragUpdate,
    required TResult Function() dragEnd,
    required TResult Function(String elementId, material.Offset delta) drag,
    required TResult Function(material.Offset localPosition) tapUp,
    required TResult Function() clearEditor,
    required TResult Function(String elementId) removeElement,
    required TResult Function(material.BuildContext context, String updatedText)
        textElementTextChanged,
    required TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)
        textElementTextStyleChanged,
    required TResult Function() makeLarger,
    required TResult Function() makeSmaller,
    required TResult Function() bringToFront,
    required TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)
        variableTextElementTextStyleChanged,
    required TResult Function(material.BuildContext context)
        variableTextElementFileChangedEvent,
  }) {
    return dragEnd();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function(material.BuildContext context)? addStaticText,
    TResult Function(material.BuildContext context)? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(material.Offset localPosition)? dragStart,
    TResult Function(material.Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(String elementId, material.Offset delta)? drag,
    TResult Function(material.Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
    TResult Function(String elementId)? removeElement,
    TResult Function(material.BuildContext context, String updatedText)?
        textElementTextChanged,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        textElementTextStyleChanged,
    TResult Function()? makeLarger,
    TResult Function()? makeSmaller,
    TResult Function()? bringToFront,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        variableTextElementTextStyleChanged,
    TResult Function(material.BuildContext context)?
        variableTextElementFileChangedEvent,
  }) {
    return dragEnd?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function(material.BuildContext context)? addStaticText,
    TResult Function(material.BuildContext context)? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(material.Offset localPosition)? dragStart,
    TResult Function(material.Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(String elementId, material.Offset delta)? drag,
    TResult Function(material.Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
    TResult Function(String elementId)? removeElement,
    TResult Function(material.BuildContext context, String updatedText)?
        textElementTextChanged,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        textElementTextStyleChanged,
    TResult Function()? makeLarger,
    TResult Function()? makeSmaller,
    TResult Function()? bringToFront,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        variableTextElementTextStyleChanged,
    TResult Function(material.BuildContext context)?
        variableTextElementFileChangedEvent,
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
    required TResult Function(DragEditorEvent value) drag,
    required TResult Function(TapUpEditorEvent value) tapUp,
    required TResult Function(ClearEditorEvent value) clearEditor,
    required TResult Function(RemoveElementEditorEvent value) removeElement,
    required TResult Function(TextElementTextChangedEditorEvent value)
        textElementTextChanged,
    required TResult Function(TextElementTextStyleChangedEditorEvent value)
        textElementTextStyleChanged,
    required TResult Function(MakeElementLargerEditorEvent value) makeLarger,
    required TResult Function(MakeElementSmallerEditorEvent value) makeSmaller,
    required TResult Function(BringToFrontEditorEvent value) bringToFront,
    required TResult Function(
            VariableTextElementTextStyleChangedEditorEvent value)
        variableTextElementTextStyleChanged,
    required TResult Function(VariableTextElementFileChangedEvent value)
        variableTextElementFileChangedEvent,
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
    TResult Function(DragEditorEvent value)? drag,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
    TResult Function(RemoveElementEditorEvent value)? removeElement,
    TResult Function(TextElementTextChangedEditorEvent value)?
        textElementTextChanged,
    TResult Function(TextElementTextStyleChangedEditorEvent value)?
        textElementTextStyleChanged,
    TResult Function(MakeElementLargerEditorEvent value)? makeLarger,
    TResult Function(MakeElementSmallerEditorEvent value)? makeSmaller,
    TResult Function(BringToFrontEditorEvent value)? bringToFront,
    TResult Function(VariableTextElementTextStyleChangedEditorEvent value)?
        variableTextElementTextStyleChanged,
    TResult Function(VariableTextElementFileChangedEvent value)?
        variableTextElementFileChangedEvent,
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
    TResult Function(DragEditorEvent value)? drag,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
    TResult Function(RemoveElementEditorEvent value)? removeElement,
    TResult Function(TextElementTextChangedEditorEvent value)?
        textElementTextChanged,
    TResult Function(TextElementTextStyleChangedEditorEvent value)?
        textElementTextStyleChanged,
    TResult Function(MakeElementLargerEditorEvent value)? makeLarger,
    TResult Function(MakeElementSmallerEditorEvent value)? makeSmaller,
    TResult Function(BringToFrontEditorEvent value)? bringToFront,
    TResult Function(VariableTextElementTextStyleChangedEditorEvent value)?
        variableTextElementTextStyleChanged,
    TResult Function(VariableTextElementFileChangedEvent value)?
        variableTextElementFileChangedEvent,
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
abstract class $DragEditorEventCopyWith<$Res> {
  factory $DragEditorEventCopyWith(
          DragEditorEvent value, $Res Function(DragEditorEvent) then) =
      _$DragEditorEventCopyWithImpl<$Res>;
  $Res call({String elementId, material.Offset delta});
}

/// @nodoc
class _$DragEditorEventCopyWithImpl<$Res>
    extends _$EditorEventCopyWithImpl<$Res>
    implements $DragEditorEventCopyWith<$Res> {
  _$DragEditorEventCopyWithImpl(
      DragEditorEvent _value, $Res Function(DragEditorEvent) _then)
      : super(_value, (v) => _then(v as DragEditorEvent));

  @override
  DragEditorEvent get _value => super._value as DragEditorEvent;

  @override
  $Res call({
    Object? elementId = freezed,
    Object? delta = freezed,
  }) {
    return _then(DragEditorEvent(
      elementId: elementId == freezed
          ? _value.elementId
          : elementId // ignore: cast_nullable_to_non_nullable
              as String,
      delta: delta == freezed
          ? _value.delta
          : delta // ignore: cast_nullable_to_non_nullable
              as material.Offset,
    ));
  }
}

/// @nodoc

class _$DragEditorEvent implements DragEditorEvent {
  const _$DragEditorEvent({required this.elementId, required this.delta});

  @override
  final String elementId;
  @override
  final material.Offset delta;

  @override
  String toString() {
    return 'EditorEvent.drag(elementId: $elementId, delta: $delta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DragEditorEvent &&
            const DeepCollectionEquality().equals(other.elementId, elementId) &&
            const DeepCollectionEquality().equals(other.delta, delta));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(elementId),
      const DeepCollectionEquality().hash(delta));

  @JsonKey(ignore: true)
  @override
  $DragEditorEventCopyWith<DragEditorEvent> get copyWith =>
      _$DragEditorEventCopyWithImpl<DragEditorEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addImage,
    required TResult Function(material.BuildContext context) addStaticText,
    required TResult Function(material.BuildContext context) addVariableText,
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(material.Offset localPosition) dragStart,
    required TResult Function(material.Offset localPosition) dragUpdate,
    required TResult Function() dragEnd,
    required TResult Function(String elementId, material.Offset delta) drag,
    required TResult Function(material.Offset localPosition) tapUp,
    required TResult Function() clearEditor,
    required TResult Function(String elementId) removeElement,
    required TResult Function(material.BuildContext context, String updatedText)
        textElementTextChanged,
    required TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)
        textElementTextStyleChanged,
    required TResult Function() makeLarger,
    required TResult Function() makeSmaller,
    required TResult Function() bringToFront,
    required TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)
        variableTextElementTextStyleChanged,
    required TResult Function(material.BuildContext context)
        variableTextElementFileChangedEvent,
  }) {
    return drag(elementId, delta);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function(material.BuildContext context)? addStaticText,
    TResult Function(material.BuildContext context)? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(material.Offset localPosition)? dragStart,
    TResult Function(material.Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(String elementId, material.Offset delta)? drag,
    TResult Function(material.Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
    TResult Function(String elementId)? removeElement,
    TResult Function(material.BuildContext context, String updatedText)?
        textElementTextChanged,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        textElementTextStyleChanged,
    TResult Function()? makeLarger,
    TResult Function()? makeSmaller,
    TResult Function()? bringToFront,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        variableTextElementTextStyleChanged,
    TResult Function(material.BuildContext context)?
        variableTextElementFileChangedEvent,
  }) {
    return drag?.call(elementId, delta);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function(material.BuildContext context)? addStaticText,
    TResult Function(material.BuildContext context)? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(material.Offset localPosition)? dragStart,
    TResult Function(material.Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(String elementId, material.Offset delta)? drag,
    TResult Function(material.Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
    TResult Function(String elementId)? removeElement,
    TResult Function(material.BuildContext context, String updatedText)?
        textElementTextChanged,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        textElementTextStyleChanged,
    TResult Function()? makeLarger,
    TResult Function()? makeSmaller,
    TResult Function()? bringToFront,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        variableTextElementTextStyleChanged,
    TResult Function(material.BuildContext context)?
        variableTextElementFileChangedEvent,
    required TResult orElse(),
  }) {
    if (drag != null) {
      return drag(elementId, delta);
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
    required TResult Function(DragEditorEvent value) drag,
    required TResult Function(TapUpEditorEvent value) tapUp,
    required TResult Function(ClearEditorEvent value) clearEditor,
    required TResult Function(RemoveElementEditorEvent value) removeElement,
    required TResult Function(TextElementTextChangedEditorEvent value)
        textElementTextChanged,
    required TResult Function(TextElementTextStyleChangedEditorEvent value)
        textElementTextStyleChanged,
    required TResult Function(MakeElementLargerEditorEvent value) makeLarger,
    required TResult Function(MakeElementSmallerEditorEvent value) makeSmaller,
    required TResult Function(BringToFrontEditorEvent value) bringToFront,
    required TResult Function(
            VariableTextElementTextStyleChangedEditorEvent value)
        variableTextElementTextStyleChanged,
    required TResult Function(VariableTextElementFileChangedEvent value)
        variableTextElementFileChangedEvent,
  }) {
    return drag(this);
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
    TResult Function(DragEditorEvent value)? drag,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
    TResult Function(RemoveElementEditorEvent value)? removeElement,
    TResult Function(TextElementTextChangedEditorEvent value)?
        textElementTextChanged,
    TResult Function(TextElementTextStyleChangedEditorEvent value)?
        textElementTextStyleChanged,
    TResult Function(MakeElementLargerEditorEvent value)? makeLarger,
    TResult Function(MakeElementSmallerEditorEvent value)? makeSmaller,
    TResult Function(BringToFrontEditorEvent value)? bringToFront,
    TResult Function(VariableTextElementTextStyleChangedEditorEvent value)?
        variableTextElementTextStyleChanged,
    TResult Function(VariableTextElementFileChangedEvent value)?
        variableTextElementFileChangedEvent,
  }) {
    return drag?.call(this);
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
    TResult Function(DragEditorEvent value)? drag,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
    TResult Function(RemoveElementEditorEvent value)? removeElement,
    TResult Function(TextElementTextChangedEditorEvent value)?
        textElementTextChanged,
    TResult Function(TextElementTextStyleChangedEditorEvent value)?
        textElementTextStyleChanged,
    TResult Function(MakeElementLargerEditorEvent value)? makeLarger,
    TResult Function(MakeElementSmallerEditorEvent value)? makeSmaller,
    TResult Function(BringToFrontEditorEvent value)? bringToFront,
    TResult Function(VariableTextElementTextStyleChangedEditorEvent value)?
        variableTextElementTextStyleChanged,
    TResult Function(VariableTextElementFileChangedEvent value)?
        variableTextElementFileChangedEvent,
    required TResult orElse(),
  }) {
    if (drag != null) {
      return drag(this);
    }
    return orElse();
  }
}

abstract class DragEditorEvent implements EditorEvent {
  const factory DragEditorEvent(
      {required String elementId,
      required material.Offset delta}) = _$DragEditorEvent;

  String get elementId;
  material.Offset get delta;
  @JsonKey(ignore: true)
  $DragEditorEventCopyWith<DragEditorEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TapUpEditorEventCopyWith<$Res> {
  factory $TapUpEditorEventCopyWith(
          TapUpEditorEvent value, $Res Function(TapUpEditorEvent) then) =
      _$TapUpEditorEventCopyWithImpl<$Res>;
  $Res call({material.Offset localPosition});
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
              as material.Offset,
    ));
  }
}

/// @nodoc

class _$TapUpEditorEvent implements TapUpEditorEvent {
  const _$TapUpEditorEvent(this.localPosition);

  @override

  /// The local position where the tap happened.
  final material.Offset localPosition;

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
    required TResult Function(material.BuildContext context) addStaticText,
    required TResult Function(material.BuildContext context) addVariableText,
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(material.Offset localPosition) dragStart,
    required TResult Function(material.Offset localPosition) dragUpdate,
    required TResult Function() dragEnd,
    required TResult Function(String elementId, material.Offset delta) drag,
    required TResult Function(material.Offset localPosition) tapUp,
    required TResult Function() clearEditor,
    required TResult Function(String elementId) removeElement,
    required TResult Function(material.BuildContext context, String updatedText)
        textElementTextChanged,
    required TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)
        textElementTextStyleChanged,
    required TResult Function() makeLarger,
    required TResult Function() makeSmaller,
    required TResult Function() bringToFront,
    required TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)
        variableTextElementTextStyleChanged,
    required TResult Function(material.BuildContext context)
        variableTextElementFileChangedEvent,
  }) {
    return tapUp(localPosition);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function(material.BuildContext context)? addStaticText,
    TResult Function(material.BuildContext context)? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(material.Offset localPosition)? dragStart,
    TResult Function(material.Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(String elementId, material.Offset delta)? drag,
    TResult Function(material.Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
    TResult Function(String elementId)? removeElement,
    TResult Function(material.BuildContext context, String updatedText)?
        textElementTextChanged,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        textElementTextStyleChanged,
    TResult Function()? makeLarger,
    TResult Function()? makeSmaller,
    TResult Function()? bringToFront,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        variableTextElementTextStyleChanged,
    TResult Function(material.BuildContext context)?
        variableTextElementFileChangedEvent,
  }) {
    return tapUp?.call(localPosition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function(material.BuildContext context)? addStaticText,
    TResult Function(material.BuildContext context)? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(material.Offset localPosition)? dragStart,
    TResult Function(material.Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(String elementId, material.Offset delta)? drag,
    TResult Function(material.Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
    TResult Function(String elementId)? removeElement,
    TResult Function(material.BuildContext context, String updatedText)?
        textElementTextChanged,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        textElementTextStyleChanged,
    TResult Function()? makeLarger,
    TResult Function()? makeSmaller,
    TResult Function()? bringToFront,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        variableTextElementTextStyleChanged,
    TResult Function(material.BuildContext context)?
        variableTextElementFileChangedEvent,
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
    required TResult Function(DragEditorEvent value) drag,
    required TResult Function(TapUpEditorEvent value) tapUp,
    required TResult Function(ClearEditorEvent value) clearEditor,
    required TResult Function(RemoveElementEditorEvent value) removeElement,
    required TResult Function(TextElementTextChangedEditorEvent value)
        textElementTextChanged,
    required TResult Function(TextElementTextStyleChangedEditorEvent value)
        textElementTextStyleChanged,
    required TResult Function(MakeElementLargerEditorEvent value) makeLarger,
    required TResult Function(MakeElementSmallerEditorEvent value) makeSmaller,
    required TResult Function(BringToFrontEditorEvent value) bringToFront,
    required TResult Function(
            VariableTextElementTextStyleChangedEditorEvent value)
        variableTextElementTextStyleChanged,
    required TResult Function(VariableTextElementFileChangedEvent value)
        variableTextElementFileChangedEvent,
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
    TResult Function(DragEditorEvent value)? drag,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
    TResult Function(RemoveElementEditorEvent value)? removeElement,
    TResult Function(TextElementTextChangedEditorEvent value)?
        textElementTextChanged,
    TResult Function(TextElementTextStyleChangedEditorEvent value)?
        textElementTextStyleChanged,
    TResult Function(MakeElementLargerEditorEvent value)? makeLarger,
    TResult Function(MakeElementSmallerEditorEvent value)? makeSmaller,
    TResult Function(BringToFrontEditorEvent value)? bringToFront,
    TResult Function(VariableTextElementTextStyleChangedEditorEvent value)?
        variableTextElementTextStyleChanged,
    TResult Function(VariableTextElementFileChangedEvent value)?
        variableTextElementFileChangedEvent,
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
    TResult Function(DragEditorEvent value)? drag,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
    TResult Function(RemoveElementEditorEvent value)? removeElement,
    TResult Function(TextElementTextChangedEditorEvent value)?
        textElementTextChanged,
    TResult Function(TextElementTextStyleChangedEditorEvent value)?
        textElementTextStyleChanged,
    TResult Function(MakeElementLargerEditorEvent value)? makeLarger,
    TResult Function(MakeElementSmallerEditorEvent value)? makeSmaller,
    TResult Function(BringToFrontEditorEvent value)? bringToFront,
    TResult Function(VariableTextElementTextStyleChangedEditorEvent value)?
        variableTextElementTextStyleChanged,
    TResult Function(VariableTextElementFileChangedEvent value)?
        variableTextElementFileChangedEvent,
    required TResult orElse(),
  }) {
    if (tapUp != null) {
      return tapUp(this);
    }
    return orElse();
  }
}

abstract class TapUpEditorEvent implements EditorEvent {
  const factory TapUpEditorEvent(material.Offset localPosition) =
      _$TapUpEditorEvent;

  /// The local position where the tap happened.
  material.Offset get localPosition;
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
    required TResult Function(material.BuildContext context) addStaticText,
    required TResult Function(material.BuildContext context) addVariableText,
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(material.Offset localPosition) dragStart,
    required TResult Function(material.Offset localPosition) dragUpdate,
    required TResult Function() dragEnd,
    required TResult Function(String elementId, material.Offset delta) drag,
    required TResult Function(material.Offset localPosition) tapUp,
    required TResult Function() clearEditor,
    required TResult Function(String elementId) removeElement,
    required TResult Function(material.BuildContext context, String updatedText)
        textElementTextChanged,
    required TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)
        textElementTextStyleChanged,
    required TResult Function() makeLarger,
    required TResult Function() makeSmaller,
    required TResult Function() bringToFront,
    required TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)
        variableTextElementTextStyleChanged,
    required TResult Function(material.BuildContext context)
        variableTextElementFileChangedEvent,
  }) {
    return clearEditor();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function(material.BuildContext context)? addStaticText,
    TResult Function(material.BuildContext context)? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(material.Offset localPosition)? dragStart,
    TResult Function(material.Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(String elementId, material.Offset delta)? drag,
    TResult Function(material.Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
    TResult Function(String elementId)? removeElement,
    TResult Function(material.BuildContext context, String updatedText)?
        textElementTextChanged,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        textElementTextStyleChanged,
    TResult Function()? makeLarger,
    TResult Function()? makeSmaller,
    TResult Function()? bringToFront,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        variableTextElementTextStyleChanged,
    TResult Function(material.BuildContext context)?
        variableTextElementFileChangedEvent,
  }) {
    return clearEditor?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function(material.BuildContext context)? addStaticText,
    TResult Function(material.BuildContext context)? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(material.Offset localPosition)? dragStart,
    TResult Function(material.Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(String elementId, material.Offset delta)? drag,
    TResult Function(material.Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
    TResult Function(String elementId)? removeElement,
    TResult Function(material.BuildContext context, String updatedText)?
        textElementTextChanged,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        textElementTextStyleChanged,
    TResult Function()? makeLarger,
    TResult Function()? makeSmaller,
    TResult Function()? bringToFront,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        variableTextElementTextStyleChanged,
    TResult Function(material.BuildContext context)?
        variableTextElementFileChangedEvent,
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
    required TResult Function(DragEditorEvent value) drag,
    required TResult Function(TapUpEditorEvent value) tapUp,
    required TResult Function(ClearEditorEvent value) clearEditor,
    required TResult Function(RemoveElementEditorEvent value) removeElement,
    required TResult Function(TextElementTextChangedEditorEvent value)
        textElementTextChanged,
    required TResult Function(TextElementTextStyleChangedEditorEvent value)
        textElementTextStyleChanged,
    required TResult Function(MakeElementLargerEditorEvent value) makeLarger,
    required TResult Function(MakeElementSmallerEditorEvent value) makeSmaller,
    required TResult Function(BringToFrontEditorEvent value) bringToFront,
    required TResult Function(
            VariableTextElementTextStyleChangedEditorEvent value)
        variableTextElementTextStyleChanged,
    required TResult Function(VariableTextElementFileChangedEvent value)
        variableTextElementFileChangedEvent,
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
    TResult Function(DragEditorEvent value)? drag,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
    TResult Function(RemoveElementEditorEvent value)? removeElement,
    TResult Function(TextElementTextChangedEditorEvent value)?
        textElementTextChanged,
    TResult Function(TextElementTextStyleChangedEditorEvent value)?
        textElementTextStyleChanged,
    TResult Function(MakeElementLargerEditorEvent value)? makeLarger,
    TResult Function(MakeElementSmallerEditorEvent value)? makeSmaller,
    TResult Function(BringToFrontEditorEvent value)? bringToFront,
    TResult Function(VariableTextElementTextStyleChangedEditorEvent value)?
        variableTextElementTextStyleChanged,
    TResult Function(VariableTextElementFileChangedEvent value)?
        variableTextElementFileChangedEvent,
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
    TResult Function(DragEditorEvent value)? drag,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
    TResult Function(RemoveElementEditorEvent value)? removeElement,
    TResult Function(TextElementTextChangedEditorEvent value)?
        textElementTextChanged,
    TResult Function(TextElementTextStyleChangedEditorEvent value)?
        textElementTextStyleChanged,
    TResult Function(MakeElementLargerEditorEvent value)? makeLarger,
    TResult Function(MakeElementSmallerEditorEvent value)? makeSmaller,
    TResult Function(BringToFrontEditorEvent value)? bringToFront,
    TResult Function(VariableTextElementTextStyleChangedEditorEvent value)?
        variableTextElementTextStyleChanged,
    TResult Function(VariableTextElementFileChangedEvent value)?
        variableTextElementFileChangedEvent,
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
abstract class $RemoveElementEditorEventCopyWith<$Res> {
  factory $RemoveElementEditorEventCopyWith(RemoveElementEditorEvent value,
          $Res Function(RemoveElementEditorEvent) then) =
      _$RemoveElementEditorEventCopyWithImpl<$Res>;
  $Res call({String elementId});
}

/// @nodoc
class _$RemoveElementEditorEventCopyWithImpl<$Res>
    extends _$EditorEventCopyWithImpl<$Res>
    implements $RemoveElementEditorEventCopyWith<$Res> {
  _$RemoveElementEditorEventCopyWithImpl(RemoveElementEditorEvent _value,
      $Res Function(RemoveElementEditorEvent) _then)
      : super(_value, (v) => _then(v as RemoveElementEditorEvent));

  @override
  RemoveElementEditorEvent get _value =>
      super._value as RemoveElementEditorEvent;

  @override
  $Res call({
    Object? elementId = freezed,
  }) {
    return _then(RemoveElementEditorEvent(
      elementId: elementId == freezed
          ? _value.elementId
          : elementId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RemoveElementEditorEvent implements RemoveElementEditorEvent {
  const _$RemoveElementEditorEvent({required this.elementId});

  @override

  /// The id of the element to be removed
  final String elementId;

  @override
  String toString() {
    return 'EditorEvent.removeElement(elementId: $elementId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RemoveElementEditorEvent &&
            const DeepCollectionEquality().equals(other.elementId, elementId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(elementId));

  @JsonKey(ignore: true)
  @override
  $RemoveElementEditorEventCopyWith<RemoveElementEditorEvent> get copyWith =>
      _$RemoveElementEditorEventCopyWithImpl<RemoveElementEditorEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addImage,
    required TResult Function(material.BuildContext context) addStaticText,
    required TResult Function(material.BuildContext context) addVariableText,
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(material.Offset localPosition) dragStart,
    required TResult Function(material.Offset localPosition) dragUpdate,
    required TResult Function() dragEnd,
    required TResult Function(String elementId, material.Offset delta) drag,
    required TResult Function(material.Offset localPosition) tapUp,
    required TResult Function() clearEditor,
    required TResult Function(String elementId) removeElement,
    required TResult Function(material.BuildContext context, String updatedText)
        textElementTextChanged,
    required TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)
        textElementTextStyleChanged,
    required TResult Function() makeLarger,
    required TResult Function() makeSmaller,
    required TResult Function() bringToFront,
    required TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)
        variableTextElementTextStyleChanged,
    required TResult Function(material.BuildContext context)
        variableTextElementFileChangedEvent,
  }) {
    return removeElement(elementId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function(material.BuildContext context)? addStaticText,
    TResult Function(material.BuildContext context)? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(material.Offset localPosition)? dragStart,
    TResult Function(material.Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(String elementId, material.Offset delta)? drag,
    TResult Function(material.Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
    TResult Function(String elementId)? removeElement,
    TResult Function(material.BuildContext context, String updatedText)?
        textElementTextChanged,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        textElementTextStyleChanged,
    TResult Function()? makeLarger,
    TResult Function()? makeSmaller,
    TResult Function()? bringToFront,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        variableTextElementTextStyleChanged,
    TResult Function(material.BuildContext context)?
        variableTextElementFileChangedEvent,
  }) {
    return removeElement?.call(elementId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function(material.BuildContext context)? addStaticText,
    TResult Function(material.BuildContext context)? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(material.Offset localPosition)? dragStart,
    TResult Function(material.Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(String elementId, material.Offset delta)? drag,
    TResult Function(material.Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
    TResult Function(String elementId)? removeElement,
    TResult Function(material.BuildContext context, String updatedText)?
        textElementTextChanged,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        textElementTextStyleChanged,
    TResult Function()? makeLarger,
    TResult Function()? makeSmaller,
    TResult Function()? bringToFront,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        variableTextElementTextStyleChanged,
    TResult Function(material.BuildContext context)?
        variableTextElementFileChangedEvent,
    required TResult orElse(),
  }) {
    if (removeElement != null) {
      return removeElement(elementId);
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
    required TResult Function(DragEditorEvent value) drag,
    required TResult Function(TapUpEditorEvent value) tapUp,
    required TResult Function(ClearEditorEvent value) clearEditor,
    required TResult Function(RemoveElementEditorEvent value) removeElement,
    required TResult Function(TextElementTextChangedEditorEvent value)
        textElementTextChanged,
    required TResult Function(TextElementTextStyleChangedEditorEvent value)
        textElementTextStyleChanged,
    required TResult Function(MakeElementLargerEditorEvent value) makeLarger,
    required TResult Function(MakeElementSmallerEditorEvent value) makeSmaller,
    required TResult Function(BringToFrontEditorEvent value) bringToFront,
    required TResult Function(
            VariableTextElementTextStyleChangedEditorEvent value)
        variableTextElementTextStyleChanged,
    required TResult Function(VariableTextElementFileChangedEvent value)
        variableTextElementFileChangedEvent,
  }) {
    return removeElement(this);
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
    TResult Function(DragEditorEvent value)? drag,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
    TResult Function(RemoveElementEditorEvent value)? removeElement,
    TResult Function(TextElementTextChangedEditorEvent value)?
        textElementTextChanged,
    TResult Function(TextElementTextStyleChangedEditorEvent value)?
        textElementTextStyleChanged,
    TResult Function(MakeElementLargerEditorEvent value)? makeLarger,
    TResult Function(MakeElementSmallerEditorEvent value)? makeSmaller,
    TResult Function(BringToFrontEditorEvent value)? bringToFront,
    TResult Function(VariableTextElementTextStyleChangedEditorEvent value)?
        variableTextElementTextStyleChanged,
    TResult Function(VariableTextElementFileChangedEvent value)?
        variableTextElementFileChangedEvent,
  }) {
    return removeElement?.call(this);
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
    TResult Function(DragEditorEvent value)? drag,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
    TResult Function(RemoveElementEditorEvent value)? removeElement,
    TResult Function(TextElementTextChangedEditorEvent value)?
        textElementTextChanged,
    TResult Function(TextElementTextStyleChangedEditorEvent value)?
        textElementTextStyleChanged,
    TResult Function(MakeElementLargerEditorEvent value)? makeLarger,
    TResult Function(MakeElementSmallerEditorEvent value)? makeSmaller,
    TResult Function(BringToFrontEditorEvent value)? bringToFront,
    TResult Function(VariableTextElementTextStyleChangedEditorEvent value)?
        variableTextElementTextStyleChanged,
    TResult Function(VariableTextElementFileChangedEvent value)?
        variableTextElementFileChangedEvent,
    required TResult orElse(),
  }) {
    if (removeElement != null) {
      return removeElement(this);
    }
    return orElse();
  }
}

abstract class RemoveElementEditorEvent implements EditorEvent {
  const factory RemoveElementEditorEvent({required String elementId}) =
      _$RemoveElementEditorEvent;

  /// The id of the element to be removed
  String get elementId;
  @JsonKey(ignore: true)
  $RemoveElementEditorEventCopyWith<RemoveElementEditorEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextElementTextChangedEditorEventCopyWith<$Res> {
  factory $TextElementTextChangedEditorEventCopyWith(
          TextElementTextChangedEditorEvent value,
          $Res Function(TextElementTextChangedEditorEvent) then) =
      _$TextElementTextChangedEditorEventCopyWithImpl<$Res>;
  $Res call({material.BuildContext context, String updatedText});
}

/// @nodoc
class _$TextElementTextChangedEditorEventCopyWithImpl<$Res>
    extends _$EditorEventCopyWithImpl<$Res>
    implements $TextElementTextChangedEditorEventCopyWith<$Res> {
  _$TextElementTextChangedEditorEventCopyWithImpl(
      TextElementTextChangedEditorEvent _value,
      $Res Function(TextElementTextChangedEditorEvent) _then)
      : super(_value, (v) => _then(v as TextElementTextChangedEditorEvent));

  @override
  TextElementTextChangedEditorEvent get _value =>
      super._value as TextElementTextChangedEditorEvent;

  @override
  $Res call({
    Object? context = freezed,
    Object? updatedText = freezed,
  }) {
    return _then(TextElementTextChangedEditorEvent(
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as material.BuildContext,
      updatedText: updatedText == freezed
          ? _value.updatedText
          : updatedText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TextElementTextChangedEditorEvent
    implements TextElementTextChangedEditorEvent {
  const _$TextElementTextChangedEditorEvent(
      {required this.context, required this.updatedText});

  @override
  final material.BuildContext context;
  @override

  /// The new value of the text in the element.
  final String updatedText;

  @override
  String toString() {
    return 'EditorEvent.textElementTextChanged(context: $context, updatedText: $updatedText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TextElementTextChangedEditorEvent &&
            const DeepCollectionEquality().equals(other.context, context) &&
            const DeepCollectionEquality()
                .equals(other.updatedText, updatedText));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(context),
      const DeepCollectionEquality().hash(updatedText));

  @JsonKey(ignore: true)
  @override
  $TextElementTextChangedEditorEventCopyWith<TextElementTextChangedEditorEvent>
      get copyWith => _$TextElementTextChangedEditorEventCopyWithImpl<
          TextElementTextChangedEditorEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addImage,
    required TResult Function(material.BuildContext context) addStaticText,
    required TResult Function(material.BuildContext context) addVariableText,
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(material.Offset localPosition) dragStart,
    required TResult Function(material.Offset localPosition) dragUpdate,
    required TResult Function() dragEnd,
    required TResult Function(String elementId, material.Offset delta) drag,
    required TResult Function(material.Offset localPosition) tapUp,
    required TResult Function() clearEditor,
    required TResult Function(String elementId) removeElement,
    required TResult Function(material.BuildContext context, String updatedText)
        textElementTextChanged,
    required TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)
        textElementTextStyleChanged,
    required TResult Function() makeLarger,
    required TResult Function() makeSmaller,
    required TResult Function() bringToFront,
    required TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)
        variableTextElementTextStyleChanged,
    required TResult Function(material.BuildContext context)
        variableTextElementFileChangedEvent,
  }) {
    return textElementTextChanged(context, updatedText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function(material.BuildContext context)? addStaticText,
    TResult Function(material.BuildContext context)? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(material.Offset localPosition)? dragStart,
    TResult Function(material.Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(String elementId, material.Offset delta)? drag,
    TResult Function(material.Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
    TResult Function(String elementId)? removeElement,
    TResult Function(material.BuildContext context, String updatedText)?
        textElementTextChanged,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        textElementTextStyleChanged,
    TResult Function()? makeLarger,
    TResult Function()? makeSmaller,
    TResult Function()? bringToFront,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        variableTextElementTextStyleChanged,
    TResult Function(material.BuildContext context)?
        variableTextElementFileChangedEvent,
  }) {
    return textElementTextChanged?.call(context, updatedText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function(material.BuildContext context)? addStaticText,
    TResult Function(material.BuildContext context)? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(material.Offset localPosition)? dragStart,
    TResult Function(material.Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(String elementId, material.Offset delta)? drag,
    TResult Function(material.Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
    TResult Function(String elementId)? removeElement,
    TResult Function(material.BuildContext context, String updatedText)?
        textElementTextChanged,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        textElementTextStyleChanged,
    TResult Function()? makeLarger,
    TResult Function()? makeSmaller,
    TResult Function()? bringToFront,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        variableTextElementTextStyleChanged,
    TResult Function(material.BuildContext context)?
        variableTextElementFileChangedEvent,
    required TResult orElse(),
  }) {
    if (textElementTextChanged != null) {
      return textElementTextChanged(context, updatedText);
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
    required TResult Function(DragEditorEvent value) drag,
    required TResult Function(TapUpEditorEvent value) tapUp,
    required TResult Function(ClearEditorEvent value) clearEditor,
    required TResult Function(RemoveElementEditorEvent value) removeElement,
    required TResult Function(TextElementTextChangedEditorEvent value)
        textElementTextChanged,
    required TResult Function(TextElementTextStyleChangedEditorEvent value)
        textElementTextStyleChanged,
    required TResult Function(MakeElementLargerEditorEvent value) makeLarger,
    required TResult Function(MakeElementSmallerEditorEvent value) makeSmaller,
    required TResult Function(BringToFrontEditorEvent value) bringToFront,
    required TResult Function(
            VariableTextElementTextStyleChangedEditorEvent value)
        variableTextElementTextStyleChanged,
    required TResult Function(VariableTextElementFileChangedEvent value)
        variableTextElementFileChangedEvent,
  }) {
    return textElementTextChanged(this);
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
    TResult Function(DragEditorEvent value)? drag,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
    TResult Function(RemoveElementEditorEvent value)? removeElement,
    TResult Function(TextElementTextChangedEditorEvent value)?
        textElementTextChanged,
    TResult Function(TextElementTextStyleChangedEditorEvent value)?
        textElementTextStyleChanged,
    TResult Function(MakeElementLargerEditorEvent value)? makeLarger,
    TResult Function(MakeElementSmallerEditorEvent value)? makeSmaller,
    TResult Function(BringToFrontEditorEvent value)? bringToFront,
    TResult Function(VariableTextElementTextStyleChangedEditorEvent value)?
        variableTextElementTextStyleChanged,
    TResult Function(VariableTextElementFileChangedEvent value)?
        variableTextElementFileChangedEvent,
  }) {
    return textElementTextChanged?.call(this);
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
    TResult Function(DragEditorEvent value)? drag,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
    TResult Function(RemoveElementEditorEvent value)? removeElement,
    TResult Function(TextElementTextChangedEditorEvent value)?
        textElementTextChanged,
    TResult Function(TextElementTextStyleChangedEditorEvent value)?
        textElementTextStyleChanged,
    TResult Function(MakeElementLargerEditorEvent value)? makeLarger,
    TResult Function(MakeElementSmallerEditorEvent value)? makeSmaller,
    TResult Function(BringToFrontEditorEvent value)? bringToFront,
    TResult Function(VariableTextElementTextStyleChangedEditorEvent value)?
        variableTextElementTextStyleChanged,
    TResult Function(VariableTextElementFileChangedEvent value)?
        variableTextElementFileChangedEvent,
    required TResult orElse(),
  }) {
    if (textElementTextChanged != null) {
      return textElementTextChanged(this);
    }
    return orElse();
  }
}

abstract class TextElementTextChangedEditorEvent implements EditorEvent {
  const factory TextElementTextChangedEditorEvent(
      {required material.BuildContext context,
      required String updatedText}) = _$TextElementTextChangedEditorEvent;

  material.BuildContext get context;

  /// The new value of the text in the element.
  String get updatedText;
  @JsonKey(ignore: true)
  $TextElementTextChangedEditorEventCopyWith<TextElementTextChangedEditorEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TextElementTextStyleChangedEditorEventCopyWith<$Res> {
  factory $TextElementTextStyleChangedEditorEventCopyWith(
          TextElementTextStyleChangedEditorEvent value,
          $Res Function(TextElementTextStyleChangedEditorEvent) then) =
      _$TextElementTextStyleChangedEditorEventCopyWithImpl<$Res>;
  $Res call(
      {material.BuildContext context, material.TextStyle updatedTextStyle});
}

/// @nodoc
class _$TextElementTextStyleChangedEditorEventCopyWithImpl<$Res>
    extends _$EditorEventCopyWithImpl<$Res>
    implements $TextElementTextStyleChangedEditorEventCopyWith<$Res> {
  _$TextElementTextStyleChangedEditorEventCopyWithImpl(
      TextElementTextStyleChangedEditorEvent _value,
      $Res Function(TextElementTextStyleChangedEditorEvent) _then)
      : super(
            _value, (v) => _then(v as TextElementTextStyleChangedEditorEvent));

  @override
  TextElementTextStyleChangedEditorEvent get _value =>
      super._value as TextElementTextStyleChangedEditorEvent;

  @override
  $Res call({
    Object? context = freezed,
    Object? updatedTextStyle = freezed,
  }) {
    return _then(TextElementTextStyleChangedEditorEvent(
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as material.BuildContext,
      updatedTextStyle: updatedTextStyle == freezed
          ? _value.updatedTextStyle
          : updatedTextStyle // ignore: cast_nullable_to_non_nullable
              as material.TextStyle,
    ));
  }
}

/// @nodoc

class _$TextElementTextStyleChangedEditorEvent
    implements TextElementTextStyleChangedEditorEvent {
  const _$TextElementTextStyleChangedEditorEvent(
      {required this.context, required this.updatedTextStyle});

  @override
  final material.BuildContext context;
  @override

  /// The new value of the text in the element.
  final material.TextStyle updatedTextStyle;

  @override
  String toString() {
    return 'EditorEvent.textElementTextStyleChanged(context: $context, updatedTextStyle: $updatedTextStyle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TextElementTextStyleChangedEditorEvent &&
            const DeepCollectionEquality().equals(other.context, context) &&
            const DeepCollectionEquality()
                .equals(other.updatedTextStyle, updatedTextStyle));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(context),
      const DeepCollectionEquality().hash(updatedTextStyle));

  @JsonKey(ignore: true)
  @override
  $TextElementTextStyleChangedEditorEventCopyWith<
          TextElementTextStyleChangedEditorEvent>
      get copyWith => _$TextElementTextStyleChangedEditorEventCopyWithImpl<
          TextElementTextStyleChangedEditorEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addImage,
    required TResult Function(material.BuildContext context) addStaticText,
    required TResult Function(material.BuildContext context) addVariableText,
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(material.Offset localPosition) dragStart,
    required TResult Function(material.Offset localPosition) dragUpdate,
    required TResult Function() dragEnd,
    required TResult Function(String elementId, material.Offset delta) drag,
    required TResult Function(material.Offset localPosition) tapUp,
    required TResult Function() clearEditor,
    required TResult Function(String elementId) removeElement,
    required TResult Function(material.BuildContext context, String updatedText)
        textElementTextChanged,
    required TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)
        textElementTextStyleChanged,
    required TResult Function() makeLarger,
    required TResult Function() makeSmaller,
    required TResult Function() bringToFront,
    required TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)
        variableTextElementTextStyleChanged,
    required TResult Function(material.BuildContext context)
        variableTextElementFileChangedEvent,
  }) {
    return textElementTextStyleChanged(context, updatedTextStyle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function(material.BuildContext context)? addStaticText,
    TResult Function(material.BuildContext context)? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(material.Offset localPosition)? dragStart,
    TResult Function(material.Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(String elementId, material.Offset delta)? drag,
    TResult Function(material.Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
    TResult Function(String elementId)? removeElement,
    TResult Function(material.BuildContext context, String updatedText)?
        textElementTextChanged,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        textElementTextStyleChanged,
    TResult Function()? makeLarger,
    TResult Function()? makeSmaller,
    TResult Function()? bringToFront,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        variableTextElementTextStyleChanged,
    TResult Function(material.BuildContext context)?
        variableTextElementFileChangedEvent,
  }) {
    return textElementTextStyleChanged?.call(context, updatedTextStyle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function(material.BuildContext context)? addStaticText,
    TResult Function(material.BuildContext context)? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(material.Offset localPosition)? dragStart,
    TResult Function(material.Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(String elementId, material.Offset delta)? drag,
    TResult Function(material.Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
    TResult Function(String elementId)? removeElement,
    TResult Function(material.BuildContext context, String updatedText)?
        textElementTextChanged,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        textElementTextStyleChanged,
    TResult Function()? makeLarger,
    TResult Function()? makeSmaller,
    TResult Function()? bringToFront,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        variableTextElementTextStyleChanged,
    TResult Function(material.BuildContext context)?
        variableTextElementFileChangedEvent,
    required TResult orElse(),
  }) {
    if (textElementTextStyleChanged != null) {
      return textElementTextStyleChanged(context, updatedTextStyle);
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
    required TResult Function(DragEditorEvent value) drag,
    required TResult Function(TapUpEditorEvent value) tapUp,
    required TResult Function(ClearEditorEvent value) clearEditor,
    required TResult Function(RemoveElementEditorEvent value) removeElement,
    required TResult Function(TextElementTextChangedEditorEvent value)
        textElementTextChanged,
    required TResult Function(TextElementTextStyleChangedEditorEvent value)
        textElementTextStyleChanged,
    required TResult Function(MakeElementLargerEditorEvent value) makeLarger,
    required TResult Function(MakeElementSmallerEditorEvent value) makeSmaller,
    required TResult Function(BringToFrontEditorEvent value) bringToFront,
    required TResult Function(
            VariableTextElementTextStyleChangedEditorEvent value)
        variableTextElementTextStyleChanged,
    required TResult Function(VariableTextElementFileChangedEvent value)
        variableTextElementFileChangedEvent,
  }) {
    return textElementTextStyleChanged(this);
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
    TResult Function(DragEditorEvent value)? drag,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
    TResult Function(RemoveElementEditorEvent value)? removeElement,
    TResult Function(TextElementTextChangedEditorEvent value)?
        textElementTextChanged,
    TResult Function(TextElementTextStyleChangedEditorEvent value)?
        textElementTextStyleChanged,
    TResult Function(MakeElementLargerEditorEvent value)? makeLarger,
    TResult Function(MakeElementSmallerEditorEvent value)? makeSmaller,
    TResult Function(BringToFrontEditorEvent value)? bringToFront,
    TResult Function(VariableTextElementTextStyleChangedEditorEvent value)?
        variableTextElementTextStyleChanged,
    TResult Function(VariableTextElementFileChangedEvent value)?
        variableTextElementFileChangedEvent,
  }) {
    return textElementTextStyleChanged?.call(this);
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
    TResult Function(DragEditorEvent value)? drag,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
    TResult Function(RemoveElementEditorEvent value)? removeElement,
    TResult Function(TextElementTextChangedEditorEvent value)?
        textElementTextChanged,
    TResult Function(TextElementTextStyleChangedEditorEvent value)?
        textElementTextStyleChanged,
    TResult Function(MakeElementLargerEditorEvent value)? makeLarger,
    TResult Function(MakeElementSmallerEditorEvent value)? makeSmaller,
    TResult Function(BringToFrontEditorEvent value)? bringToFront,
    TResult Function(VariableTextElementTextStyleChangedEditorEvent value)?
        variableTextElementTextStyleChanged,
    TResult Function(VariableTextElementFileChangedEvent value)?
        variableTextElementFileChangedEvent,
    required TResult orElse(),
  }) {
    if (textElementTextStyleChanged != null) {
      return textElementTextStyleChanged(this);
    }
    return orElse();
  }
}

abstract class TextElementTextStyleChangedEditorEvent implements EditorEvent {
  const factory TextElementTextStyleChangedEditorEvent(
          {required material.BuildContext context,
          required material.TextStyle updatedTextStyle}) =
      _$TextElementTextStyleChangedEditorEvent;

  material.BuildContext get context;

  /// The new value of the text in the element.
  material.TextStyle get updatedTextStyle;
  @JsonKey(ignore: true)
  $TextElementTextStyleChangedEditorEventCopyWith<
          TextElementTextStyleChangedEditorEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MakeElementLargerEditorEventCopyWith<$Res> {
  factory $MakeElementLargerEditorEventCopyWith(
          MakeElementLargerEditorEvent value,
          $Res Function(MakeElementLargerEditorEvent) then) =
      _$MakeElementLargerEditorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MakeElementLargerEditorEventCopyWithImpl<$Res>
    extends _$EditorEventCopyWithImpl<$Res>
    implements $MakeElementLargerEditorEventCopyWith<$Res> {
  _$MakeElementLargerEditorEventCopyWithImpl(
      MakeElementLargerEditorEvent _value,
      $Res Function(MakeElementLargerEditorEvent) _then)
      : super(_value, (v) => _then(v as MakeElementLargerEditorEvent));

  @override
  MakeElementLargerEditorEvent get _value =>
      super._value as MakeElementLargerEditorEvent;
}

/// @nodoc

class _$MakeElementLargerEditorEvent implements MakeElementLargerEditorEvent {
  const _$MakeElementLargerEditorEvent();

  @override
  String toString() {
    return 'EditorEvent.makeLarger()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MakeElementLargerEditorEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addImage,
    required TResult Function(material.BuildContext context) addStaticText,
    required TResult Function(material.BuildContext context) addVariableText,
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(material.Offset localPosition) dragStart,
    required TResult Function(material.Offset localPosition) dragUpdate,
    required TResult Function() dragEnd,
    required TResult Function(String elementId, material.Offset delta) drag,
    required TResult Function(material.Offset localPosition) tapUp,
    required TResult Function() clearEditor,
    required TResult Function(String elementId) removeElement,
    required TResult Function(material.BuildContext context, String updatedText)
        textElementTextChanged,
    required TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)
        textElementTextStyleChanged,
    required TResult Function() makeLarger,
    required TResult Function() makeSmaller,
    required TResult Function() bringToFront,
    required TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)
        variableTextElementTextStyleChanged,
    required TResult Function(material.BuildContext context)
        variableTextElementFileChangedEvent,
  }) {
    return makeLarger();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function(material.BuildContext context)? addStaticText,
    TResult Function(material.BuildContext context)? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(material.Offset localPosition)? dragStart,
    TResult Function(material.Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(String elementId, material.Offset delta)? drag,
    TResult Function(material.Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
    TResult Function(String elementId)? removeElement,
    TResult Function(material.BuildContext context, String updatedText)?
        textElementTextChanged,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        textElementTextStyleChanged,
    TResult Function()? makeLarger,
    TResult Function()? makeSmaller,
    TResult Function()? bringToFront,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        variableTextElementTextStyleChanged,
    TResult Function(material.BuildContext context)?
        variableTextElementFileChangedEvent,
  }) {
    return makeLarger?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function(material.BuildContext context)? addStaticText,
    TResult Function(material.BuildContext context)? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(material.Offset localPosition)? dragStart,
    TResult Function(material.Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(String elementId, material.Offset delta)? drag,
    TResult Function(material.Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
    TResult Function(String elementId)? removeElement,
    TResult Function(material.BuildContext context, String updatedText)?
        textElementTextChanged,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        textElementTextStyleChanged,
    TResult Function()? makeLarger,
    TResult Function()? makeSmaller,
    TResult Function()? bringToFront,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        variableTextElementTextStyleChanged,
    TResult Function(material.BuildContext context)?
        variableTextElementFileChangedEvent,
    required TResult orElse(),
  }) {
    if (makeLarger != null) {
      return makeLarger();
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
    required TResult Function(DragEditorEvent value) drag,
    required TResult Function(TapUpEditorEvent value) tapUp,
    required TResult Function(ClearEditorEvent value) clearEditor,
    required TResult Function(RemoveElementEditorEvent value) removeElement,
    required TResult Function(TextElementTextChangedEditorEvent value)
        textElementTextChanged,
    required TResult Function(TextElementTextStyleChangedEditorEvent value)
        textElementTextStyleChanged,
    required TResult Function(MakeElementLargerEditorEvent value) makeLarger,
    required TResult Function(MakeElementSmallerEditorEvent value) makeSmaller,
    required TResult Function(BringToFrontEditorEvent value) bringToFront,
    required TResult Function(
            VariableTextElementTextStyleChangedEditorEvent value)
        variableTextElementTextStyleChanged,
    required TResult Function(VariableTextElementFileChangedEvent value)
        variableTextElementFileChangedEvent,
  }) {
    return makeLarger(this);
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
    TResult Function(DragEditorEvent value)? drag,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
    TResult Function(RemoveElementEditorEvent value)? removeElement,
    TResult Function(TextElementTextChangedEditorEvent value)?
        textElementTextChanged,
    TResult Function(TextElementTextStyleChangedEditorEvent value)?
        textElementTextStyleChanged,
    TResult Function(MakeElementLargerEditorEvent value)? makeLarger,
    TResult Function(MakeElementSmallerEditorEvent value)? makeSmaller,
    TResult Function(BringToFrontEditorEvent value)? bringToFront,
    TResult Function(VariableTextElementTextStyleChangedEditorEvent value)?
        variableTextElementTextStyleChanged,
    TResult Function(VariableTextElementFileChangedEvent value)?
        variableTextElementFileChangedEvent,
  }) {
    return makeLarger?.call(this);
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
    TResult Function(DragEditorEvent value)? drag,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
    TResult Function(RemoveElementEditorEvent value)? removeElement,
    TResult Function(TextElementTextChangedEditorEvent value)?
        textElementTextChanged,
    TResult Function(TextElementTextStyleChangedEditorEvent value)?
        textElementTextStyleChanged,
    TResult Function(MakeElementLargerEditorEvent value)? makeLarger,
    TResult Function(MakeElementSmallerEditorEvent value)? makeSmaller,
    TResult Function(BringToFrontEditorEvent value)? bringToFront,
    TResult Function(VariableTextElementTextStyleChangedEditorEvent value)?
        variableTextElementTextStyleChanged,
    TResult Function(VariableTextElementFileChangedEvent value)?
        variableTextElementFileChangedEvent,
    required TResult orElse(),
  }) {
    if (makeLarger != null) {
      return makeLarger(this);
    }
    return orElse();
  }
}

abstract class MakeElementLargerEditorEvent implements EditorEvent {
  const factory MakeElementLargerEditorEvent() = _$MakeElementLargerEditorEvent;
}

/// @nodoc
abstract class $MakeElementSmallerEditorEventCopyWith<$Res> {
  factory $MakeElementSmallerEditorEventCopyWith(
          MakeElementSmallerEditorEvent value,
          $Res Function(MakeElementSmallerEditorEvent) then) =
      _$MakeElementSmallerEditorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MakeElementSmallerEditorEventCopyWithImpl<$Res>
    extends _$EditorEventCopyWithImpl<$Res>
    implements $MakeElementSmallerEditorEventCopyWith<$Res> {
  _$MakeElementSmallerEditorEventCopyWithImpl(
      MakeElementSmallerEditorEvent _value,
      $Res Function(MakeElementSmallerEditorEvent) _then)
      : super(_value, (v) => _then(v as MakeElementSmallerEditorEvent));

  @override
  MakeElementSmallerEditorEvent get _value =>
      super._value as MakeElementSmallerEditorEvent;
}

/// @nodoc

class _$MakeElementSmallerEditorEvent implements MakeElementSmallerEditorEvent {
  const _$MakeElementSmallerEditorEvent();

  @override
  String toString() {
    return 'EditorEvent.makeSmaller()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MakeElementSmallerEditorEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addImage,
    required TResult Function(material.BuildContext context) addStaticText,
    required TResult Function(material.BuildContext context) addVariableText,
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(material.Offset localPosition) dragStart,
    required TResult Function(material.Offset localPosition) dragUpdate,
    required TResult Function() dragEnd,
    required TResult Function(String elementId, material.Offset delta) drag,
    required TResult Function(material.Offset localPosition) tapUp,
    required TResult Function() clearEditor,
    required TResult Function(String elementId) removeElement,
    required TResult Function(material.BuildContext context, String updatedText)
        textElementTextChanged,
    required TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)
        textElementTextStyleChanged,
    required TResult Function() makeLarger,
    required TResult Function() makeSmaller,
    required TResult Function() bringToFront,
    required TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)
        variableTextElementTextStyleChanged,
    required TResult Function(material.BuildContext context)
        variableTextElementFileChangedEvent,
  }) {
    return makeSmaller();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function(material.BuildContext context)? addStaticText,
    TResult Function(material.BuildContext context)? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(material.Offset localPosition)? dragStart,
    TResult Function(material.Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(String elementId, material.Offset delta)? drag,
    TResult Function(material.Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
    TResult Function(String elementId)? removeElement,
    TResult Function(material.BuildContext context, String updatedText)?
        textElementTextChanged,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        textElementTextStyleChanged,
    TResult Function()? makeLarger,
    TResult Function()? makeSmaller,
    TResult Function()? bringToFront,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        variableTextElementTextStyleChanged,
    TResult Function(material.BuildContext context)?
        variableTextElementFileChangedEvent,
  }) {
    return makeSmaller?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function(material.BuildContext context)? addStaticText,
    TResult Function(material.BuildContext context)? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(material.Offset localPosition)? dragStart,
    TResult Function(material.Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(String elementId, material.Offset delta)? drag,
    TResult Function(material.Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
    TResult Function(String elementId)? removeElement,
    TResult Function(material.BuildContext context, String updatedText)?
        textElementTextChanged,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        textElementTextStyleChanged,
    TResult Function()? makeLarger,
    TResult Function()? makeSmaller,
    TResult Function()? bringToFront,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        variableTextElementTextStyleChanged,
    TResult Function(material.BuildContext context)?
        variableTextElementFileChangedEvent,
    required TResult orElse(),
  }) {
    if (makeSmaller != null) {
      return makeSmaller();
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
    required TResult Function(DragEditorEvent value) drag,
    required TResult Function(TapUpEditorEvent value) tapUp,
    required TResult Function(ClearEditorEvent value) clearEditor,
    required TResult Function(RemoveElementEditorEvent value) removeElement,
    required TResult Function(TextElementTextChangedEditorEvent value)
        textElementTextChanged,
    required TResult Function(TextElementTextStyleChangedEditorEvent value)
        textElementTextStyleChanged,
    required TResult Function(MakeElementLargerEditorEvent value) makeLarger,
    required TResult Function(MakeElementSmallerEditorEvent value) makeSmaller,
    required TResult Function(BringToFrontEditorEvent value) bringToFront,
    required TResult Function(
            VariableTextElementTextStyleChangedEditorEvent value)
        variableTextElementTextStyleChanged,
    required TResult Function(VariableTextElementFileChangedEvent value)
        variableTextElementFileChangedEvent,
  }) {
    return makeSmaller(this);
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
    TResult Function(DragEditorEvent value)? drag,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
    TResult Function(RemoveElementEditorEvent value)? removeElement,
    TResult Function(TextElementTextChangedEditorEvent value)?
        textElementTextChanged,
    TResult Function(TextElementTextStyleChangedEditorEvent value)?
        textElementTextStyleChanged,
    TResult Function(MakeElementLargerEditorEvent value)? makeLarger,
    TResult Function(MakeElementSmallerEditorEvent value)? makeSmaller,
    TResult Function(BringToFrontEditorEvent value)? bringToFront,
    TResult Function(VariableTextElementTextStyleChangedEditorEvent value)?
        variableTextElementTextStyleChanged,
    TResult Function(VariableTextElementFileChangedEvent value)?
        variableTextElementFileChangedEvent,
  }) {
    return makeSmaller?.call(this);
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
    TResult Function(DragEditorEvent value)? drag,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
    TResult Function(RemoveElementEditorEvent value)? removeElement,
    TResult Function(TextElementTextChangedEditorEvent value)?
        textElementTextChanged,
    TResult Function(TextElementTextStyleChangedEditorEvent value)?
        textElementTextStyleChanged,
    TResult Function(MakeElementLargerEditorEvent value)? makeLarger,
    TResult Function(MakeElementSmallerEditorEvent value)? makeSmaller,
    TResult Function(BringToFrontEditorEvent value)? bringToFront,
    TResult Function(VariableTextElementTextStyleChangedEditorEvent value)?
        variableTextElementTextStyleChanged,
    TResult Function(VariableTextElementFileChangedEvent value)?
        variableTextElementFileChangedEvent,
    required TResult orElse(),
  }) {
    if (makeSmaller != null) {
      return makeSmaller(this);
    }
    return orElse();
  }
}

abstract class MakeElementSmallerEditorEvent implements EditorEvent {
  const factory MakeElementSmallerEditorEvent() =
      _$MakeElementSmallerEditorEvent;
}

/// @nodoc
abstract class $BringToFrontEditorEventCopyWith<$Res> {
  factory $BringToFrontEditorEventCopyWith(BringToFrontEditorEvent value,
          $Res Function(BringToFrontEditorEvent) then) =
      _$BringToFrontEditorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BringToFrontEditorEventCopyWithImpl<$Res>
    extends _$EditorEventCopyWithImpl<$Res>
    implements $BringToFrontEditorEventCopyWith<$Res> {
  _$BringToFrontEditorEventCopyWithImpl(BringToFrontEditorEvent _value,
      $Res Function(BringToFrontEditorEvent) _then)
      : super(_value, (v) => _then(v as BringToFrontEditorEvent));

  @override
  BringToFrontEditorEvent get _value => super._value as BringToFrontEditorEvent;
}

/// @nodoc

class _$BringToFrontEditorEvent implements BringToFrontEditorEvent {
  const _$BringToFrontEditorEvent();

  @override
  String toString() {
    return 'EditorEvent.bringToFront()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is BringToFrontEditorEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addImage,
    required TResult Function(material.BuildContext context) addStaticText,
    required TResult Function(material.BuildContext context) addVariableText,
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(material.Offset localPosition) dragStart,
    required TResult Function(material.Offset localPosition) dragUpdate,
    required TResult Function() dragEnd,
    required TResult Function(String elementId, material.Offset delta) drag,
    required TResult Function(material.Offset localPosition) tapUp,
    required TResult Function() clearEditor,
    required TResult Function(String elementId) removeElement,
    required TResult Function(material.BuildContext context, String updatedText)
        textElementTextChanged,
    required TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)
        textElementTextStyleChanged,
    required TResult Function() makeLarger,
    required TResult Function() makeSmaller,
    required TResult Function() bringToFront,
    required TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)
        variableTextElementTextStyleChanged,
    required TResult Function(material.BuildContext context)
        variableTextElementFileChangedEvent,
  }) {
    return bringToFront();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function(material.BuildContext context)? addStaticText,
    TResult Function(material.BuildContext context)? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(material.Offset localPosition)? dragStart,
    TResult Function(material.Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(String elementId, material.Offset delta)? drag,
    TResult Function(material.Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
    TResult Function(String elementId)? removeElement,
    TResult Function(material.BuildContext context, String updatedText)?
        textElementTextChanged,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        textElementTextStyleChanged,
    TResult Function()? makeLarger,
    TResult Function()? makeSmaller,
    TResult Function()? bringToFront,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        variableTextElementTextStyleChanged,
    TResult Function(material.BuildContext context)?
        variableTextElementFileChangedEvent,
  }) {
    return bringToFront?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function(material.BuildContext context)? addStaticText,
    TResult Function(material.BuildContext context)? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(material.Offset localPosition)? dragStart,
    TResult Function(material.Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(String elementId, material.Offset delta)? drag,
    TResult Function(material.Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
    TResult Function(String elementId)? removeElement,
    TResult Function(material.BuildContext context, String updatedText)?
        textElementTextChanged,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        textElementTextStyleChanged,
    TResult Function()? makeLarger,
    TResult Function()? makeSmaller,
    TResult Function()? bringToFront,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        variableTextElementTextStyleChanged,
    TResult Function(material.BuildContext context)?
        variableTextElementFileChangedEvent,
    required TResult orElse(),
  }) {
    if (bringToFront != null) {
      return bringToFront();
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
    required TResult Function(DragEditorEvent value) drag,
    required TResult Function(TapUpEditorEvent value) tapUp,
    required TResult Function(ClearEditorEvent value) clearEditor,
    required TResult Function(RemoveElementEditorEvent value) removeElement,
    required TResult Function(TextElementTextChangedEditorEvent value)
        textElementTextChanged,
    required TResult Function(TextElementTextStyleChangedEditorEvent value)
        textElementTextStyleChanged,
    required TResult Function(MakeElementLargerEditorEvent value) makeLarger,
    required TResult Function(MakeElementSmallerEditorEvent value) makeSmaller,
    required TResult Function(BringToFrontEditorEvent value) bringToFront,
    required TResult Function(
            VariableTextElementTextStyleChangedEditorEvent value)
        variableTextElementTextStyleChanged,
    required TResult Function(VariableTextElementFileChangedEvent value)
        variableTextElementFileChangedEvent,
  }) {
    return bringToFront(this);
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
    TResult Function(DragEditorEvent value)? drag,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
    TResult Function(RemoveElementEditorEvent value)? removeElement,
    TResult Function(TextElementTextChangedEditorEvent value)?
        textElementTextChanged,
    TResult Function(TextElementTextStyleChangedEditorEvent value)?
        textElementTextStyleChanged,
    TResult Function(MakeElementLargerEditorEvent value)? makeLarger,
    TResult Function(MakeElementSmallerEditorEvent value)? makeSmaller,
    TResult Function(BringToFrontEditorEvent value)? bringToFront,
    TResult Function(VariableTextElementTextStyleChangedEditorEvent value)?
        variableTextElementTextStyleChanged,
    TResult Function(VariableTextElementFileChangedEvent value)?
        variableTextElementFileChangedEvent,
  }) {
    return bringToFront?.call(this);
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
    TResult Function(DragEditorEvent value)? drag,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
    TResult Function(RemoveElementEditorEvent value)? removeElement,
    TResult Function(TextElementTextChangedEditorEvent value)?
        textElementTextChanged,
    TResult Function(TextElementTextStyleChangedEditorEvent value)?
        textElementTextStyleChanged,
    TResult Function(MakeElementLargerEditorEvent value)? makeLarger,
    TResult Function(MakeElementSmallerEditorEvent value)? makeSmaller,
    TResult Function(BringToFrontEditorEvent value)? bringToFront,
    TResult Function(VariableTextElementTextStyleChangedEditorEvent value)?
        variableTextElementTextStyleChanged,
    TResult Function(VariableTextElementFileChangedEvent value)?
        variableTextElementFileChangedEvent,
    required TResult orElse(),
  }) {
    if (bringToFront != null) {
      return bringToFront(this);
    }
    return orElse();
  }
}

abstract class BringToFrontEditorEvent implements EditorEvent {
  const factory BringToFrontEditorEvent() = _$BringToFrontEditorEvent;
}

/// @nodoc
abstract class $VariableTextElementTextStyleChangedEditorEventCopyWith<$Res> {
  factory $VariableTextElementTextStyleChangedEditorEventCopyWith(
          VariableTextElementTextStyleChangedEditorEvent value,
          $Res Function(VariableTextElementTextStyleChangedEditorEvent) then) =
      _$VariableTextElementTextStyleChangedEditorEventCopyWithImpl<$Res>;
  $Res call(
      {material.BuildContext context, material.TextStyle updatedTextStyle});
}

/// @nodoc
class _$VariableTextElementTextStyleChangedEditorEventCopyWithImpl<$Res>
    extends _$EditorEventCopyWithImpl<$Res>
    implements $VariableTextElementTextStyleChangedEditorEventCopyWith<$Res> {
  _$VariableTextElementTextStyleChangedEditorEventCopyWithImpl(
      VariableTextElementTextStyleChangedEditorEvent _value,
      $Res Function(VariableTextElementTextStyleChangedEditorEvent) _then)
      : super(_value,
            (v) => _then(v as VariableTextElementTextStyleChangedEditorEvent));

  @override
  VariableTextElementTextStyleChangedEditorEvent get _value =>
      super._value as VariableTextElementTextStyleChangedEditorEvent;

  @override
  $Res call({
    Object? context = freezed,
    Object? updatedTextStyle = freezed,
  }) {
    return _then(VariableTextElementTextStyleChangedEditorEvent(
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as material.BuildContext,
      updatedTextStyle: updatedTextStyle == freezed
          ? _value.updatedTextStyle
          : updatedTextStyle // ignore: cast_nullable_to_non_nullable
              as material.TextStyle,
    ));
  }
}

/// @nodoc

class _$VariableTextElementTextStyleChangedEditorEvent
    implements VariableTextElementTextStyleChangedEditorEvent {
  const _$VariableTextElementTextStyleChangedEditorEvent(
      {required this.context, required this.updatedTextStyle});

  @override
  final material.BuildContext context;
  @override

  /// The new value of the text in the element.
  final material.TextStyle updatedTextStyle;

  @override
  String toString() {
    return 'EditorEvent.variableTextElementTextStyleChanged(context: $context, updatedTextStyle: $updatedTextStyle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VariableTextElementTextStyleChangedEditorEvent &&
            const DeepCollectionEquality().equals(other.context, context) &&
            const DeepCollectionEquality()
                .equals(other.updatedTextStyle, updatedTextStyle));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(context),
      const DeepCollectionEquality().hash(updatedTextStyle));

  @JsonKey(ignore: true)
  @override
  $VariableTextElementTextStyleChangedEditorEventCopyWith<
          VariableTextElementTextStyleChangedEditorEvent>
      get copyWith =>
          _$VariableTextElementTextStyleChangedEditorEventCopyWithImpl<
              VariableTextElementTextStyleChangedEditorEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addImage,
    required TResult Function(material.BuildContext context) addStaticText,
    required TResult Function(material.BuildContext context) addVariableText,
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(material.Offset localPosition) dragStart,
    required TResult Function(material.Offset localPosition) dragUpdate,
    required TResult Function() dragEnd,
    required TResult Function(String elementId, material.Offset delta) drag,
    required TResult Function(material.Offset localPosition) tapUp,
    required TResult Function() clearEditor,
    required TResult Function(String elementId) removeElement,
    required TResult Function(material.BuildContext context, String updatedText)
        textElementTextChanged,
    required TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)
        textElementTextStyleChanged,
    required TResult Function() makeLarger,
    required TResult Function() makeSmaller,
    required TResult Function() bringToFront,
    required TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)
        variableTextElementTextStyleChanged,
    required TResult Function(material.BuildContext context)
        variableTextElementFileChangedEvent,
  }) {
    return variableTextElementTextStyleChanged(context, updatedTextStyle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function(material.BuildContext context)? addStaticText,
    TResult Function(material.BuildContext context)? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(material.Offset localPosition)? dragStart,
    TResult Function(material.Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(String elementId, material.Offset delta)? drag,
    TResult Function(material.Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
    TResult Function(String elementId)? removeElement,
    TResult Function(material.BuildContext context, String updatedText)?
        textElementTextChanged,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        textElementTextStyleChanged,
    TResult Function()? makeLarger,
    TResult Function()? makeSmaller,
    TResult Function()? bringToFront,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        variableTextElementTextStyleChanged,
    TResult Function(material.BuildContext context)?
        variableTextElementFileChangedEvent,
  }) {
    return variableTextElementTextStyleChanged?.call(context, updatedTextStyle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function(material.BuildContext context)? addStaticText,
    TResult Function(material.BuildContext context)? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(material.Offset localPosition)? dragStart,
    TResult Function(material.Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(String elementId, material.Offset delta)? drag,
    TResult Function(material.Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
    TResult Function(String elementId)? removeElement,
    TResult Function(material.BuildContext context, String updatedText)?
        textElementTextChanged,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        textElementTextStyleChanged,
    TResult Function()? makeLarger,
    TResult Function()? makeSmaller,
    TResult Function()? bringToFront,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        variableTextElementTextStyleChanged,
    TResult Function(material.BuildContext context)?
        variableTextElementFileChangedEvent,
    required TResult orElse(),
  }) {
    if (variableTextElementTextStyleChanged != null) {
      return variableTextElementTextStyleChanged(context, updatedTextStyle);
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
    required TResult Function(DragEditorEvent value) drag,
    required TResult Function(TapUpEditorEvent value) tapUp,
    required TResult Function(ClearEditorEvent value) clearEditor,
    required TResult Function(RemoveElementEditorEvent value) removeElement,
    required TResult Function(TextElementTextChangedEditorEvent value)
        textElementTextChanged,
    required TResult Function(TextElementTextStyleChangedEditorEvent value)
        textElementTextStyleChanged,
    required TResult Function(MakeElementLargerEditorEvent value) makeLarger,
    required TResult Function(MakeElementSmallerEditorEvent value) makeSmaller,
    required TResult Function(BringToFrontEditorEvent value) bringToFront,
    required TResult Function(
            VariableTextElementTextStyleChangedEditorEvent value)
        variableTextElementTextStyleChanged,
    required TResult Function(VariableTextElementFileChangedEvent value)
        variableTextElementFileChangedEvent,
  }) {
    return variableTextElementTextStyleChanged(this);
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
    TResult Function(DragEditorEvent value)? drag,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
    TResult Function(RemoveElementEditorEvent value)? removeElement,
    TResult Function(TextElementTextChangedEditorEvent value)?
        textElementTextChanged,
    TResult Function(TextElementTextStyleChangedEditorEvent value)?
        textElementTextStyleChanged,
    TResult Function(MakeElementLargerEditorEvent value)? makeLarger,
    TResult Function(MakeElementSmallerEditorEvent value)? makeSmaller,
    TResult Function(BringToFrontEditorEvent value)? bringToFront,
    TResult Function(VariableTextElementTextStyleChangedEditorEvent value)?
        variableTextElementTextStyleChanged,
    TResult Function(VariableTextElementFileChangedEvent value)?
        variableTextElementFileChangedEvent,
  }) {
    return variableTextElementTextStyleChanged?.call(this);
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
    TResult Function(DragEditorEvent value)? drag,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
    TResult Function(RemoveElementEditorEvent value)? removeElement,
    TResult Function(TextElementTextChangedEditorEvent value)?
        textElementTextChanged,
    TResult Function(TextElementTextStyleChangedEditorEvent value)?
        textElementTextStyleChanged,
    TResult Function(MakeElementLargerEditorEvent value)? makeLarger,
    TResult Function(MakeElementSmallerEditorEvent value)? makeSmaller,
    TResult Function(BringToFrontEditorEvent value)? bringToFront,
    TResult Function(VariableTextElementTextStyleChangedEditorEvent value)?
        variableTextElementTextStyleChanged,
    TResult Function(VariableTextElementFileChangedEvent value)?
        variableTextElementFileChangedEvent,
    required TResult orElse(),
  }) {
    if (variableTextElementTextStyleChanged != null) {
      return variableTextElementTextStyleChanged(this);
    }
    return orElse();
  }
}

abstract class VariableTextElementTextStyleChangedEditorEvent
    implements EditorEvent {
  const factory VariableTextElementTextStyleChangedEditorEvent(
          {required material.BuildContext context,
          required material.TextStyle updatedTextStyle}) =
      _$VariableTextElementTextStyleChangedEditorEvent;

  material.BuildContext get context;

  /// The new value of the text in the element.
  material.TextStyle get updatedTextStyle;
  @JsonKey(ignore: true)
  $VariableTextElementTextStyleChangedEditorEventCopyWith<
          VariableTextElementTextStyleChangedEditorEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VariableTextElementFileChangedEventCopyWith<$Res> {
  factory $VariableTextElementFileChangedEventCopyWith(
          VariableTextElementFileChangedEvent value,
          $Res Function(VariableTextElementFileChangedEvent) then) =
      _$VariableTextElementFileChangedEventCopyWithImpl<$Res>;
  $Res call({material.BuildContext context});
}

/// @nodoc
class _$VariableTextElementFileChangedEventCopyWithImpl<$Res>
    extends _$EditorEventCopyWithImpl<$Res>
    implements $VariableTextElementFileChangedEventCopyWith<$Res> {
  _$VariableTextElementFileChangedEventCopyWithImpl(
      VariableTextElementFileChangedEvent _value,
      $Res Function(VariableTextElementFileChangedEvent) _then)
      : super(_value, (v) => _then(v as VariableTextElementFileChangedEvent));

  @override
  VariableTextElementFileChangedEvent get _value =>
      super._value as VariableTextElementFileChangedEvent;

  @override
  $Res call({
    Object? context = freezed,
  }) {
    return _then(VariableTextElementFileChangedEvent(
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as material.BuildContext,
    ));
  }
}

/// @nodoc

class _$VariableTextElementFileChangedEvent
    implements VariableTextElementFileChangedEvent {
  const _$VariableTextElementFileChangedEvent({required this.context});

  @override
  final material.BuildContext context;

  @override
  String toString() {
    return 'EditorEvent.variableTextElementFileChangedEvent(context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is VariableTextElementFileChangedEvent &&
            const DeepCollectionEquality().equals(other.context, context));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(context));

  @JsonKey(ignore: true)
  @override
  $VariableTextElementFileChangedEventCopyWith<
          VariableTextElementFileChangedEvent>
      get copyWith => _$VariableTextElementFileChangedEventCopyWithImpl<
          VariableTextElementFileChangedEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() addImage,
    required TResult Function(material.BuildContext context) addStaticText,
    required TResult Function(material.BuildContext context) addVariableText,
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(material.Offset localPosition) dragStart,
    required TResult Function(material.Offset localPosition) dragUpdate,
    required TResult Function() dragEnd,
    required TResult Function(String elementId, material.Offset delta) drag,
    required TResult Function(material.Offset localPosition) tapUp,
    required TResult Function() clearEditor,
    required TResult Function(String elementId) removeElement,
    required TResult Function(material.BuildContext context, String updatedText)
        textElementTextChanged,
    required TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)
        textElementTextStyleChanged,
    required TResult Function() makeLarger,
    required TResult Function() makeSmaller,
    required TResult Function() bringToFront,
    required TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)
        variableTextElementTextStyleChanged,
    required TResult Function(material.BuildContext context)
        variableTextElementFileChangedEvent,
  }) {
    return variableTextElementFileChangedEvent(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function(material.BuildContext context)? addStaticText,
    TResult Function(material.BuildContext context)? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(material.Offset localPosition)? dragStart,
    TResult Function(material.Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(String elementId, material.Offset delta)? drag,
    TResult Function(material.Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
    TResult Function(String elementId)? removeElement,
    TResult Function(material.BuildContext context, String updatedText)?
        textElementTextChanged,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        textElementTextStyleChanged,
    TResult Function()? makeLarger,
    TResult Function()? makeSmaller,
    TResult Function()? bringToFront,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        variableTextElementTextStyleChanged,
    TResult Function(material.BuildContext context)?
        variableTextElementFileChangedEvent,
  }) {
    return variableTextElementFileChangedEvent?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? addImage,
    TResult Function(material.BuildContext context)? addStaticText,
    TResult Function(material.BuildContext context)? addVariableText,
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(material.Offset localPosition)? dragStart,
    TResult Function(material.Offset localPosition)? dragUpdate,
    TResult Function()? dragEnd,
    TResult Function(String elementId, material.Offset delta)? drag,
    TResult Function(material.Offset localPosition)? tapUp,
    TResult Function()? clearEditor,
    TResult Function(String elementId)? removeElement,
    TResult Function(material.BuildContext context, String updatedText)?
        textElementTextChanged,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        textElementTextStyleChanged,
    TResult Function()? makeLarger,
    TResult Function()? makeSmaller,
    TResult Function()? bringToFront,
    TResult Function(
            material.BuildContext context, material.TextStyle updatedTextStyle)?
        variableTextElementTextStyleChanged,
    TResult Function(material.BuildContext context)?
        variableTextElementFileChangedEvent,
    required TResult orElse(),
  }) {
    if (variableTextElementFileChangedEvent != null) {
      return variableTextElementFileChangedEvent(context);
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
    required TResult Function(DragEditorEvent value) drag,
    required TResult Function(TapUpEditorEvent value) tapUp,
    required TResult Function(ClearEditorEvent value) clearEditor,
    required TResult Function(RemoveElementEditorEvent value) removeElement,
    required TResult Function(TextElementTextChangedEditorEvent value)
        textElementTextChanged,
    required TResult Function(TextElementTextStyleChangedEditorEvent value)
        textElementTextStyleChanged,
    required TResult Function(MakeElementLargerEditorEvent value) makeLarger,
    required TResult Function(MakeElementSmallerEditorEvent value) makeSmaller,
    required TResult Function(BringToFrontEditorEvent value) bringToFront,
    required TResult Function(
            VariableTextElementTextStyleChangedEditorEvent value)
        variableTextElementTextStyleChanged,
    required TResult Function(VariableTextElementFileChangedEvent value)
        variableTextElementFileChangedEvent,
  }) {
    return variableTextElementFileChangedEvent(this);
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
    TResult Function(DragEditorEvent value)? drag,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
    TResult Function(RemoveElementEditorEvent value)? removeElement,
    TResult Function(TextElementTextChangedEditorEvent value)?
        textElementTextChanged,
    TResult Function(TextElementTextStyleChangedEditorEvent value)?
        textElementTextStyleChanged,
    TResult Function(MakeElementLargerEditorEvent value)? makeLarger,
    TResult Function(MakeElementSmallerEditorEvent value)? makeSmaller,
    TResult Function(BringToFrontEditorEvent value)? bringToFront,
    TResult Function(VariableTextElementTextStyleChangedEditorEvent value)?
        variableTextElementTextStyleChanged,
    TResult Function(VariableTextElementFileChangedEvent value)?
        variableTextElementFileChangedEvent,
  }) {
    return variableTextElementFileChangedEvent?.call(this);
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
    TResult Function(DragEditorEvent value)? drag,
    TResult Function(TapUpEditorEvent value)? tapUp,
    TResult Function(ClearEditorEvent value)? clearEditor,
    TResult Function(RemoveElementEditorEvent value)? removeElement,
    TResult Function(TextElementTextChangedEditorEvent value)?
        textElementTextChanged,
    TResult Function(TextElementTextStyleChangedEditorEvent value)?
        textElementTextStyleChanged,
    TResult Function(MakeElementLargerEditorEvent value)? makeLarger,
    TResult Function(MakeElementSmallerEditorEvent value)? makeSmaller,
    TResult Function(BringToFrontEditorEvent value)? bringToFront,
    TResult Function(VariableTextElementTextStyleChangedEditorEvent value)?
        variableTextElementTextStyleChanged,
    TResult Function(VariableTextElementFileChangedEvent value)?
        variableTextElementFileChangedEvent,
    required TResult orElse(),
  }) {
    if (variableTextElementFileChangedEvent != null) {
      return variableTextElementFileChangedEvent(this);
    }
    return orElse();
  }
}

abstract class VariableTextElementFileChangedEvent implements EditorEvent {
  const factory VariableTextElementFileChangedEvent(
          {required material.BuildContext context}) =
      _$VariableTextElementFileChangedEvent;

  material.BuildContext get context;
  @JsonKey(ignore: true)
  $VariableTextElementFileChangedEventCopyWith<
          VariableTextElementFileChangedEvent>
      get copyWith => throw _privateConstructorUsedError;
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
