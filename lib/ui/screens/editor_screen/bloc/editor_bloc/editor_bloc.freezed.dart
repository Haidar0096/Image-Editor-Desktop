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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addStaticText,
    required TResult Function(String updatedText) staticTextChanged,
    required TResult Function(TextStyle? updatedTextStyle) staticTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) staticTextAlignChanged,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addVariableText,
    required TResult Function() variableTextFileChanged,
    required TResult Function(TextStyle? updatedTextStyle) variableTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) variableTextAlignChanged,
    required TResult Function() addImage,
    required TResult Function(Offset localPosition) canvasDragStart,
    required TResult Function(Offset delta) canvasDragUpdate,
    required TResult Function() canvasDragEnd,
    required TResult Function(Element draggedElement, Offset localPosition) elementDragStart,
    required TResult Function(Offset delta) elementDragUpdate,
    required TResult Function() elementDragEnd,
    required TResult Function() canvasTap,
    required TResult Function(Element element) elementTap,
    required TResult Function() removeSelectedElement,
    required TResult Function() deselectElement,
    required TResult Function() bringSelectedElementToFront,
    required TResult Function(ResizeDirection resizeDirection, Offset delta) resizeUpdate,
    required TResult Function() resizeEnd,
    required TResult Function(Size updatedSize) selectedElementSizeChanged,
    required TResult Function(Offset updatedPosition) selectedElementPositionChanged,
    required TResult Function(bool isEditingTextElement) textEditingModeChanged,
    required TResult Function() clearEditor,
    required TResult Function(Option<GlobalKey<State<StatefulWidget>>> key) setCanvasKey,
    required TResult Function(Color color) changeCanvasBackgroundColor,
    required TResult Function() changeCanvasBackgroundImage,
    required TResult Function() removeCanvasBackgroundImage,
    required TResult Function() duplicateSelectedElement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Undo value) undo,
    required TResult Function(Redo value) redo,
    required TResult Function(AddStaticText value) addStaticText,
    required TResult Function(StaticTextChanged value) staticTextChanged,
    required TResult Function(StaticTextStyleChanged value) staticTextStyleChanged,
    required TResult Function(StaticTextAlignChanged value) staticTextAlignChanged,
    required TResult Function(AddVariableText value) addVariableText,
    required TResult Function(VariableTextFileChanged value) variableTextFileChanged,
    required TResult Function(VariableTextStyleChanged value) variableTextStyleChanged,
    required TResult Function(VariableTextAlignChanged value) variableTextAlignChanged,
    required TResult Function(AddImage value) addImage,
    required TResult Function(CanvasDragStart value) canvasDragStart,
    required TResult Function(CanvasDragUpdate value) canvasDragUpdate,
    required TResult Function(CanvasDragEnd value) canvasDragEnd,
    required TResult Function(ElementDragStart value) elementDragStart,
    required TResult Function(ElementDragUpdate value) elementDragUpdate,
    required TResult Function(ElementDragEnd value) elementDragEnd,
    required TResult Function(CanvasTap value) canvasTap,
    required TResult Function(ElementTap value) elementTap,
    required TResult Function(RemoveSelectedElement value) removeSelectedElement,
    required TResult Function(DeselectElement value) deselectElement,
    required TResult Function(BringSelectedElementToFront value) bringSelectedElementToFront,
    required TResult Function(ResizeUpdate value) resizeUpdate,
    required TResult Function(ResizeEnd value) resizeEnd,
    required TResult Function(SelectedElementSizeChanged value) selectedElementSizeChanged,
    required TResult Function(SelectedElementPositionChanged value) selectedElementPositionChanged,
    required TResult Function(TextEditingModeChanged value) textEditingModeChanged,
    required TResult Function(ClearEditor value) clearEditor,
    required TResult Function(SetCanvasKey value) setCanvasKey,
    required TResult Function(ChangeCanvasBackgroundColor value) changeCanvasBackgroundColor,
    required TResult Function(ChangeCanvasBackgroundImage value) changeCanvasBackgroundImage,
    required TResult Function(RemoveCanvasBackgroundImage value) removeCanvasBackgroundImage,
    required TResult Function(DuplicateSelectedElement value) duplicateSelectedElement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditorEventCopyWith<$Res> {
  factory $EditorEventCopyWith(EditorEvent value, $Res Function(EditorEvent) then) = _$EditorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EditorEventCopyWithImpl<$Res> implements $EditorEventCopyWith<$Res> {
  _$EditorEventCopyWithImpl(this._value, this._then);

  final EditorEvent _value;
  // ignore: unused_field
  final $Res Function(EditorEvent) _then;
}

/// @nodoc
abstract class _$$UndoCopyWith<$Res> {
  factory _$$UndoCopyWith(_$Undo value, $Res Function(_$Undo) then) = __$$UndoCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UndoCopyWithImpl<$Res> extends _$EditorEventCopyWithImpl<$Res> implements _$$UndoCopyWith<$Res> {
  __$$UndoCopyWithImpl(_$Undo _value, $Res Function(_$Undo) _then) : super(_value, (v) => _then(v as _$Undo));

  @override
  _$Undo get _value => super._value as _$Undo;
}

/// @nodoc

class _$Undo implements Undo {
  const _$Undo();

  @override
  String toString() {
    return 'EditorEvent.undo()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$Undo);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addStaticText,
    required TResult Function(String updatedText) staticTextChanged,
    required TResult Function(TextStyle? updatedTextStyle) staticTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) staticTextAlignChanged,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addVariableText,
    required TResult Function() variableTextFileChanged,
    required TResult Function(TextStyle? updatedTextStyle) variableTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) variableTextAlignChanged,
    required TResult Function() addImage,
    required TResult Function(Offset localPosition) canvasDragStart,
    required TResult Function(Offset delta) canvasDragUpdate,
    required TResult Function() canvasDragEnd,
    required TResult Function(Element draggedElement, Offset localPosition) elementDragStart,
    required TResult Function(Offset delta) elementDragUpdate,
    required TResult Function() elementDragEnd,
    required TResult Function() canvasTap,
    required TResult Function(Element element) elementTap,
    required TResult Function() removeSelectedElement,
    required TResult Function() deselectElement,
    required TResult Function() bringSelectedElementToFront,
    required TResult Function(ResizeDirection resizeDirection, Offset delta) resizeUpdate,
    required TResult Function() resizeEnd,
    required TResult Function(Size updatedSize) selectedElementSizeChanged,
    required TResult Function(Offset updatedPosition) selectedElementPositionChanged,
    required TResult Function(bool isEditingTextElement) textEditingModeChanged,
    required TResult Function() clearEditor,
    required TResult Function(Option<GlobalKey<State<StatefulWidget>>> key) setCanvasKey,
    required TResult Function(Color color) changeCanvasBackgroundColor,
    required TResult Function() changeCanvasBackgroundImage,
    required TResult Function() removeCanvasBackgroundImage,
    required TResult Function() duplicateSelectedElement,
  }) {
    return undo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
  }) {
    return undo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
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
    required TResult Function(Undo value) undo,
    required TResult Function(Redo value) redo,
    required TResult Function(AddStaticText value) addStaticText,
    required TResult Function(StaticTextChanged value) staticTextChanged,
    required TResult Function(StaticTextStyleChanged value) staticTextStyleChanged,
    required TResult Function(StaticTextAlignChanged value) staticTextAlignChanged,
    required TResult Function(AddVariableText value) addVariableText,
    required TResult Function(VariableTextFileChanged value) variableTextFileChanged,
    required TResult Function(VariableTextStyleChanged value) variableTextStyleChanged,
    required TResult Function(VariableTextAlignChanged value) variableTextAlignChanged,
    required TResult Function(AddImage value) addImage,
    required TResult Function(CanvasDragStart value) canvasDragStart,
    required TResult Function(CanvasDragUpdate value) canvasDragUpdate,
    required TResult Function(CanvasDragEnd value) canvasDragEnd,
    required TResult Function(ElementDragStart value) elementDragStart,
    required TResult Function(ElementDragUpdate value) elementDragUpdate,
    required TResult Function(ElementDragEnd value) elementDragEnd,
    required TResult Function(CanvasTap value) canvasTap,
    required TResult Function(ElementTap value) elementTap,
    required TResult Function(RemoveSelectedElement value) removeSelectedElement,
    required TResult Function(DeselectElement value) deselectElement,
    required TResult Function(BringSelectedElementToFront value) bringSelectedElementToFront,
    required TResult Function(ResizeUpdate value) resizeUpdate,
    required TResult Function(ResizeEnd value) resizeEnd,
    required TResult Function(SelectedElementSizeChanged value) selectedElementSizeChanged,
    required TResult Function(SelectedElementPositionChanged value) selectedElementPositionChanged,
    required TResult Function(TextEditingModeChanged value) textEditingModeChanged,
    required TResult Function(ClearEditor value) clearEditor,
    required TResult Function(SetCanvasKey value) setCanvasKey,
    required TResult Function(ChangeCanvasBackgroundColor value) changeCanvasBackgroundColor,
    required TResult Function(ChangeCanvasBackgroundImage value) changeCanvasBackgroundImage,
    required TResult Function(RemoveCanvasBackgroundImage value) removeCanvasBackgroundImage,
    required TResult Function(DuplicateSelectedElement value) duplicateSelectedElement,
  }) {
    return undo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
  }) {
    return undo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (undo != null) {
      return undo(this);
    }
    return orElse();
  }
}

abstract class Undo implements EditorEvent {
  const factory Undo() = _$Undo;
}

/// @nodoc
abstract class _$$RedoCopyWith<$Res> {
  factory _$$RedoCopyWith(_$Redo value, $Res Function(_$Redo) then) = __$$RedoCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RedoCopyWithImpl<$Res> extends _$EditorEventCopyWithImpl<$Res> implements _$$RedoCopyWith<$Res> {
  __$$RedoCopyWithImpl(_$Redo _value, $Res Function(_$Redo) _then) : super(_value, (v) => _then(v as _$Redo));

  @override
  _$Redo get _value => super._value as _$Redo;
}

/// @nodoc

class _$Redo implements Redo {
  const _$Redo();

  @override
  String toString() {
    return 'EditorEvent.redo()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$Redo);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addStaticText,
    required TResult Function(String updatedText) staticTextChanged,
    required TResult Function(TextStyle? updatedTextStyle) staticTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) staticTextAlignChanged,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addVariableText,
    required TResult Function() variableTextFileChanged,
    required TResult Function(TextStyle? updatedTextStyle) variableTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) variableTextAlignChanged,
    required TResult Function() addImage,
    required TResult Function(Offset localPosition) canvasDragStart,
    required TResult Function(Offset delta) canvasDragUpdate,
    required TResult Function() canvasDragEnd,
    required TResult Function(Element draggedElement, Offset localPosition) elementDragStart,
    required TResult Function(Offset delta) elementDragUpdate,
    required TResult Function() elementDragEnd,
    required TResult Function() canvasTap,
    required TResult Function(Element element) elementTap,
    required TResult Function() removeSelectedElement,
    required TResult Function() deselectElement,
    required TResult Function() bringSelectedElementToFront,
    required TResult Function(ResizeDirection resizeDirection, Offset delta) resizeUpdate,
    required TResult Function() resizeEnd,
    required TResult Function(Size updatedSize) selectedElementSizeChanged,
    required TResult Function(Offset updatedPosition) selectedElementPositionChanged,
    required TResult Function(bool isEditingTextElement) textEditingModeChanged,
    required TResult Function() clearEditor,
    required TResult Function(Option<GlobalKey<State<StatefulWidget>>> key) setCanvasKey,
    required TResult Function(Color color) changeCanvasBackgroundColor,
    required TResult Function() changeCanvasBackgroundImage,
    required TResult Function() removeCanvasBackgroundImage,
    required TResult Function() duplicateSelectedElement,
  }) {
    return redo();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
  }) {
    return redo?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
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
    required TResult Function(Undo value) undo,
    required TResult Function(Redo value) redo,
    required TResult Function(AddStaticText value) addStaticText,
    required TResult Function(StaticTextChanged value) staticTextChanged,
    required TResult Function(StaticTextStyleChanged value) staticTextStyleChanged,
    required TResult Function(StaticTextAlignChanged value) staticTextAlignChanged,
    required TResult Function(AddVariableText value) addVariableText,
    required TResult Function(VariableTextFileChanged value) variableTextFileChanged,
    required TResult Function(VariableTextStyleChanged value) variableTextStyleChanged,
    required TResult Function(VariableTextAlignChanged value) variableTextAlignChanged,
    required TResult Function(AddImage value) addImage,
    required TResult Function(CanvasDragStart value) canvasDragStart,
    required TResult Function(CanvasDragUpdate value) canvasDragUpdate,
    required TResult Function(CanvasDragEnd value) canvasDragEnd,
    required TResult Function(ElementDragStart value) elementDragStart,
    required TResult Function(ElementDragUpdate value) elementDragUpdate,
    required TResult Function(ElementDragEnd value) elementDragEnd,
    required TResult Function(CanvasTap value) canvasTap,
    required TResult Function(ElementTap value) elementTap,
    required TResult Function(RemoveSelectedElement value) removeSelectedElement,
    required TResult Function(DeselectElement value) deselectElement,
    required TResult Function(BringSelectedElementToFront value) bringSelectedElementToFront,
    required TResult Function(ResizeUpdate value) resizeUpdate,
    required TResult Function(ResizeEnd value) resizeEnd,
    required TResult Function(SelectedElementSizeChanged value) selectedElementSizeChanged,
    required TResult Function(SelectedElementPositionChanged value) selectedElementPositionChanged,
    required TResult Function(TextEditingModeChanged value) textEditingModeChanged,
    required TResult Function(ClearEditor value) clearEditor,
    required TResult Function(SetCanvasKey value) setCanvasKey,
    required TResult Function(ChangeCanvasBackgroundColor value) changeCanvasBackgroundColor,
    required TResult Function(ChangeCanvasBackgroundImage value) changeCanvasBackgroundImage,
    required TResult Function(RemoveCanvasBackgroundImage value) removeCanvasBackgroundImage,
    required TResult Function(DuplicateSelectedElement value) duplicateSelectedElement,
  }) {
    return redo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
  }) {
    return redo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (redo != null) {
      return redo(this);
    }
    return orElse();
  }
}

abstract class Redo implements EditorEvent {
  const factory Redo() = _$Redo;
}

/// @nodoc
abstract class _$$AddStaticTextCopyWith<$Res> {
  factory _$$AddStaticTextCopyWith(_$AddStaticText value, $Res Function(_$AddStaticText) then) =
      __$$AddStaticTextCopyWithImpl<$Res>;
  $Res call({String initialText, TextDirection textDirection, double minWidth, double maxWidth});
}

/// @nodoc
class __$$AddStaticTextCopyWithImpl<$Res> extends _$EditorEventCopyWithImpl<$Res>
    implements _$$AddStaticTextCopyWith<$Res> {
  __$$AddStaticTextCopyWithImpl(_$AddStaticText _value, $Res Function(_$AddStaticText) _then)
      : super(_value, (v) => _then(v as _$AddStaticText));

  @override
  _$AddStaticText get _value => super._value as _$AddStaticText;

  @override
  $Res call({
    Object? initialText = freezed,
    Object? textDirection = freezed,
    Object? minWidth = freezed,
    Object? maxWidth = freezed,
  }) {
    return _then(_$AddStaticText(
      initialText: initialText == freezed
          ? _value.initialText
          : initialText // ignore: cast_nullable_to_non_nullable
              as String,
      textDirection: textDirection == freezed
          ? _value.textDirection
          : textDirection // ignore: cast_nullable_to_non_nullable
              as TextDirection,
      minWidth: minWidth == freezed
          ? _value.minWidth
          : minWidth // ignore: cast_nullable_to_non_nullable
              as double,
      maxWidth: maxWidth == freezed
          ? _value.maxWidth
          : maxWidth // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$AddStaticText implements AddStaticText {
  const _$AddStaticText(
      {required this.initialText, required this.textDirection, required this.minWidth, required this.maxWidth});

  /// The initial text of the static text.
  @override
  final String initialText;

  /// The current text direction of the locale.
  @override
  final TextDirection textDirection;

  /// The minimum width of the static text.
  @override
  final double minWidth;

  /// The maximum width of the static text.
  @override
  final double maxWidth;

  @override
  String toString() {
    return 'EditorEvent.addStaticText(initialText: $initialText, textDirection: $textDirection, minWidth: $minWidth, maxWidth: $maxWidth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddStaticText &&
            const DeepCollectionEquality().equals(other.initialText, initialText) &&
            const DeepCollectionEquality().equals(other.textDirection, textDirection) &&
            const DeepCollectionEquality().equals(other.minWidth, minWidth) &&
            const DeepCollectionEquality().equals(other.maxWidth, maxWidth));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(initialText),
      const DeepCollectionEquality().hash(textDirection),
      const DeepCollectionEquality().hash(minWidth),
      const DeepCollectionEquality().hash(maxWidth));

  @JsonKey(ignore: true)
  @override
  _$$AddStaticTextCopyWith<_$AddStaticText> get copyWith =>
      __$$AddStaticTextCopyWithImpl<_$AddStaticText>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addStaticText,
    required TResult Function(String updatedText) staticTextChanged,
    required TResult Function(TextStyle? updatedTextStyle) staticTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) staticTextAlignChanged,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addVariableText,
    required TResult Function() variableTextFileChanged,
    required TResult Function(TextStyle? updatedTextStyle) variableTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) variableTextAlignChanged,
    required TResult Function() addImage,
    required TResult Function(Offset localPosition) canvasDragStart,
    required TResult Function(Offset delta) canvasDragUpdate,
    required TResult Function() canvasDragEnd,
    required TResult Function(Element draggedElement, Offset localPosition) elementDragStart,
    required TResult Function(Offset delta) elementDragUpdate,
    required TResult Function() elementDragEnd,
    required TResult Function() canvasTap,
    required TResult Function(Element element) elementTap,
    required TResult Function() removeSelectedElement,
    required TResult Function() deselectElement,
    required TResult Function() bringSelectedElementToFront,
    required TResult Function(ResizeDirection resizeDirection, Offset delta) resizeUpdate,
    required TResult Function() resizeEnd,
    required TResult Function(Size updatedSize) selectedElementSizeChanged,
    required TResult Function(Offset updatedPosition) selectedElementPositionChanged,
    required TResult Function(bool isEditingTextElement) textEditingModeChanged,
    required TResult Function() clearEditor,
    required TResult Function(Option<GlobalKey<State<StatefulWidget>>> key) setCanvasKey,
    required TResult Function(Color color) changeCanvasBackgroundColor,
    required TResult Function() changeCanvasBackgroundImage,
    required TResult Function() removeCanvasBackgroundImage,
    required TResult Function() duplicateSelectedElement,
  }) {
    return addStaticText(initialText, textDirection, minWidth, maxWidth);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
  }) {
    return addStaticText?.call(initialText, textDirection, minWidth, maxWidth);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (addStaticText != null) {
      return addStaticText(initialText, textDirection, minWidth, maxWidth);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Undo value) undo,
    required TResult Function(Redo value) redo,
    required TResult Function(AddStaticText value) addStaticText,
    required TResult Function(StaticTextChanged value) staticTextChanged,
    required TResult Function(StaticTextStyleChanged value) staticTextStyleChanged,
    required TResult Function(StaticTextAlignChanged value) staticTextAlignChanged,
    required TResult Function(AddVariableText value) addVariableText,
    required TResult Function(VariableTextFileChanged value) variableTextFileChanged,
    required TResult Function(VariableTextStyleChanged value) variableTextStyleChanged,
    required TResult Function(VariableTextAlignChanged value) variableTextAlignChanged,
    required TResult Function(AddImage value) addImage,
    required TResult Function(CanvasDragStart value) canvasDragStart,
    required TResult Function(CanvasDragUpdate value) canvasDragUpdate,
    required TResult Function(CanvasDragEnd value) canvasDragEnd,
    required TResult Function(ElementDragStart value) elementDragStart,
    required TResult Function(ElementDragUpdate value) elementDragUpdate,
    required TResult Function(ElementDragEnd value) elementDragEnd,
    required TResult Function(CanvasTap value) canvasTap,
    required TResult Function(ElementTap value) elementTap,
    required TResult Function(RemoveSelectedElement value) removeSelectedElement,
    required TResult Function(DeselectElement value) deselectElement,
    required TResult Function(BringSelectedElementToFront value) bringSelectedElementToFront,
    required TResult Function(ResizeUpdate value) resizeUpdate,
    required TResult Function(ResizeEnd value) resizeEnd,
    required TResult Function(SelectedElementSizeChanged value) selectedElementSizeChanged,
    required TResult Function(SelectedElementPositionChanged value) selectedElementPositionChanged,
    required TResult Function(TextEditingModeChanged value) textEditingModeChanged,
    required TResult Function(ClearEditor value) clearEditor,
    required TResult Function(SetCanvasKey value) setCanvasKey,
    required TResult Function(ChangeCanvasBackgroundColor value) changeCanvasBackgroundColor,
    required TResult Function(ChangeCanvasBackgroundImage value) changeCanvasBackgroundImage,
    required TResult Function(RemoveCanvasBackgroundImage value) removeCanvasBackgroundImage,
    required TResult Function(DuplicateSelectedElement value) duplicateSelectedElement,
  }) {
    return addStaticText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
  }) {
    return addStaticText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (addStaticText != null) {
      return addStaticText(this);
    }
    return orElse();
  }
}

abstract class AddStaticText implements EditorEvent {
  const factory AddStaticText(
      {required final String initialText,
      required final TextDirection textDirection,
      required final double minWidth,
      required final double maxWidth}) = _$AddStaticText;

  /// The initial text of the static text.
  String get initialText;

  /// The current text direction of the locale.
  TextDirection get textDirection;

  /// The minimum width of the static text.
  double get minWidth;

  /// The maximum width of the static text.
  double get maxWidth;
  @JsonKey(ignore: true)
  _$$AddStaticTextCopyWith<_$AddStaticText> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StaticTextChangedCopyWith<$Res> {
  factory _$$StaticTextChangedCopyWith(_$StaticTextChanged value, $Res Function(_$StaticTextChanged) then) =
      __$$StaticTextChangedCopyWithImpl<$Res>;
  $Res call({String updatedText});
}

/// @nodoc
class __$$StaticTextChangedCopyWithImpl<$Res> extends _$EditorEventCopyWithImpl<$Res>
    implements _$$StaticTextChangedCopyWith<$Res> {
  __$$StaticTextChangedCopyWithImpl(_$StaticTextChanged _value, $Res Function(_$StaticTextChanged) _then)
      : super(_value, (v) => _then(v as _$StaticTextChanged));

  @override
  _$StaticTextChanged get _value => super._value as _$StaticTextChanged;

  @override
  $Res call({
    Object? updatedText = freezed,
  }) {
    return _then(_$StaticTextChanged(
      updatedText: updatedText == freezed
          ? _value.updatedText
          : updatedText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$StaticTextChanged implements StaticTextChanged {
  const _$StaticTextChanged({required this.updatedText});

  /// The new value of the text.
  @override
  final String updatedText;

  @override
  String toString() {
    return 'EditorEvent.staticTextChanged(updatedText: $updatedText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StaticTextChanged &&
            const DeepCollectionEquality().equals(other.updatedText, updatedText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(updatedText));

  @JsonKey(ignore: true)
  @override
  _$$StaticTextChangedCopyWith<_$StaticTextChanged> get copyWith =>
      __$$StaticTextChangedCopyWithImpl<_$StaticTextChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addStaticText,
    required TResult Function(String updatedText) staticTextChanged,
    required TResult Function(TextStyle? updatedTextStyle) staticTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) staticTextAlignChanged,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addVariableText,
    required TResult Function() variableTextFileChanged,
    required TResult Function(TextStyle? updatedTextStyle) variableTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) variableTextAlignChanged,
    required TResult Function() addImage,
    required TResult Function(Offset localPosition) canvasDragStart,
    required TResult Function(Offset delta) canvasDragUpdate,
    required TResult Function() canvasDragEnd,
    required TResult Function(Element draggedElement, Offset localPosition) elementDragStart,
    required TResult Function(Offset delta) elementDragUpdate,
    required TResult Function() elementDragEnd,
    required TResult Function() canvasTap,
    required TResult Function(Element element) elementTap,
    required TResult Function() removeSelectedElement,
    required TResult Function() deselectElement,
    required TResult Function() bringSelectedElementToFront,
    required TResult Function(ResizeDirection resizeDirection, Offset delta) resizeUpdate,
    required TResult Function() resizeEnd,
    required TResult Function(Size updatedSize) selectedElementSizeChanged,
    required TResult Function(Offset updatedPosition) selectedElementPositionChanged,
    required TResult Function(bool isEditingTextElement) textEditingModeChanged,
    required TResult Function() clearEditor,
    required TResult Function(Option<GlobalKey<State<StatefulWidget>>> key) setCanvasKey,
    required TResult Function(Color color) changeCanvasBackgroundColor,
    required TResult Function() changeCanvasBackgroundImage,
    required TResult Function() removeCanvasBackgroundImage,
    required TResult Function() duplicateSelectedElement,
  }) {
    return staticTextChanged(updatedText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
  }) {
    return staticTextChanged?.call(updatedText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (staticTextChanged != null) {
      return staticTextChanged(updatedText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Undo value) undo,
    required TResult Function(Redo value) redo,
    required TResult Function(AddStaticText value) addStaticText,
    required TResult Function(StaticTextChanged value) staticTextChanged,
    required TResult Function(StaticTextStyleChanged value) staticTextStyleChanged,
    required TResult Function(StaticTextAlignChanged value) staticTextAlignChanged,
    required TResult Function(AddVariableText value) addVariableText,
    required TResult Function(VariableTextFileChanged value) variableTextFileChanged,
    required TResult Function(VariableTextStyleChanged value) variableTextStyleChanged,
    required TResult Function(VariableTextAlignChanged value) variableTextAlignChanged,
    required TResult Function(AddImage value) addImage,
    required TResult Function(CanvasDragStart value) canvasDragStart,
    required TResult Function(CanvasDragUpdate value) canvasDragUpdate,
    required TResult Function(CanvasDragEnd value) canvasDragEnd,
    required TResult Function(ElementDragStart value) elementDragStart,
    required TResult Function(ElementDragUpdate value) elementDragUpdate,
    required TResult Function(ElementDragEnd value) elementDragEnd,
    required TResult Function(CanvasTap value) canvasTap,
    required TResult Function(ElementTap value) elementTap,
    required TResult Function(RemoveSelectedElement value) removeSelectedElement,
    required TResult Function(DeselectElement value) deselectElement,
    required TResult Function(BringSelectedElementToFront value) bringSelectedElementToFront,
    required TResult Function(ResizeUpdate value) resizeUpdate,
    required TResult Function(ResizeEnd value) resizeEnd,
    required TResult Function(SelectedElementSizeChanged value) selectedElementSizeChanged,
    required TResult Function(SelectedElementPositionChanged value) selectedElementPositionChanged,
    required TResult Function(TextEditingModeChanged value) textEditingModeChanged,
    required TResult Function(ClearEditor value) clearEditor,
    required TResult Function(SetCanvasKey value) setCanvasKey,
    required TResult Function(ChangeCanvasBackgroundColor value) changeCanvasBackgroundColor,
    required TResult Function(ChangeCanvasBackgroundImage value) changeCanvasBackgroundImage,
    required TResult Function(RemoveCanvasBackgroundImage value) removeCanvasBackgroundImage,
    required TResult Function(DuplicateSelectedElement value) duplicateSelectedElement,
  }) {
    return staticTextChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
  }) {
    return staticTextChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (staticTextChanged != null) {
      return staticTextChanged(this);
    }
    return orElse();
  }
}

abstract class StaticTextChanged implements EditorEvent {
  const factory StaticTextChanged({required final String updatedText}) = _$StaticTextChanged;

  /// The new value of the text.
  String get updatedText;
  @JsonKey(ignore: true)
  _$$StaticTextChangedCopyWith<_$StaticTextChanged> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StaticTextStyleChangedCopyWith<$Res> {
  factory _$$StaticTextStyleChangedCopyWith(
          _$StaticTextStyleChanged value, $Res Function(_$StaticTextStyleChanged) then) =
      __$$StaticTextStyleChangedCopyWithImpl<$Res>;
  $Res call({TextStyle? updatedTextStyle});
}

/// @nodoc
class __$$StaticTextStyleChangedCopyWithImpl<$Res> extends _$EditorEventCopyWithImpl<$Res>
    implements _$$StaticTextStyleChangedCopyWith<$Res> {
  __$$StaticTextStyleChangedCopyWithImpl(_$StaticTextStyleChanged _value, $Res Function(_$StaticTextStyleChanged) _then)
      : super(_value, (v) => _then(v as _$StaticTextStyleChanged));

  @override
  _$StaticTextStyleChanged get _value => super._value as _$StaticTextStyleChanged;

  @override
  $Res call({
    Object? updatedTextStyle = freezed,
  }) {
    return _then(_$StaticTextStyleChanged(
      updatedTextStyle: updatedTextStyle == freezed
          ? _value.updatedTextStyle
          : updatedTextStyle // ignore: cast_nullable_to_non_nullable
              as TextStyle?,
    ));
  }
}

/// @nodoc

class _$StaticTextStyleChanged implements StaticTextStyleChanged {
  const _$StaticTextStyleChanged({this.updatedTextStyle});

  /// The new value of the text style in the element.
  @override
  final TextStyle? updatedTextStyle;

  @override
  String toString() {
    return 'EditorEvent.staticTextStyleChanged(updatedTextStyle: $updatedTextStyle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StaticTextStyleChanged &&
            const DeepCollectionEquality().equals(other.updatedTextStyle, updatedTextStyle));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(updatedTextStyle));

  @JsonKey(ignore: true)
  @override
  _$$StaticTextStyleChangedCopyWith<_$StaticTextStyleChanged> get copyWith =>
      __$$StaticTextStyleChangedCopyWithImpl<_$StaticTextStyleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addStaticText,
    required TResult Function(String updatedText) staticTextChanged,
    required TResult Function(TextStyle? updatedTextStyle) staticTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) staticTextAlignChanged,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addVariableText,
    required TResult Function() variableTextFileChanged,
    required TResult Function(TextStyle? updatedTextStyle) variableTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) variableTextAlignChanged,
    required TResult Function() addImage,
    required TResult Function(Offset localPosition) canvasDragStart,
    required TResult Function(Offset delta) canvasDragUpdate,
    required TResult Function() canvasDragEnd,
    required TResult Function(Element draggedElement, Offset localPosition) elementDragStart,
    required TResult Function(Offset delta) elementDragUpdate,
    required TResult Function() elementDragEnd,
    required TResult Function() canvasTap,
    required TResult Function(Element element) elementTap,
    required TResult Function() removeSelectedElement,
    required TResult Function() deselectElement,
    required TResult Function() bringSelectedElementToFront,
    required TResult Function(ResizeDirection resizeDirection, Offset delta) resizeUpdate,
    required TResult Function() resizeEnd,
    required TResult Function(Size updatedSize) selectedElementSizeChanged,
    required TResult Function(Offset updatedPosition) selectedElementPositionChanged,
    required TResult Function(bool isEditingTextElement) textEditingModeChanged,
    required TResult Function() clearEditor,
    required TResult Function(Option<GlobalKey<State<StatefulWidget>>> key) setCanvasKey,
    required TResult Function(Color color) changeCanvasBackgroundColor,
    required TResult Function() changeCanvasBackgroundImage,
    required TResult Function() removeCanvasBackgroundImage,
    required TResult Function() duplicateSelectedElement,
  }) {
    return staticTextStyleChanged(updatedTextStyle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
  }) {
    return staticTextStyleChanged?.call(updatedTextStyle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (staticTextStyleChanged != null) {
      return staticTextStyleChanged(updatedTextStyle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Undo value) undo,
    required TResult Function(Redo value) redo,
    required TResult Function(AddStaticText value) addStaticText,
    required TResult Function(StaticTextChanged value) staticTextChanged,
    required TResult Function(StaticTextStyleChanged value) staticTextStyleChanged,
    required TResult Function(StaticTextAlignChanged value) staticTextAlignChanged,
    required TResult Function(AddVariableText value) addVariableText,
    required TResult Function(VariableTextFileChanged value) variableTextFileChanged,
    required TResult Function(VariableTextStyleChanged value) variableTextStyleChanged,
    required TResult Function(VariableTextAlignChanged value) variableTextAlignChanged,
    required TResult Function(AddImage value) addImage,
    required TResult Function(CanvasDragStart value) canvasDragStart,
    required TResult Function(CanvasDragUpdate value) canvasDragUpdate,
    required TResult Function(CanvasDragEnd value) canvasDragEnd,
    required TResult Function(ElementDragStart value) elementDragStart,
    required TResult Function(ElementDragUpdate value) elementDragUpdate,
    required TResult Function(ElementDragEnd value) elementDragEnd,
    required TResult Function(CanvasTap value) canvasTap,
    required TResult Function(ElementTap value) elementTap,
    required TResult Function(RemoveSelectedElement value) removeSelectedElement,
    required TResult Function(DeselectElement value) deselectElement,
    required TResult Function(BringSelectedElementToFront value) bringSelectedElementToFront,
    required TResult Function(ResizeUpdate value) resizeUpdate,
    required TResult Function(ResizeEnd value) resizeEnd,
    required TResult Function(SelectedElementSizeChanged value) selectedElementSizeChanged,
    required TResult Function(SelectedElementPositionChanged value) selectedElementPositionChanged,
    required TResult Function(TextEditingModeChanged value) textEditingModeChanged,
    required TResult Function(ClearEditor value) clearEditor,
    required TResult Function(SetCanvasKey value) setCanvasKey,
    required TResult Function(ChangeCanvasBackgroundColor value) changeCanvasBackgroundColor,
    required TResult Function(ChangeCanvasBackgroundImage value) changeCanvasBackgroundImage,
    required TResult Function(RemoveCanvasBackgroundImage value) removeCanvasBackgroundImage,
    required TResult Function(DuplicateSelectedElement value) duplicateSelectedElement,
  }) {
    return staticTextStyleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
  }) {
    return staticTextStyleChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (staticTextStyleChanged != null) {
      return staticTextStyleChanged(this);
    }
    return orElse();
  }
}

abstract class StaticTextStyleChanged implements EditorEvent {
  const factory StaticTextStyleChanged({final TextStyle? updatedTextStyle}) = _$StaticTextStyleChanged;

  /// The new value of the text style in the element.
  TextStyle? get updatedTextStyle;
  @JsonKey(ignore: true)
  _$$StaticTextStyleChangedCopyWith<_$StaticTextStyleChanged> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StaticTextAlignChangedCopyWith<$Res> {
  factory _$$StaticTextAlignChangedCopyWith(
          _$StaticTextAlignChanged value, $Res Function(_$StaticTextAlignChanged) then) =
      __$$StaticTextAlignChangedCopyWithImpl<$Res>;
  $Res call({TextAlign? updatedTextAlign});
}

/// @nodoc
class __$$StaticTextAlignChangedCopyWithImpl<$Res> extends _$EditorEventCopyWithImpl<$Res>
    implements _$$StaticTextAlignChangedCopyWith<$Res> {
  __$$StaticTextAlignChangedCopyWithImpl(_$StaticTextAlignChanged _value, $Res Function(_$StaticTextAlignChanged) _then)
      : super(_value, (v) => _then(v as _$StaticTextAlignChanged));

  @override
  _$StaticTextAlignChanged get _value => super._value as _$StaticTextAlignChanged;

  @override
  $Res call({
    Object? updatedTextAlign = freezed,
  }) {
    return _then(_$StaticTextAlignChanged(
      updatedTextAlign: updatedTextAlign == freezed
          ? _value.updatedTextAlign
          : updatedTextAlign // ignore: cast_nullable_to_non_nullable
              as TextAlign?,
    ));
  }
}

/// @nodoc

class _$StaticTextAlignChanged implements StaticTextAlignChanged {
  const _$StaticTextAlignChanged({this.updatedTextAlign});

  /// The new value of the text align in the element.
  @override
  final TextAlign? updatedTextAlign;

  @override
  String toString() {
    return 'EditorEvent.staticTextAlignChanged(updatedTextAlign: $updatedTextAlign)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StaticTextAlignChanged &&
            const DeepCollectionEquality().equals(other.updatedTextAlign, updatedTextAlign));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(updatedTextAlign));

  @JsonKey(ignore: true)
  @override
  _$$StaticTextAlignChangedCopyWith<_$StaticTextAlignChanged> get copyWith =>
      __$$StaticTextAlignChangedCopyWithImpl<_$StaticTextAlignChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addStaticText,
    required TResult Function(String updatedText) staticTextChanged,
    required TResult Function(TextStyle? updatedTextStyle) staticTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) staticTextAlignChanged,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addVariableText,
    required TResult Function() variableTextFileChanged,
    required TResult Function(TextStyle? updatedTextStyle) variableTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) variableTextAlignChanged,
    required TResult Function() addImage,
    required TResult Function(Offset localPosition) canvasDragStart,
    required TResult Function(Offset delta) canvasDragUpdate,
    required TResult Function() canvasDragEnd,
    required TResult Function(Element draggedElement, Offset localPosition) elementDragStart,
    required TResult Function(Offset delta) elementDragUpdate,
    required TResult Function() elementDragEnd,
    required TResult Function() canvasTap,
    required TResult Function(Element element) elementTap,
    required TResult Function() removeSelectedElement,
    required TResult Function() deselectElement,
    required TResult Function() bringSelectedElementToFront,
    required TResult Function(ResizeDirection resizeDirection, Offset delta) resizeUpdate,
    required TResult Function() resizeEnd,
    required TResult Function(Size updatedSize) selectedElementSizeChanged,
    required TResult Function(Offset updatedPosition) selectedElementPositionChanged,
    required TResult Function(bool isEditingTextElement) textEditingModeChanged,
    required TResult Function() clearEditor,
    required TResult Function(Option<GlobalKey<State<StatefulWidget>>> key) setCanvasKey,
    required TResult Function(Color color) changeCanvasBackgroundColor,
    required TResult Function() changeCanvasBackgroundImage,
    required TResult Function() removeCanvasBackgroundImage,
    required TResult Function() duplicateSelectedElement,
  }) {
    return staticTextAlignChanged(updatedTextAlign);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
  }) {
    return staticTextAlignChanged?.call(updatedTextAlign);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (staticTextAlignChanged != null) {
      return staticTextAlignChanged(updatedTextAlign);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Undo value) undo,
    required TResult Function(Redo value) redo,
    required TResult Function(AddStaticText value) addStaticText,
    required TResult Function(StaticTextChanged value) staticTextChanged,
    required TResult Function(StaticTextStyleChanged value) staticTextStyleChanged,
    required TResult Function(StaticTextAlignChanged value) staticTextAlignChanged,
    required TResult Function(AddVariableText value) addVariableText,
    required TResult Function(VariableTextFileChanged value) variableTextFileChanged,
    required TResult Function(VariableTextStyleChanged value) variableTextStyleChanged,
    required TResult Function(VariableTextAlignChanged value) variableTextAlignChanged,
    required TResult Function(AddImage value) addImage,
    required TResult Function(CanvasDragStart value) canvasDragStart,
    required TResult Function(CanvasDragUpdate value) canvasDragUpdate,
    required TResult Function(CanvasDragEnd value) canvasDragEnd,
    required TResult Function(ElementDragStart value) elementDragStart,
    required TResult Function(ElementDragUpdate value) elementDragUpdate,
    required TResult Function(ElementDragEnd value) elementDragEnd,
    required TResult Function(CanvasTap value) canvasTap,
    required TResult Function(ElementTap value) elementTap,
    required TResult Function(RemoveSelectedElement value) removeSelectedElement,
    required TResult Function(DeselectElement value) deselectElement,
    required TResult Function(BringSelectedElementToFront value) bringSelectedElementToFront,
    required TResult Function(ResizeUpdate value) resizeUpdate,
    required TResult Function(ResizeEnd value) resizeEnd,
    required TResult Function(SelectedElementSizeChanged value) selectedElementSizeChanged,
    required TResult Function(SelectedElementPositionChanged value) selectedElementPositionChanged,
    required TResult Function(TextEditingModeChanged value) textEditingModeChanged,
    required TResult Function(ClearEditor value) clearEditor,
    required TResult Function(SetCanvasKey value) setCanvasKey,
    required TResult Function(ChangeCanvasBackgroundColor value) changeCanvasBackgroundColor,
    required TResult Function(ChangeCanvasBackgroundImage value) changeCanvasBackgroundImage,
    required TResult Function(RemoveCanvasBackgroundImage value) removeCanvasBackgroundImage,
    required TResult Function(DuplicateSelectedElement value) duplicateSelectedElement,
  }) {
    return staticTextAlignChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
  }) {
    return staticTextAlignChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (staticTextAlignChanged != null) {
      return staticTextAlignChanged(this);
    }
    return orElse();
  }
}

abstract class StaticTextAlignChanged implements EditorEvent {
  const factory StaticTextAlignChanged({final TextAlign? updatedTextAlign}) = _$StaticTextAlignChanged;

  /// The new value of the text align in the element.
  TextAlign? get updatedTextAlign;
  @JsonKey(ignore: true)
  _$$StaticTextAlignChangedCopyWith<_$StaticTextAlignChanged> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddVariableTextCopyWith<$Res> {
  factory _$$AddVariableTextCopyWith(_$AddVariableText value, $Res Function(_$AddVariableText) then) =
      __$$AddVariableTextCopyWithImpl<$Res>;
  $Res call({String initialText, TextDirection textDirection, double minWidth, double maxWidth});
}

/// @nodoc
class __$$AddVariableTextCopyWithImpl<$Res> extends _$EditorEventCopyWithImpl<$Res>
    implements _$$AddVariableTextCopyWith<$Res> {
  __$$AddVariableTextCopyWithImpl(_$AddVariableText _value, $Res Function(_$AddVariableText) _then)
      : super(_value, (v) => _then(v as _$AddVariableText));

  @override
  _$AddVariableText get _value => super._value as _$AddVariableText;

  @override
  $Res call({
    Object? initialText = freezed,
    Object? textDirection = freezed,
    Object? minWidth = freezed,
    Object? maxWidth = freezed,
  }) {
    return _then(_$AddVariableText(
      initialText: initialText == freezed
          ? _value.initialText
          : initialText // ignore: cast_nullable_to_non_nullable
              as String,
      textDirection: textDirection == freezed
          ? _value.textDirection
          : textDirection // ignore: cast_nullable_to_non_nullable
              as TextDirection,
      minWidth: minWidth == freezed
          ? _value.minWidth
          : minWidth // ignore: cast_nullable_to_non_nullable
              as double,
      maxWidth: maxWidth == freezed
          ? _value.maxWidth
          : maxWidth // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$AddVariableText implements AddVariableText {
  const _$AddVariableText(
      {required this.initialText, required this.textDirection, required this.minWidth, required this.maxWidth});

  /// The initial text of the variable text.
  @override
  final String initialText;

  /// The current text direction.
  @override
  final TextDirection textDirection;

  /// The minimum width of the variable text placeholder.
  @override
  final double minWidth;

  /// The maximum width of the variable text placeholder.
  @override
  final double maxWidth;

  @override
  String toString() {
    return 'EditorEvent.addVariableText(initialText: $initialText, textDirection: $textDirection, minWidth: $minWidth, maxWidth: $maxWidth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddVariableText &&
            const DeepCollectionEquality().equals(other.initialText, initialText) &&
            const DeepCollectionEquality().equals(other.textDirection, textDirection) &&
            const DeepCollectionEquality().equals(other.minWidth, minWidth) &&
            const DeepCollectionEquality().equals(other.maxWidth, maxWidth));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(initialText),
      const DeepCollectionEquality().hash(textDirection),
      const DeepCollectionEquality().hash(minWidth),
      const DeepCollectionEquality().hash(maxWidth));

  @JsonKey(ignore: true)
  @override
  _$$AddVariableTextCopyWith<_$AddVariableText> get copyWith =>
      __$$AddVariableTextCopyWithImpl<_$AddVariableText>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addStaticText,
    required TResult Function(String updatedText) staticTextChanged,
    required TResult Function(TextStyle? updatedTextStyle) staticTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) staticTextAlignChanged,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addVariableText,
    required TResult Function() variableTextFileChanged,
    required TResult Function(TextStyle? updatedTextStyle) variableTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) variableTextAlignChanged,
    required TResult Function() addImage,
    required TResult Function(Offset localPosition) canvasDragStart,
    required TResult Function(Offset delta) canvasDragUpdate,
    required TResult Function() canvasDragEnd,
    required TResult Function(Element draggedElement, Offset localPosition) elementDragStart,
    required TResult Function(Offset delta) elementDragUpdate,
    required TResult Function() elementDragEnd,
    required TResult Function() canvasTap,
    required TResult Function(Element element) elementTap,
    required TResult Function() removeSelectedElement,
    required TResult Function() deselectElement,
    required TResult Function() bringSelectedElementToFront,
    required TResult Function(ResizeDirection resizeDirection, Offset delta) resizeUpdate,
    required TResult Function() resizeEnd,
    required TResult Function(Size updatedSize) selectedElementSizeChanged,
    required TResult Function(Offset updatedPosition) selectedElementPositionChanged,
    required TResult Function(bool isEditingTextElement) textEditingModeChanged,
    required TResult Function() clearEditor,
    required TResult Function(Option<GlobalKey<State<StatefulWidget>>> key) setCanvasKey,
    required TResult Function(Color color) changeCanvasBackgroundColor,
    required TResult Function() changeCanvasBackgroundImage,
    required TResult Function() removeCanvasBackgroundImage,
    required TResult Function() duplicateSelectedElement,
  }) {
    return addVariableText(initialText, textDirection, minWidth, maxWidth);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
  }) {
    return addVariableText?.call(initialText, textDirection, minWidth, maxWidth);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (addVariableText != null) {
      return addVariableText(initialText, textDirection, minWidth, maxWidth);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Undo value) undo,
    required TResult Function(Redo value) redo,
    required TResult Function(AddStaticText value) addStaticText,
    required TResult Function(StaticTextChanged value) staticTextChanged,
    required TResult Function(StaticTextStyleChanged value) staticTextStyleChanged,
    required TResult Function(StaticTextAlignChanged value) staticTextAlignChanged,
    required TResult Function(AddVariableText value) addVariableText,
    required TResult Function(VariableTextFileChanged value) variableTextFileChanged,
    required TResult Function(VariableTextStyleChanged value) variableTextStyleChanged,
    required TResult Function(VariableTextAlignChanged value) variableTextAlignChanged,
    required TResult Function(AddImage value) addImage,
    required TResult Function(CanvasDragStart value) canvasDragStart,
    required TResult Function(CanvasDragUpdate value) canvasDragUpdate,
    required TResult Function(CanvasDragEnd value) canvasDragEnd,
    required TResult Function(ElementDragStart value) elementDragStart,
    required TResult Function(ElementDragUpdate value) elementDragUpdate,
    required TResult Function(ElementDragEnd value) elementDragEnd,
    required TResult Function(CanvasTap value) canvasTap,
    required TResult Function(ElementTap value) elementTap,
    required TResult Function(RemoveSelectedElement value) removeSelectedElement,
    required TResult Function(DeselectElement value) deselectElement,
    required TResult Function(BringSelectedElementToFront value) bringSelectedElementToFront,
    required TResult Function(ResizeUpdate value) resizeUpdate,
    required TResult Function(ResizeEnd value) resizeEnd,
    required TResult Function(SelectedElementSizeChanged value) selectedElementSizeChanged,
    required TResult Function(SelectedElementPositionChanged value) selectedElementPositionChanged,
    required TResult Function(TextEditingModeChanged value) textEditingModeChanged,
    required TResult Function(ClearEditor value) clearEditor,
    required TResult Function(SetCanvasKey value) setCanvasKey,
    required TResult Function(ChangeCanvasBackgroundColor value) changeCanvasBackgroundColor,
    required TResult Function(ChangeCanvasBackgroundImage value) changeCanvasBackgroundImage,
    required TResult Function(RemoveCanvasBackgroundImage value) removeCanvasBackgroundImage,
    required TResult Function(DuplicateSelectedElement value) duplicateSelectedElement,
  }) {
    return addVariableText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
  }) {
    return addVariableText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (addVariableText != null) {
      return addVariableText(this);
    }
    return orElse();
  }
}

abstract class AddVariableText implements EditorEvent {
  const factory AddVariableText(
      {required final String initialText,
      required final TextDirection textDirection,
      required final double minWidth,
      required final double maxWidth}) = _$AddVariableText;

  /// The initial text of the variable text.
  String get initialText;

  /// The current text direction.
  TextDirection get textDirection;

  /// The minimum width of the variable text placeholder.
  double get minWidth;

  /// The maximum width of the variable text placeholder.
  double get maxWidth;
  @JsonKey(ignore: true)
  _$$AddVariableTextCopyWith<_$AddVariableText> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VariableTextFileChangedCopyWith<$Res> {
  factory _$$VariableTextFileChangedCopyWith(
          _$VariableTextFileChanged value, $Res Function(_$VariableTextFileChanged) then) =
      __$$VariableTextFileChangedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VariableTextFileChangedCopyWithImpl<$Res> extends _$EditorEventCopyWithImpl<$Res>
    implements _$$VariableTextFileChangedCopyWith<$Res> {
  __$$VariableTextFileChangedCopyWithImpl(
      _$VariableTextFileChanged _value, $Res Function(_$VariableTextFileChanged) _then)
      : super(_value, (v) => _then(v as _$VariableTextFileChanged));

  @override
  _$VariableTextFileChanged get _value => super._value as _$VariableTextFileChanged;
}

/// @nodoc

class _$VariableTextFileChanged implements VariableTextFileChanged {
  const _$VariableTextFileChanged();

  @override
  String toString() {
    return 'EditorEvent.variableTextFileChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$VariableTextFileChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addStaticText,
    required TResult Function(String updatedText) staticTextChanged,
    required TResult Function(TextStyle? updatedTextStyle) staticTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) staticTextAlignChanged,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addVariableText,
    required TResult Function() variableTextFileChanged,
    required TResult Function(TextStyle? updatedTextStyle) variableTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) variableTextAlignChanged,
    required TResult Function() addImage,
    required TResult Function(Offset localPosition) canvasDragStart,
    required TResult Function(Offset delta) canvasDragUpdate,
    required TResult Function() canvasDragEnd,
    required TResult Function(Element draggedElement, Offset localPosition) elementDragStart,
    required TResult Function(Offset delta) elementDragUpdate,
    required TResult Function() elementDragEnd,
    required TResult Function() canvasTap,
    required TResult Function(Element element) elementTap,
    required TResult Function() removeSelectedElement,
    required TResult Function() deselectElement,
    required TResult Function() bringSelectedElementToFront,
    required TResult Function(ResizeDirection resizeDirection, Offset delta) resizeUpdate,
    required TResult Function() resizeEnd,
    required TResult Function(Size updatedSize) selectedElementSizeChanged,
    required TResult Function(Offset updatedPosition) selectedElementPositionChanged,
    required TResult Function(bool isEditingTextElement) textEditingModeChanged,
    required TResult Function() clearEditor,
    required TResult Function(Option<GlobalKey<State<StatefulWidget>>> key) setCanvasKey,
    required TResult Function(Color color) changeCanvasBackgroundColor,
    required TResult Function() changeCanvasBackgroundImage,
    required TResult Function() removeCanvasBackgroundImage,
    required TResult Function() duplicateSelectedElement,
  }) {
    return variableTextFileChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
  }) {
    return variableTextFileChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (variableTextFileChanged != null) {
      return variableTextFileChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Undo value) undo,
    required TResult Function(Redo value) redo,
    required TResult Function(AddStaticText value) addStaticText,
    required TResult Function(StaticTextChanged value) staticTextChanged,
    required TResult Function(StaticTextStyleChanged value) staticTextStyleChanged,
    required TResult Function(StaticTextAlignChanged value) staticTextAlignChanged,
    required TResult Function(AddVariableText value) addVariableText,
    required TResult Function(VariableTextFileChanged value) variableTextFileChanged,
    required TResult Function(VariableTextStyleChanged value) variableTextStyleChanged,
    required TResult Function(VariableTextAlignChanged value) variableTextAlignChanged,
    required TResult Function(AddImage value) addImage,
    required TResult Function(CanvasDragStart value) canvasDragStart,
    required TResult Function(CanvasDragUpdate value) canvasDragUpdate,
    required TResult Function(CanvasDragEnd value) canvasDragEnd,
    required TResult Function(ElementDragStart value) elementDragStart,
    required TResult Function(ElementDragUpdate value) elementDragUpdate,
    required TResult Function(ElementDragEnd value) elementDragEnd,
    required TResult Function(CanvasTap value) canvasTap,
    required TResult Function(ElementTap value) elementTap,
    required TResult Function(RemoveSelectedElement value) removeSelectedElement,
    required TResult Function(DeselectElement value) deselectElement,
    required TResult Function(BringSelectedElementToFront value) bringSelectedElementToFront,
    required TResult Function(ResizeUpdate value) resizeUpdate,
    required TResult Function(ResizeEnd value) resizeEnd,
    required TResult Function(SelectedElementSizeChanged value) selectedElementSizeChanged,
    required TResult Function(SelectedElementPositionChanged value) selectedElementPositionChanged,
    required TResult Function(TextEditingModeChanged value) textEditingModeChanged,
    required TResult Function(ClearEditor value) clearEditor,
    required TResult Function(SetCanvasKey value) setCanvasKey,
    required TResult Function(ChangeCanvasBackgroundColor value) changeCanvasBackgroundColor,
    required TResult Function(ChangeCanvasBackgroundImage value) changeCanvasBackgroundImage,
    required TResult Function(RemoveCanvasBackgroundImage value) removeCanvasBackgroundImage,
    required TResult Function(DuplicateSelectedElement value) duplicateSelectedElement,
  }) {
    return variableTextFileChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
  }) {
    return variableTextFileChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (variableTextFileChanged != null) {
      return variableTextFileChanged(this);
    }
    return orElse();
  }
}

abstract class VariableTextFileChanged implements EditorEvent {
  const factory VariableTextFileChanged() = _$VariableTextFileChanged;
}

/// @nodoc
abstract class _$$VariableTextStyleChangedCopyWith<$Res> {
  factory _$$VariableTextStyleChangedCopyWith(
          _$VariableTextStyleChanged value, $Res Function(_$VariableTextStyleChanged) then) =
      __$$VariableTextStyleChangedCopyWithImpl<$Res>;
  $Res call({TextStyle? updatedTextStyle});
}

/// @nodoc
class __$$VariableTextStyleChangedCopyWithImpl<$Res> extends _$EditorEventCopyWithImpl<$Res>
    implements _$$VariableTextStyleChangedCopyWith<$Res> {
  __$$VariableTextStyleChangedCopyWithImpl(
      _$VariableTextStyleChanged _value, $Res Function(_$VariableTextStyleChanged) _then)
      : super(_value, (v) => _then(v as _$VariableTextStyleChanged));

  @override
  _$VariableTextStyleChanged get _value => super._value as _$VariableTextStyleChanged;

  @override
  $Res call({
    Object? updatedTextStyle = freezed,
  }) {
    return _then(_$VariableTextStyleChanged(
      updatedTextStyle: updatedTextStyle == freezed
          ? _value.updatedTextStyle
          : updatedTextStyle // ignore: cast_nullable_to_non_nullable
              as TextStyle?,
    ));
  }
}

/// @nodoc

class _$VariableTextStyleChanged implements VariableTextStyleChanged {
  const _$VariableTextStyleChanged({this.updatedTextStyle});

  /// The new value of the text style in the element.
  @override
  final TextStyle? updatedTextStyle;

  @override
  String toString() {
    return 'EditorEvent.variableTextStyleChanged(updatedTextStyle: $updatedTextStyle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VariableTextStyleChanged &&
            const DeepCollectionEquality().equals(other.updatedTextStyle, updatedTextStyle));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(updatedTextStyle));

  @JsonKey(ignore: true)
  @override
  _$$VariableTextStyleChangedCopyWith<_$VariableTextStyleChanged> get copyWith =>
      __$$VariableTextStyleChangedCopyWithImpl<_$VariableTextStyleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addStaticText,
    required TResult Function(String updatedText) staticTextChanged,
    required TResult Function(TextStyle? updatedTextStyle) staticTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) staticTextAlignChanged,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addVariableText,
    required TResult Function() variableTextFileChanged,
    required TResult Function(TextStyle? updatedTextStyle) variableTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) variableTextAlignChanged,
    required TResult Function() addImage,
    required TResult Function(Offset localPosition) canvasDragStart,
    required TResult Function(Offset delta) canvasDragUpdate,
    required TResult Function() canvasDragEnd,
    required TResult Function(Element draggedElement, Offset localPosition) elementDragStart,
    required TResult Function(Offset delta) elementDragUpdate,
    required TResult Function() elementDragEnd,
    required TResult Function() canvasTap,
    required TResult Function(Element element) elementTap,
    required TResult Function() removeSelectedElement,
    required TResult Function() deselectElement,
    required TResult Function() bringSelectedElementToFront,
    required TResult Function(ResizeDirection resizeDirection, Offset delta) resizeUpdate,
    required TResult Function() resizeEnd,
    required TResult Function(Size updatedSize) selectedElementSizeChanged,
    required TResult Function(Offset updatedPosition) selectedElementPositionChanged,
    required TResult Function(bool isEditingTextElement) textEditingModeChanged,
    required TResult Function() clearEditor,
    required TResult Function(Option<GlobalKey<State<StatefulWidget>>> key) setCanvasKey,
    required TResult Function(Color color) changeCanvasBackgroundColor,
    required TResult Function() changeCanvasBackgroundImage,
    required TResult Function() removeCanvasBackgroundImage,
    required TResult Function() duplicateSelectedElement,
  }) {
    return variableTextStyleChanged(updatedTextStyle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
  }) {
    return variableTextStyleChanged?.call(updatedTextStyle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (variableTextStyleChanged != null) {
      return variableTextStyleChanged(updatedTextStyle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Undo value) undo,
    required TResult Function(Redo value) redo,
    required TResult Function(AddStaticText value) addStaticText,
    required TResult Function(StaticTextChanged value) staticTextChanged,
    required TResult Function(StaticTextStyleChanged value) staticTextStyleChanged,
    required TResult Function(StaticTextAlignChanged value) staticTextAlignChanged,
    required TResult Function(AddVariableText value) addVariableText,
    required TResult Function(VariableTextFileChanged value) variableTextFileChanged,
    required TResult Function(VariableTextStyleChanged value) variableTextStyleChanged,
    required TResult Function(VariableTextAlignChanged value) variableTextAlignChanged,
    required TResult Function(AddImage value) addImage,
    required TResult Function(CanvasDragStart value) canvasDragStart,
    required TResult Function(CanvasDragUpdate value) canvasDragUpdate,
    required TResult Function(CanvasDragEnd value) canvasDragEnd,
    required TResult Function(ElementDragStart value) elementDragStart,
    required TResult Function(ElementDragUpdate value) elementDragUpdate,
    required TResult Function(ElementDragEnd value) elementDragEnd,
    required TResult Function(CanvasTap value) canvasTap,
    required TResult Function(ElementTap value) elementTap,
    required TResult Function(RemoveSelectedElement value) removeSelectedElement,
    required TResult Function(DeselectElement value) deselectElement,
    required TResult Function(BringSelectedElementToFront value) bringSelectedElementToFront,
    required TResult Function(ResizeUpdate value) resizeUpdate,
    required TResult Function(ResizeEnd value) resizeEnd,
    required TResult Function(SelectedElementSizeChanged value) selectedElementSizeChanged,
    required TResult Function(SelectedElementPositionChanged value) selectedElementPositionChanged,
    required TResult Function(TextEditingModeChanged value) textEditingModeChanged,
    required TResult Function(ClearEditor value) clearEditor,
    required TResult Function(SetCanvasKey value) setCanvasKey,
    required TResult Function(ChangeCanvasBackgroundColor value) changeCanvasBackgroundColor,
    required TResult Function(ChangeCanvasBackgroundImage value) changeCanvasBackgroundImage,
    required TResult Function(RemoveCanvasBackgroundImage value) removeCanvasBackgroundImage,
    required TResult Function(DuplicateSelectedElement value) duplicateSelectedElement,
  }) {
    return variableTextStyleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
  }) {
    return variableTextStyleChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (variableTextStyleChanged != null) {
      return variableTextStyleChanged(this);
    }
    return orElse();
  }
}

abstract class VariableTextStyleChanged implements EditorEvent {
  const factory VariableTextStyleChanged({final TextStyle? updatedTextStyle}) = _$VariableTextStyleChanged;

  /// The new value of the text style in the element.
  TextStyle? get updatedTextStyle;
  @JsonKey(ignore: true)
  _$$VariableTextStyleChangedCopyWith<_$VariableTextStyleChanged> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VariableTextAlignChangedCopyWith<$Res> {
  factory _$$VariableTextAlignChangedCopyWith(
          _$VariableTextAlignChanged value, $Res Function(_$VariableTextAlignChanged) then) =
      __$$VariableTextAlignChangedCopyWithImpl<$Res>;
  $Res call({TextAlign? updatedTextAlign});
}

/// @nodoc
class __$$VariableTextAlignChangedCopyWithImpl<$Res> extends _$EditorEventCopyWithImpl<$Res>
    implements _$$VariableTextAlignChangedCopyWith<$Res> {
  __$$VariableTextAlignChangedCopyWithImpl(
      _$VariableTextAlignChanged _value, $Res Function(_$VariableTextAlignChanged) _then)
      : super(_value, (v) => _then(v as _$VariableTextAlignChanged));

  @override
  _$VariableTextAlignChanged get _value => super._value as _$VariableTextAlignChanged;

  @override
  $Res call({
    Object? updatedTextAlign = freezed,
  }) {
    return _then(_$VariableTextAlignChanged(
      updatedTextAlign: updatedTextAlign == freezed
          ? _value.updatedTextAlign
          : updatedTextAlign // ignore: cast_nullable_to_non_nullable
              as TextAlign?,
    ));
  }
}

/// @nodoc

class _$VariableTextAlignChanged implements VariableTextAlignChanged {
  const _$VariableTextAlignChanged({this.updatedTextAlign});

  /// The new value of the text align in the element.
  @override
  final TextAlign? updatedTextAlign;

  @override
  String toString() {
    return 'EditorEvent.variableTextAlignChanged(updatedTextAlign: $updatedTextAlign)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VariableTextAlignChanged &&
            const DeepCollectionEquality().equals(other.updatedTextAlign, updatedTextAlign));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(updatedTextAlign));

  @JsonKey(ignore: true)
  @override
  _$$VariableTextAlignChangedCopyWith<_$VariableTextAlignChanged> get copyWith =>
      __$$VariableTextAlignChangedCopyWithImpl<_$VariableTextAlignChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addStaticText,
    required TResult Function(String updatedText) staticTextChanged,
    required TResult Function(TextStyle? updatedTextStyle) staticTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) staticTextAlignChanged,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addVariableText,
    required TResult Function() variableTextFileChanged,
    required TResult Function(TextStyle? updatedTextStyle) variableTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) variableTextAlignChanged,
    required TResult Function() addImage,
    required TResult Function(Offset localPosition) canvasDragStart,
    required TResult Function(Offset delta) canvasDragUpdate,
    required TResult Function() canvasDragEnd,
    required TResult Function(Element draggedElement, Offset localPosition) elementDragStart,
    required TResult Function(Offset delta) elementDragUpdate,
    required TResult Function() elementDragEnd,
    required TResult Function() canvasTap,
    required TResult Function(Element element) elementTap,
    required TResult Function() removeSelectedElement,
    required TResult Function() deselectElement,
    required TResult Function() bringSelectedElementToFront,
    required TResult Function(ResizeDirection resizeDirection, Offset delta) resizeUpdate,
    required TResult Function() resizeEnd,
    required TResult Function(Size updatedSize) selectedElementSizeChanged,
    required TResult Function(Offset updatedPosition) selectedElementPositionChanged,
    required TResult Function(bool isEditingTextElement) textEditingModeChanged,
    required TResult Function() clearEditor,
    required TResult Function(Option<GlobalKey<State<StatefulWidget>>> key) setCanvasKey,
    required TResult Function(Color color) changeCanvasBackgroundColor,
    required TResult Function() changeCanvasBackgroundImage,
    required TResult Function() removeCanvasBackgroundImage,
    required TResult Function() duplicateSelectedElement,
  }) {
    return variableTextAlignChanged(updatedTextAlign);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
  }) {
    return variableTextAlignChanged?.call(updatedTextAlign);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (variableTextAlignChanged != null) {
      return variableTextAlignChanged(updatedTextAlign);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Undo value) undo,
    required TResult Function(Redo value) redo,
    required TResult Function(AddStaticText value) addStaticText,
    required TResult Function(StaticTextChanged value) staticTextChanged,
    required TResult Function(StaticTextStyleChanged value) staticTextStyleChanged,
    required TResult Function(StaticTextAlignChanged value) staticTextAlignChanged,
    required TResult Function(AddVariableText value) addVariableText,
    required TResult Function(VariableTextFileChanged value) variableTextFileChanged,
    required TResult Function(VariableTextStyleChanged value) variableTextStyleChanged,
    required TResult Function(VariableTextAlignChanged value) variableTextAlignChanged,
    required TResult Function(AddImage value) addImage,
    required TResult Function(CanvasDragStart value) canvasDragStart,
    required TResult Function(CanvasDragUpdate value) canvasDragUpdate,
    required TResult Function(CanvasDragEnd value) canvasDragEnd,
    required TResult Function(ElementDragStart value) elementDragStart,
    required TResult Function(ElementDragUpdate value) elementDragUpdate,
    required TResult Function(ElementDragEnd value) elementDragEnd,
    required TResult Function(CanvasTap value) canvasTap,
    required TResult Function(ElementTap value) elementTap,
    required TResult Function(RemoveSelectedElement value) removeSelectedElement,
    required TResult Function(DeselectElement value) deselectElement,
    required TResult Function(BringSelectedElementToFront value) bringSelectedElementToFront,
    required TResult Function(ResizeUpdate value) resizeUpdate,
    required TResult Function(ResizeEnd value) resizeEnd,
    required TResult Function(SelectedElementSizeChanged value) selectedElementSizeChanged,
    required TResult Function(SelectedElementPositionChanged value) selectedElementPositionChanged,
    required TResult Function(TextEditingModeChanged value) textEditingModeChanged,
    required TResult Function(ClearEditor value) clearEditor,
    required TResult Function(SetCanvasKey value) setCanvasKey,
    required TResult Function(ChangeCanvasBackgroundColor value) changeCanvasBackgroundColor,
    required TResult Function(ChangeCanvasBackgroundImage value) changeCanvasBackgroundImage,
    required TResult Function(RemoveCanvasBackgroundImage value) removeCanvasBackgroundImage,
    required TResult Function(DuplicateSelectedElement value) duplicateSelectedElement,
  }) {
    return variableTextAlignChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
  }) {
    return variableTextAlignChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (variableTextAlignChanged != null) {
      return variableTextAlignChanged(this);
    }
    return orElse();
  }
}

abstract class VariableTextAlignChanged implements EditorEvent {
  const factory VariableTextAlignChanged({final TextAlign? updatedTextAlign}) = _$VariableTextAlignChanged;

  /// The new value of the text align in the element.
  TextAlign? get updatedTextAlign;
  @JsonKey(ignore: true)
  _$$VariableTextAlignChangedCopyWith<_$VariableTextAlignChanged> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddImageCopyWith<$Res> {
  factory _$$AddImageCopyWith(_$AddImage value, $Res Function(_$AddImage) then) = __$$AddImageCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AddImageCopyWithImpl<$Res> extends _$EditorEventCopyWithImpl<$Res> implements _$$AddImageCopyWith<$Res> {
  __$$AddImageCopyWithImpl(_$AddImage _value, $Res Function(_$AddImage) _then)
      : super(_value, (v) => _then(v as _$AddImage));

  @override
  _$AddImage get _value => super._value as _$AddImage;
}

/// @nodoc

class _$AddImage implements AddImage {
  const _$AddImage();

  @override
  String toString() {
    return 'EditorEvent.addImage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$AddImage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addStaticText,
    required TResult Function(String updatedText) staticTextChanged,
    required TResult Function(TextStyle? updatedTextStyle) staticTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) staticTextAlignChanged,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addVariableText,
    required TResult Function() variableTextFileChanged,
    required TResult Function(TextStyle? updatedTextStyle) variableTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) variableTextAlignChanged,
    required TResult Function() addImage,
    required TResult Function(Offset localPosition) canvasDragStart,
    required TResult Function(Offset delta) canvasDragUpdate,
    required TResult Function() canvasDragEnd,
    required TResult Function(Element draggedElement, Offset localPosition) elementDragStart,
    required TResult Function(Offset delta) elementDragUpdate,
    required TResult Function() elementDragEnd,
    required TResult Function() canvasTap,
    required TResult Function(Element element) elementTap,
    required TResult Function() removeSelectedElement,
    required TResult Function() deselectElement,
    required TResult Function() bringSelectedElementToFront,
    required TResult Function(ResizeDirection resizeDirection, Offset delta) resizeUpdate,
    required TResult Function() resizeEnd,
    required TResult Function(Size updatedSize) selectedElementSizeChanged,
    required TResult Function(Offset updatedPosition) selectedElementPositionChanged,
    required TResult Function(bool isEditingTextElement) textEditingModeChanged,
    required TResult Function() clearEditor,
    required TResult Function(Option<GlobalKey<State<StatefulWidget>>> key) setCanvasKey,
    required TResult Function(Color color) changeCanvasBackgroundColor,
    required TResult Function() changeCanvasBackgroundImage,
    required TResult Function() removeCanvasBackgroundImage,
    required TResult Function() duplicateSelectedElement,
  }) {
    return addImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
  }) {
    return addImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
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
    required TResult Function(Undo value) undo,
    required TResult Function(Redo value) redo,
    required TResult Function(AddStaticText value) addStaticText,
    required TResult Function(StaticTextChanged value) staticTextChanged,
    required TResult Function(StaticTextStyleChanged value) staticTextStyleChanged,
    required TResult Function(StaticTextAlignChanged value) staticTextAlignChanged,
    required TResult Function(AddVariableText value) addVariableText,
    required TResult Function(VariableTextFileChanged value) variableTextFileChanged,
    required TResult Function(VariableTextStyleChanged value) variableTextStyleChanged,
    required TResult Function(VariableTextAlignChanged value) variableTextAlignChanged,
    required TResult Function(AddImage value) addImage,
    required TResult Function(CanvasDragStart value) canvasDragStart,
    required TResult Function(CanvasDragUpdate value) canvasDragUpdate,
    required TResult Function(CanvasDragEnd value) canvasDragEnd,
    required TResult Function(ElementDragStart value) elementDragStart,
    required TResult Function(ElementDragUpdate value) elementDragUpdate,
    required TResult Function(ElementDragEnd value) elementDragEnd,
    required TResult Function(CanvasTap value) canvasTap,
    required TResult Function(ElementTap value) elementTap,
    required TResult Function(RemoveSelectedElement value) removeSelectedElement,
    required TResult Function(DeselectElement value) deselectElement,
    required TResult Function(BringSelectedElementToFront value) bringSelectedElementToFront,
    required TResult Function(ResizeUpdate value) resizeUpdate,
    required TResult Function(ResizeEnd value) resizeEnd,
    required TResult Function(SelectedElementSizeChanged value) selectedElementSizeChanged,
    required TResult Function(SelectedElementPositionChanged value) selectedElementPositionChanged,
    required TResult Function(TextEditingModeChanged value) textEditingModeChanged,
    required TResult Function(ClearEditor value) clearEditor,
    required TResult Function(SetCanvasKey value) setCanvasKey,
    required TResult Function(ChangeCanvasBackgroundColor value) changeCanvasBackgroundColor,
    required TResult Function(ChangeCanvasBackgroundImage value) changeCanvasBackgroundImage,
    required TResult Function(RemoveCanvasBackgroundImage value) removeCanvasBackgroundImage,
    required TResult Function(DuplicateSelectedElement value) duplicateSelectedElement,
  }) {
    return addImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
  }) {
    return addImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (addImage != null) {
      return addImage(this);
    }
    return orElse();
  }
}

abstract class AddImage implements EditorEvent {
  const factory AddImage() = _$AddImage;
}

/// @nodoc
abstract class _$$CanvasDragStartCopyWith<$Res> {
  factory _$$CanvasDragStartCopyWith(_$CanvasDragStart value, $Res Function(_$CanvasDragStart) then) =
      __$$CanvasDragStartCopyWithImpl<$Res>;
  $Res call({Offset localPosition});
}

/// @nodoc
class __$$CanvasDragStartCopyWithImpl<$Res> extends _$EditorEventCopyWithImpl<$Res>
    implements _$$CanvasDragStartCopyWith<$Res> {
  __$$CanvasDragStartCopyWithImpl(_$CanvasDragStart _value, $Res Function(_$CanvasDragStart) _then)
      : super(_value, (v) => _then(v as _$CanvasDragStart));

  @override
  _$CanvasDragStart get _value => super._value as _$CanvasDragStart;

  @override
  $Res call({
    Object? localPosition = freezed,
  }) {
    return _then(_$CanvasDragStart(
      localPosition == freezed
          ? _value.localPosition
          : localPosition // ignore: cast_nullable_to_non_nullable
              as Offset,
    ));
  }
}

/// @nodoc

class _$CanvasDragStart implements CanvasDragStart {
  const _$CanvasDragStart(this.localPosition);

  /// The local position in the editor widget where the drag started.
  @override
  final Offset localPosition;

  @override
  String toString() {
    return 'EditorEvent.canvasDragStart(localPosition: $localPosition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CanvasDragStart &&
            const DeepCollectionEquality().equals(other.localPosition, localPosition));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(localPosition));

  @JsonKey(ignore: true)
  @override
  _$$CanvasDragStartCopyWith<_$CanvasDragStart> get copyWith =>
      __$$CanvasDragStartCopyWithImpl<_$CanvasDragStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addStaticText,
    required TResult Function(String updatedText) staticTextChanged,
    required TResult Function(TextStyle? updatedTextStyle) staticTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) staticTextAlignChanged,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addVariableText,
    required TResult Function() variableTextFileChanged,
    required TResult Function(TextStyle? updatedTextStyle) variableTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) variableTextAlignChanged,
    required TResult Function() addImage,
    required TResult Function(Offset localPosition) canvasDragStart,
    required TResult Function(Offset delta) canvasDragUpdate,
    required TResult Function() canvasDragEnd,
    required TResult Function(Element draggedElement, Offset localPosition) elementDragStart,
    required TResult Function(Offset delta) elementDragUpdate,
    required TResult Function() elementDragEnd,
    required TResult Function() canvasTap,
    required TResult Function(Element element) elementTap,
    required TResult Function() removeSelectedElement,
    required TResult Function() deselectElement,
    required TResult Function() bringSelectedElementToFront,
    required TResult Function(ResizeDirection resizeDirection, Offset delta) resizeUpdate,
    required TResult Function() resizeEnd,
    required TResult Function(Size updatedSize) selectedElementSizeChanged,
    required TResult Function(Offset updatedPosition) selectedElementPositionChanged,
    required TResult Function(bool isEditingTextElement) textEditingModeChanged,
    required TResult Function() clearEditor,
    required TResult Function(Option<GlobalKey<State<StatefulWidget>>> key) setCanvasKey,
    required TResult Function(Color color) changeCanvasBackgroundColor,
    required TResult Function() changeCanvasBackgroundImage,
    required TResult Function() removeCanvasBackgroundImage,
    required TResult Function() duplicateSelectedElement,
  }) {
    return canvasDragStart(localPosition);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
  }) {
    return canvasDragStart?.call(localPosition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (canvasDragStart != null) {
      return canvasDragStart(localPosition);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Undo value) undo,
    required TResult Function(Redo value) redo,
    required TResult Function(AddStaticText value) addStaticText,
    required TResult Function(StaticTextChanged value) staticTextChanged,
    required TResult Function(StaticTextStyleChanged value) staticTextStyleChanged,
    required TResult Function(StaticTextAlignChanged value) staticTextAlignChanged,
    required TResult Function(AddVariableText value) addVariableText,
    required TResult Function(VariableTextFileChanged value) variableTextFileChanged,
    required TResult Function(VariableTextStyleChanged value) variableTextStyleChanged,
    required TResult Function(VariableTextAlignChanged value) variableTextAlignChanged,
    required TResult Function(AddImage value) addImage,
    required TResult Function(CanvasDragStart value) canvasDragStart,
    required TResult Function(CanvasDragUpdate value) canvasDragUpdate,
    required TResult Function(CanvasDragEnd value) canvasDragEnd,
    required TResult Function(ElementDragStart value) elementDragStart,
    required TResult Function(ElementDragUpdate value) elementDragUpdate,
    required TResult Function(ElementDragEnd value) elementDragEnd,
    required TResult Function(CanvasTap value) canvasTap,
    required TResult Function(ElementTap value) elementTap,
    required TResult Function(RemoveSelectedElement value) removeSelectedElement,
    required TResult Function(DeselectElement value) deselectElement,
    required TResult Function(BringSelectedElementToFront value) bringSelectedElementToFront,
    required TResult Function(ResizeUpdate value) resizeUpdate,
    required TResult Function(ResizeEnd value) resizeEnd,
    required TResult Function(SelectedElementSizeChanged value) selectedElementSizeChanged,
    required TResult Function(SelectedElementPositionChanged value) selectedElementPositionChanged,
    required TResult Function(TextEditingModeChanged value) textEditingModeChanged,
    required TResult Function(ClearEditor value) clearEditor,
    required TResult Function(SetCanvasKey value) setCanvasKey,
    required TResult Function(ChangeCanvasBackgroundColor value) changeCanvasBackgroundColor,
    required TResult Function(ChangeCanvasBackgroundImage value) changeCanvasBackgroundImage,
    required TResult Function(RemoveCanvasBackgroundImage value) removeCanvasBackgroundImage,
    required TResult Function(DuplicateSelectedElement value) duplicateSelectedElement,
  }) {
    return canvasDragStart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
  }) {
    return canvasDragStart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (canvasDragStart != null) {
      return canvasDragStart(this);
    }
    return orElse();
  }
}

abstract class CanvasDragStart implements EditorEvent {
  const factory CanvasDragStart(final Offset localPosition) = _$CanvasDragStart;

  /// The local position in the editor widget where the drag started.
  Offset get localPosition;
  @JsonKey(ignore: true)
  _$$CanvasDragStartCopyWith<_$CanvasDragStart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CanvasDragUpdateCopyWith<$Res> {
  factory _$$CanvasDragUpdateCopyWith(_$CanvasDragUpdate value, $Res Function(_$CanvasDragUpdate) then) =
      __$$CanvasDragUpdateCopyWithImpl<$Res>;
  $Res call({Offset delta});
}

/// @nodoc
class __$$CanvasDragUpdateCopyWithImpl<$Res> extends _$EditorEventCopyWithImpl<$Res>
    implements _$$CanvasDragUpdateCopyWith<$Res> {
  __$$CanvasDragUpdateCopyWithImpl(_$CanvasDragUpdate _value, $Res Function(_$CanvasDragUpdate) _then)
      : super(_value, (v) => _then(v as _$CanvasDragUpdate));

  @override
  _$CanvasDragUpdate get _value => super._value as _$CanvasDragUpdate;

  @override
  $Res call({
    Object? delta = freezed,
  }) {
    return _then(_$CanvasDragUpdate(
      delta == freezed
          ? _value.delta
          : delta // ignore: cast_nullable_to_non_nullable
              as Offset,
    ));
  }
}

/// @nodoc

class _$CanvasDragUpdate implements CanvasDragUpdate {
  const _$CanvasDragUpdate(this.delta);

  /// The delta of the drag (i.e. the amount of the drag).
  @override
  final Offset delta;

  @override
  String toString() {
    return 'EditorEvent.canvasDragUpdate(delta: $delta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CanvasDragUpdate &&
            const DeepCollectionEquality().equals(other.delta, delta));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(delta));

  @JsonKey(ignore: true)
  @override
  _$$CanvasDragUpdateCopyWith<_$CanvasDragUpdate> get copyWith =>
      __$$CanvasDragUpdateCopyWithImpl<_$CanvasDragUpdate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addStaticText,
    required TResult Function(String updatedText) staticTextChanged,
    required TResult Function(TextStyle? updatedTextStyle) staticTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) staticTextAlignChanged,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addVariableText,
    required TResult Function() variableTextFileChanged,
    required TResult Function(TextStyle? updatedTextStyle) variableTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) variableTextAlignChanged,
    required TResult Function() addImage,
    required TResult Function(Offset localPosition) canvasDragStart,
    required TResult Function(Offset delta) canvasDragUpdate,
    required TResult Function() canvasDragEnd,
    required TResult Function(Element draggedElement, Offset localPosition) elementDragStart,
    required TResult Function(Offset delta) elementDragUpdate,
    required TResult Function() elementDragEnd,
    required TResult Function() canvasTap,
    required TResult Function(Element element) elementTap,
    required TResult Function() removeSelectedElement,
    required TResult Function() deselectElement,
    required TResult Function() bringSelectedElementToFront,
    required TResult Function(ResizeDirection resizeDirection, Offset delta) resizeUpdate,
    required TResult Function() resizeEnd,
    required TResult Function(Size updatedSize) selectedElementSizeChanged,
    required TResult Function(Offset updatedPosition) selectedElementPositionChanged,
    required TResult Function(bool isEditingTextElement) textEditingModeChanged,
    required TResult Function() clearEditor,
    required TResult Function(Option<GlobalKey<State<StatefulWidget>>> key) setCanvasKey,
    required TResult Function(Color color) changeCanvasBackgroundColor,
    required TResult Function() changeCanvasBackgroundImage,
    required TResult Function() removeCanvasBackgroundImage,
    required TResult Function() duplicateSelectedElement,
  }) {
    return canvasDragUpdate(delta);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
  }) {
    return canvasDragUpdate?.call(delta);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (canvasDragUpdate != null) {
      return canvasDragUpdate(delta);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Undo value) undo,
    required TResult Function(Redo value) redo,
    required TResult Function(AddStaticText value) addStaticText,
    required TResult Function(StaticTextChanged value) staticTextChanged,
    required TResult Function(StaticTextStyleChanged value) staticTextStyleChanged,
    required TResult Function(StaticTextAlignChanged value) staticTextAlignChanged,
    required TResult Function(AddVariableText value) addVariableText,
    required TResult Function(VariableTextFileChanged value) variableTextFileChanged,
    required TResult Function(VariableTextStyleChanged value) variableTextStyleChanged,
    required TResult Function(VariableTextAlignChanged value) variableTextAlignChanged,
    required TResult Function(AddImage value) addImage,
    required TResult Function(CanvasDragStart value) canvasDragStart,
    required TResult Function(CanvasDragUpdate value) canvasDragUpdate,
    required TResult Function(CanvasDragEnd value) canvasDragEnd,
    required TResult Function(ElementDragStart value) elementDragStart,
    required TResult Function(ElementDragUpdate value) elementDragUpdate,
    required TResult Function(ElementDragEnd value) elementDragEnd,
    required TResult Function(CanvasTap value) canvasTap,
    required TResult Function(ElementTap value) elementTap,
    required TResult Function(RemoveSelectedElement value) removeSelectedElement,
    required TResult Function(DeselectElement value) deselectElement,
    required TResult Function(BringSelectedElementToFront value) bringSelectedElementToFront,
    required TResult Function(ResizeUpdate value) resizeUpdate,
    required TResult Function(ResizeEnd value) resizeEnd,
    required TResult Function(SelectedElementSizeChanged value) selectedElementSizeChanged,
    required TResult Function(SelectedElementPositionChanged value) selectedElementPositionChanged,
    required TResult Function(TextEditingModeChanged value) textEditingModeChanged,
    required TResult Function(ClearEditor value) clearEditor,
    required TResult Function(SetCanvasKey value) setCanvasKey,
    required TResult Function(ChangeCanvasBackgroundColor value) changeCanvasBackgroundColor,
    required TResult Function(ChangeCanvasBackgroundImage value) changeCanvasBackgroundImage,
    required TResult Function(RemoveCanvasBackgroundImage value) removeCanvasBackgroundImage,
    required TResult Function(DuplicateSelectedElement value) duplicateSelectedElement,
  }) {
    return canvasDragUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
  }) {
    return canvasDragUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (canvasDragUpdate != null) {
      return canvasDragUpdate(this);
    }
    return orElse();
  }
}

abstract class CanvasDragUpdate implements EditorEvent {
  const factory CanvasDragUpdate(final Offset delta) = _$CanvasDragUpdate;

  /// The delta of the drag (i.e. the amount of the drag).
  Offset get delta;
  @JsonKey(ignore: true)
  _$$CanvasDragUpdateCopyWith<_$CanvasDragUpdate> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CanvasDragEndCopyWith<$Res> {
  factory _$$CanvasDragEndCopyWith(_$CanvasDragEnd value, $Res Function(_$CanvasDragEnd) then) =
      __$$CanvasDragEndCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CanvasDragEndCopyWithImpl<$Res> extends _$EditorEventCopyWithImpl<$Res>
    implements _$$CanvasDragEndCopyWith<$Res> {
  __$$CanvasDragEndCopyWithImpl(_$CanvasDragEnd _value, $Res Function(_$CanvasDragEnd) _then)
      : super(_value, (v) => _then(v as _$CanvasDragEnd));

  @override
  _$CanvasDragEnd get _value => super._value as _$CanvasDragEnd;
}

/// @nodoc

class _$CanvasDragEnd implements CanvasDragEnd {
  const _$CanvasDragEnd();

  @override
  String toString() {
    return 'EditorEvent.canvasDragEnd()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$CanvasDragEnd);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addStaticText,
    required TResult Function(String updatedText) staticTextChanged,
    required TResult Function(TextStyle? updatedTextStyle) staticTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) staticTextAlignChanged,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addVariableText,
    required TResult Function() variableTextFileChanged,
    required TResult Function(TextStyle? updatedTextStyle) variableTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) variableTextAlignChanged,
    required TResult Function() addImage,
    required TResult Function(Offset localPosition) canvasDragStart,
    required TResult Function(Offset delta) canvasDragUpdate,
    required TResult Function() canvasDragEnd,
    required TResult Function(Element draggedElement, Offset localPosition) elementDragStart,
    required TResult Function(Offset delta) elementDragUpdate,
    required TResult Function() elementDragEnd,
    required TResult Function() canvasTap,
    required TResult Function(Element element) elementTap,
    required TResult Function() removeSelectedElement,
    required TResult Function() deselectElement,
    required TResult Function() bringSelectedElementToFront,
    required TResult Function(ResizeDirection resizeDirection, Offset delta) resizeUpdate,
    required TResult Function() resizeEnd,
    required TResult Function(Size updatedSize) selectedElementSizeChanged,
    required TResult Function(Offset updatedPosition) selectedElementPositionChanged,
    required TResult Function(bool isEditingTextElement) textEditingModeChanged,
    required TResult Function() clearEditor,
    required TResult Function(Option<GlobalKey<State<StatefulWidget>>> key) setCanvasKey,
    required TResult Function(Color color) changeCanvasBackgroundColor,
    required TResult Function() changeCanvasBackgroundImage,
    required TResult Function() removeCanvasBackgroundImage,
    required TResult Function() duplicateSelectedElement,
  }) {
    return canvasDragEnd();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
  }) {
    return canvasDragEnd?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (canvasDragEnd != null) {
      return canvasDragEnd();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Undo value) undo,
    required TResult Function(Redo value) redo,
    required TResult Function(AddStaticText value) addStaticText,
    required TResult Function(StaticTextChanged value) staticTextChanged,
    required TResult Function(StaticTextStyleChanged value) staticTextStyleChanged,
    required TResult Function(StaticTextAlignChanged value) staticTextAlignChanged,
    required TResult Function(AddVariableText value) addVariableText,
    required TResult Function(VariableTextFileChanged value) variableTextFileChanged,
    required TResult Function(VariableTextStyleChanged value) variableTextStyleChanged,
    required TResult Function(VariableTextAlignChanged value) variableTextAlignChanged,
    required TResult Function(AddImage value) addImage,
    required TResult Function(CanvasDragStart value) canvasDragStart,
    required TResult Function(CanvasDragUpdate value) canvasDragUpdate,
    required TResult Function(CanvasDragEnd value) canvasDragEnd,
    required TResult Function(ElementDragStart value) elementDragStart,
    required TResult Function(ElementDragUpdate value) elementDragUpdate,
    required TResult Function(ElementDragEnd value) elementDragEnd,
    required TResult Function(CanvasTap value) canvasTap,
    required TResult Function(ElementTap value) elementTap,
    required TResult Function(RemoveSelectedElement value) removeSelectedElement,
    required TResult Function(DeselectElement value) deselectElement,
    required TResult Function(BringSelectedElementToFront value) bringSelectedElementToFront,
    required TResult Function(ResizeUpdate value) resizeUpdate,
    required TResult Function(ResizeEnd value) resizeEnd,
    required TResult Function(SelectedElementSizeChanged value) selectedElementSizeChanged,
    required TResult Function(SelectedElementPositionChanged value) selectedElementPositionChanged,
    required TResult Function(TextEditingModeChanged value) textEditingModeChanged,
    required TResult Function(ClearEditor value) clearEditor,
    required TResult Function(SetCanvasKey value) setCanvasKey,
    required TResult Function(ChangeCanvasBackgroundColor value) changeCanvasBackgroundColor,
    required TResult Function(ChangeCanvasBackgroundImage value) changeCanvasBackgroundImage,
    required TResult Function(RemoveCanvasBackgroundImage value) removeCanvasBackgroundImage,
    required TResult Function(DuplicateSelectedElement value) duplicateSelectedElement,
  }) {
    return canvasDragEnd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
  }) {
    return canvasDragEnd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (canvasDragEnd != null) {
      return canvasDragEnd(this);
    }
    return orElse();
  }
}

abstract class CanvasDragEnd implements EditorEvent {
  const factory CanvasDragEnd() = _$CanvasDragEnd;
}

/// @nodoc
abstract class _$$ElementDragStartCopyWith<$Res> {
  factory _$$ElementDragStartCopyWith(_$ElementDragStart value, $Res Function(_$ElementDragStart) then) =
      __$$ElementDragStartCopyWithImpl<$Res>;
  $Res call({Element draggedElement, Offset localPosition});

  $ElementCopyWith<$Res> get draggedElement;
}

/// @nodoc
class __$$ElementDragStartCopyWithImpl<$Res> extends _$EditorEventCopyWithImpl<$Res>
    implements _$$ElementDragStartCopyWith<$Res> {
  __$$ElementDragStartCopyWithImpl(_$ElementDragStart _value, $Res Function(_$ElementDragStart) _then)
      : super(_value, (v) => _then(v as _$ElementDragStart));

  @override
  _$ElementDragStart get _value => super._value as _$ElementDragStart;

  @override
  $Res call({
    Object? draggedElement = freezed,
    Object? localPosition = freezed,
  }) {
    return _then(_$ElementDragStart(
      draggedElement == freezed
          ? _value.draggedElement
          : draggedElement // ignore: cast_nullable_to_non_nullable
              as Element,
      localPosition == freezed
          ? _value.localPosition
          : localPosition // ignore: cast_nullable_to_non_nullable
              as Offset,
    ));
  }

  @override
  $ElementCopyWith<$Res> get draggedElement {
    return $ElementCopyWith<$Res>(_value.draggedElement, (value) {
      return _then(_value.copyWith(draggedElement: value));
    });
  }
}

/// @nodoc

class _$ElementDragStart implements ElementDragStart {
  const _$ElementDragStart(this.draggedElement, this.localPosition);

  /// The element being dragged.
  @override
  final Element draggedElement;

  /// The local position in the editor widget where the drag started.
  @override
  final Offset localPosition;

  @override
  String toString() {
    return 'EditorEvent.elementDragStart(draggedElement: $draggedElement, localPosition: $localPosition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ElementDragStart &&
            const DeepCollectionEquality().equals(other.draggedElement, draggedElement) &&
            const DeepCollectionEquality().equals(other.localPosition, localPosition));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(draggedElement),
      const DeepCollectionEquality().hash(localPosition));

  @JsonKey(ignore: true)
  @override
  _$$ElementDragStartCopyWith<_$ElementDragStart> get copyWith =>
      __$$ElementDragStartCopyWithImpl<_$ElementDragStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addStaticText,
    required TResult Function(String updatedText) staticTextChanged,
    required TResult Function(TextStyle? updatedTextStyle) staticTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) staticTextAlignChanged,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addVariableText,
    required TResult Function() variableTextFileChanged,
    required TResult Function(TextStyle? updatedTextStyle) variableTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) variableTextAlignChanged,
    required TResult Function() addImage,
    required TResult Function(Offset localPosition) canvasDragStart,
    required TResult Function(Offset delta) canvasDragUpdate,
    required TResult Function() canvasDragEnd,
    required TResult Function(Element draggedElement, Offset localPosition) elementDragStart,
    required TResult Function(Offset delta) elementDragUpdate,
    required TResult Function() elementDragEnd,
    required TResult Function() canvasTap,
    required TResult Function(Element element) elementTap,
    required TResult Function() removeSelectedElement,
    required TResult Function() deselectElement,
    required TResult Function() bringSelectedElementToFront,
    required TResult Function(ResizeDirection resizeDirection, Offset delta) resizeUpdate,
    required TResult Function() resizeEnd,
    required TResult Function(Size updatedSize) selectedElementSizeChanged,
    required TResult Function(Offset updatedPosition) selectedElementPositionChanged,
    required TResult Function(bool isEditingTextElement) textEditingModeChanged,
    required TResult Function() clearEditor,
    required TResult Function(Option<GlobalKey<State<StatefulWidget>>> key) setCanvasKey,
    required TResult Function(Color color) changeCanvasBackgroundColor,
    required TResult Function() changeCanvasBackgroundImage,
    required TResult Function() removeCanvasBackgroundImage,
    required TResult Function() duplicateSelectedElement,
  }) {
    return elementDragStart(draggedElement, localPosition);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
  }) {
    return elementDragStart?.call(draggedElement, localPosition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (elementDragStart != null) {
      return elementDragStart(draggedElement, localPosition);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Undo value) undo,
    required TResult Function(Redo value) redo,
    required TResult Function(AddStaticText value) addStaticText,
    required TResult Function(StaticTextChanged value) staticTextChanged,
    required TResult Function(StaticTextStyleChanged value) staticTextStyleChanged,
    required TResult Function(StaticTextAlignChanged value) staticTextAlignChanged,
    required TResult Function(AddVariableText value) addVariableText,
    required TResult Function(VariableTextFileChanged value) variableTextFileChanged,
    required TResult Function(VariableTextStyleChanged value) variableTextStyleChanged,
    required TResult Function(VariableTextAlignChanged value) variableTextAlignChanged,
    required TResult Function(AddImage value) addImage,
    required TResult Function(CanvasDragStart value) canvasDragStart,
    required TResult Function(CanvasDragUpdate value) canvasDragUpdate,
    required TResult Function(CanvasDragEnd value) canvasDragEnd,
    required TResult Function(ElementDragStart value) elementDragStart,
    required TResult Function(ElementDragUpdate value) elementDragUpdate,
    required TResult Function(ElementDragEnd value) elementDragEnd,
    required TResult Function(CanvasTap value) canvasTap,
    required TResult Function(ElementTap value) elementTap,
    required TResult Function(RemoveSelectedElement value) removeSelectedElement,
    required TResult Function(DeselectElement value) deselectElement,
    required TResult Function(BringSelectedElementToFront value) bringSelectedElementToFront,
    required TResult Function(ResizeUpdate value) resizeUpdate,
    required TResult Function(ResizeEnd value) resizeEnd,
    required TResult Function(SelectedElementSizeChanged value) selectedElementSizeChanged,
    required TResult Function(SelectedElementPositionChanged value) selectedElementPositionChanged,
    required TResult Function(TextEditingModeChanged value) textEditingModeChanged,
    required TResult Function(ClearEditor value) clearEditor,
    required TResult Function(SetCanvasKey value) setCanvasKey,
    required TResult Function(ChangeCanvasBackgroundColor value) changeCanvasBackgroundColor,
    required TResult Function(ChangeCanvasBackgroundImage value) changeCanvasBackgroundImage,
    required TResult Function(RemoveCanvasBackgroundImage value) removeCanvasBackgroundImage,
    required TResult Function(DuplicateSelectedElement value) duplicateSelectedElement,
  }) {
    return elementDragStart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
  }) {
    return elementDragStart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (elementDragStart != null) {
      return elementDragStart(this);
    }
    return orElse();
  }
}

abstract class ElementDragStart implements EditorEvent {
  const factory ElementDragStart(final Element draggedElement, final Offset localPosition) = _$ElementDragStart;

  /// The element being dragged.
  Element get draggedElement;

  /// The local position in the editor widget where the drag started.
  Offset get localPosition;
  @JsonKey(ignore: true)
  _$$ElementDragStartCopyWith<_$ElementDragStart> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ElementDragUpdateCopyWith<$Res> {
  factory _$$ElementDragUpdateCopyWith(_$ElementDragUpdate value, $Res Function(_$ElementDragUpdate) then) =
      __$$ElementDragUpdateCopyWithImpl<$Res>;
  $Res call({Offset delta});
}

/// @nodoc
class __$$ElementDragUpdateCopyWithImpl<$Res> extends _$EditorEventCopyWithImpl<$Res>
    implements _$$ElementDragUpdateCopyWith<$Res> {
  __$$ElementDragUpdateCopyWithImpl(_$ElementDragUpdate _value, $Res Function(_$ElementDragUpdate) _then)
      : super(_value, (v) => _then(v as _$ElementDragUpdate));

  @override
  _$ElementDragUpdate get _value => super._value as _$ElementDragUpdate;

  @override
  $Res call({
    Object? delta = freezed,
  }) {
    return _then(_$ElementDragUpdate(
      delta == freezed
          ? _value.delta
          : delta // ignore: cast_nullable_to_non_nullable
              as Offset,
    ));
  }
}

/// @nodoc

class _$ElementDragUpdate implements ElementDragUpdate {
  const _$ElementDragUpdate(this.delta);

  /// The delta of the drag (i.e. the amount of the drag).
  @override
  final Offset delta;

  @override
  String toString() {
    return 'EditorEvent.elementDragUpdate(delta: $delta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ElementDragUpdate &&
            const DeepCollectionEquality().equals(other.delta, delta));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(delta));

  @JsonKey(ignore: true)
  @override
  _$$ElementDragUpdateCopyWith<_$ElementDragUpdate> get copyWith =>
      __$$ElementDragUpdateCopyWithImpl<_$ElementDragUpdate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addStaticText,
    required TResult Function(String updatedText) staticTextChanged,
    required TResult Function(TextStyle? updatedTextStyle) staticTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) staticTextAlignChanged,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addVariableText,
    required TResult Function() variableTextFileChanged,
    required TResult Function(TextStyle? updatedTextStyle) variableTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) variableTextAlignChanged,
    required TResult Function() addImage,
    required TResult Function(Offset localPosition) canvasDragStart,
    required TResult Function(Offset delta) canvasDragUpdate,
    required TResult Function() canvasDragEnd,
    required TResult Function(Element draggedElement, Offset localPosition) elementDragStart,
    required TResult Function(Offset delta) elementDragUpdate,
    required TResult Function() elementDragEnd,
    required TResult Function() canvasTap,
    required TResult Function(Element element) elementTap,
    required TResult Function() removeSelectedElement,
    required TResult Function() deselectElement,
    required TResult Function() bringSelectedElementToFront,
    required TResult Function(ResizeDirection resizeDirection, Offset delta) resizeUpdate,
    required TResult Function() resizeEnd,
    required TResult Function(Size updatedSize) selectedElementSizeChanged,
    required TResult Function(Offset updatedPosition) selectedElementPositionChanged,
    required TResult Function(bool isEditingTextElement) textEditingModeChanged,
    required TResult Function() clearEditor,
    required TResult Function(Option<GlobalKey<State<StatefulWidget>>> key) setCanvasKey,
    required TResult Function(Color color) changeCanvasBackgroundColor,
    required TResult Function() changeCanvasBackgroundImage,
    required TResult Function() removeCanvasBackgroundImage,
    required TResult Function() duplicateSelectedElement,
  }) {
    return elementDragUpdate(delta);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
  }) {
    return elementDragUpdate?.call(delta);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (elementDragUpdate != null) {
      return elementDragUpdate(delta);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Undo value) undo,
    required TResult Function(Redo value) redo,
    required TResult Function(AddStaticText value) addStaticText,
    required TResult Function(StaticTextChanged value) staticTextChanged,
    required TResult Function(StaticTextStyleChanged value) staticTextStyleChanged,
    required TResult Function(StaticTextAlignChanged value) staticTextAlignChanged,
    required TResult Function(AddVariableText value) addVariableText,
    required TResult Function(VariableTextFileChanged value) variableTextFileChanged,
    required TResult Function(VariableTextStyleChanged value) variableTextStyleChanged,
    required TResult Function(VariableTextAlignChanged value) variableTextAlignChanged,
    required TResult Function(AddImage value) addImage,
    required TResult Function(CanvasDragStart value) canvasDragStart,
    required TResult Function(CanvasDragUpdate value) canvasDragUpdate,
    required TResult Function(CanvasDragEnd value) canvasDragEnd,
    required TResult Function(ElementDragStart value) elementDragStart,
    required TResult Function(ElementDragUpdate value) elementDragUpdate,
    required TResult Function(ElementDragEnd value) elementDragEnd,
    required TResult Function(CanvasTap value) canvasTap,
    required TResult Function(ElementTap value) elementTap,
    required TResult Function(RemoveSelectedElement value) removeSelectedElement,
    required TResult Function(DeselectElement value) deselectElement,
    required TResult Function(BringSelectedElementToFront value) bringSelectedElementToFront,
    required TResult Function(ResizeUpdate value) resizeUpdate,
    required TResult Function(ResizeEnd value) resizeEnd,
    required TResult Function(SelectedElementSizeChanged value) selectedElementSizeChanged,
    required TResult Function(SelectedElementPositionChanged value) selectedElementPositionChanged,
    required TResult Function(TextEditingModeChanged value) textEditingModeChanged,
    required TResult Function(ClearEditor value) clearEditor,
    required TResult Function(SetCanvasKey value) setCanvasKey,
    required TResult Function(ChangeCanvasBackgroundColor value) changeCanvasBackgroundColor,
    required TResult Function(ChangeCanvasBackgroundImage value) changeCanvasBackgroundImage,
    required TResult Function(RemoveCanvasBackgroundImage value) removeCanvasBackgroundImage,
    required TResult Function(DuplicateSelectedElement value) duplicateSelectedElement,
  }) {
    return elementDragUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
  }) {
    return elementDragUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (elementDragUpdate != null) {
      return elementDragUpdate(this);
    }
    return orElse();
  }
}

abstract class ElementDragUpdate implements EditorEvent {
  const factory ElementDragUpdate(final Offset delta) = _$ElementDragUpdate;

  /// The delta of the drag (i.e. the amount of the drag).
  Offset get delta;
  @JsonKey(ignore: true)
  _$$ElementDragUpdateCopyWith<_$ElementDragUpdate> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ElementDragEndCopyWith<$Res> {
  factory _$$ElementDragEndCopyWith(_$ElementDragEnd value, $Res Function(_$ElementDragEnd) then) =
      __$$ElementDragEndCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ElementDragEndCopyWithImpl<$Res> extends _$EditorEventCopyWithImpl<$Res>
    implements _$$ElementDragEndCopyWith<$Res> {
  __$$ElementDragEndCopyWithImpl(_$ElementDragEnd _value, $Res Function(_$ElementDragEnd) _then)
      : super(_value, (v) => _then(v as _$ElementDragEnd));

  @override
  _$ElementDragEnd get _value => super._value as _$ElementDragEnd;
}

/// @nodoc

class _$ElementDragEnd implements ElementDragEnd {
  const _$ElementDragEnd();

  @override
  String toString() {
    return 'EditorEvent.elementDragEnd()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$ElementDragEnd);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addStaticText,
    required TResult Function(String updatedText) staticTextChanged,
    required TResult Function(TextStyle? updatedTextStyle) staticTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) staticTextAlignChanged,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addVariableText,
    required TResult Function() variableTextFileChanged,
    required TResult Function(TextStyle? updatedTextStyle) variableTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) variableTextAlignChanged,
    required TResult Function() addImage,
    required TResult Function(Offset localPosition) canvasDragStart,
    required TResult Function(Offset delta) canvasDragUpdate,
    required TResult Function() canvasDragEnd,
    required TResult Function(Element draggedElement, Offset localPosition) elementDragStart,
    required TResult Function(Offset delta) elementDragUpdate,
    required TResult Function() elementDragEnd,
    required TResult Function() canvasTap,
    required TResult Function(Element element) elementTap,
    required TResult Function() removeSelectedElement,
    required TResult Function() deselectElement,
    required TResult Function() bringSelectedElementToFront,
    required TResult Function(ResizeDirection resizeDirection, Offset delta) resizeUpdate,
    required TResult Function() resizeEnd,
    required TResult Function(Size updatedSize) selectedElementSizeChanged,
    required TResult Function(Offset updatedPosition) selectedElementPositionChanged,
    required TResult Function(bool isEditingTextElement) textEditingModeChanged,
    required TResult Function() clearEditor,
    required TResult Function(Option<GlobalKey<State<StatefulWidget>>> key) setCanvasKey,
    required TResult Function(Color color) changeCanvasBackgroundColor,
    required TResult Function() changeCanvasBackgroundImage,
    required TResult Function() removeCanvasBackgroundImage,
    required TResult Function() duplicateSelectedElement,
  }) {
    return elementDragEnd();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
  }) {
    return elementDragEnd?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (elementDragEnd != null) {
      return elementDragEnd();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Undo value) undo,
    required TResult Function(Redo value) redo,
    required TResult Function(AddStaticText value) addStaticText,
    required TResult Function(StaticTextChanged value) staticTextChanged,
    required TResult Function(StaticTextStyleChanged value) staticTextStyleChanged,
    required TResult Function(StaticTextAlignChanged value) staticTextAlignChanged,
    required TResult Function(AddVariableText value) addVariableText,
    required TResult Function(VariableTextFileChanged value) variableTextFileChanged,
    required TResult Function(VariableTextStyleChanged value) variableTextStyleChanged,
    required TResult Function(VariableTextAlignChanged value) variableTextAlignChanged,
    required TResult Function(AddImage value) addImage,
    required TResult Function(CanvasDragStart value) canvasDragStart,
    required TResult Function(CanvasDragUpdate value) canvasDragUpdate,
    required TResult Function(CanvasDragEnd value) canvasDragEnd,
    required TResult Function(ElementDragStart value) elementDragStart,
    required TResult Function(ElementDragUpdate value) elementDragUpdate,
    required TResult Function(ElementDragEnd value) elementDragEnd,
    required TResult Function(CanvasTap value) canvasTap,
    required TResult Function(ElementTap value) elementTap,
    required TResult Function(RemoveSelectedElement value) removeSelectedElement,
    required TResult Function(DeselectElement value) deselectElement,
    required TResult Function(BringSelectedElementToFront value) bringSelectedElementToFront,
    required TResult Function(ResizeUpdate value) resizeUpdate,
    required TResult Function(ResizeEnd value) resizeEnd,
    required TResult Function(SelectedElementSizeChanged value) selectedElementSizeChanged,
    required TResult Function(SelectedElementPositionChanged value) selectedElementPositionChanged,
    required TResult Function(TextEditingModeChanged value) textEditingModeChanged,
    required TResult Function(ClearEditor value) clearEditor,
    required TResult Function(SetCanvasKey value) setCanvasKey,
    required TResult Function(ChangeCanvasBackgroundColor value) changeCanvasBackgroundColor,
    required TResult Function(ChangeCanvasBackgroundImage value) changeCanvasBackgroundImage,
    required TResult Function(RemoveCanvasBackgroundImage value) removeCanvasBackgroundImage,
    required TResult Function(DuplicateSelectedElement value) duplicateSelectedElement,
  }) {
    return elementDragEnd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
  }) {
    return elementDragEnd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (elementDragEnd != null) {
      return elementDragEnd(this);
    }
    return orElse();
  }
}

abstract class ElementDragEnd implements EditorEvent {
  const factory ElementDragEnd() = _$ElementDragEnd;
}

/// @nodoc
abstract class _$$CanvasTapCopyWith<$Res> {
  factory _$$CanvasTapCopyWith(_$CanvasTap value, $Res Function(_$CanvasTap) then) = __$$CanvasTapCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CanvasTapCopyWithImpl<$Res> extends _$EditorEventCopyWithImpl<$Res> implements _$$CanvasTapCopyWith<$Res> {
  __$$CanvasTapCopyWithImpl(_$CanvasTap _value, $Res Function(_$CanvasTap) _then)
      : super(_value, (v) => _then(v as _$CanvasTap));

  @override
  _$CanvasTap get _value => super._value as _$CanvasTap;
}

/// @nodoc

class _$CanvasTap implements CanvasTap {
  const _$CanvasTap();

  @override
  String toString() {
    return 'EditorEvent.canvasTap()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$CanvasTap);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addStaticText,
    required TResult Function(String updatedText) staticTextChanged,
    required TResult Function(TextStyle? updatedTextStyle) staticTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) staticTextAlignChanged,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addVariableText,
    required TResult Function() variableTextFileChanged,
    required TResult Function(TextStyle? updatedTextStyle) variableTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) variableTextAlignChanged,
    required TResult Function() addImage,
    required TResult Function(Offset localPosition) canvasDragStart,
    required TResult Function(Offset delta) canvasDragUpdate,
    required TResult Function() canvasDragEnd,
    required TResult Function(Element draggedElement, Offset localPosition) elementDragStart,
    required TResult Function(Offset delta) elementDragUpdate,
    required TResult Function() elementDragEnd,
    required TResult Function() canvasTap,
    required TResult Function(Element element) elementTap,
    required TResult Function() removeSelectedElement,
    required TResult Function() deselectElement,
    required TResult Function() bringSelectedElementToFront,
    required TResult Function(ResizeDirection resizeDirection, Offset delta) resizeUpdate,
    required TResult Function() resizeEnd,
    required TResult Function(Size updatedSize) selectedElementSizeChanged,
    required TResult Function(Offset updatedPosition) selectedElementPositionChanged,
    required TResult Function(bool isEditingTextElement) textEditingModeChanged,
    required TResult Function() clearEditor,
    required TResult Function(Option<GlobalKey<State<StatefulWidget>>> key) setCanvasKey,
    required TResult Function(Color color) changeCanvasBackgroundColor,
    required TResult Function() changeCanvasBackgroundImage,
    required TResult Function() removeCanvasBackgroundImage,
    required TResult Function() duplicateSelectedElement,
  }) {
    return canvasTap();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
  }) {
    return canvasTap?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (canvasTap != null) {
      return canvasTap();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Undo value) undo,
    required TResult Function(Redo value) redo,
    required TResult Function(AddStaticText value) addStaticText,
    required TResult Function(StaticTextChanged value) staticTextChanged,
    required TResult Function(StaticTextStyleChanged value) staticTextStyleChanged,
    required TResult Function(StaticTextAlignChanged value) staticTextAlignChanged,
    required TResult Function(AddVariableText value) addVariableText,
    required TResult Function(VariableTextFileChanged value) variableTextFileChanged,
    required TResult Function(VariableTextStyleChanged value) variableTextStyleChanged,
    required TResult Function(VariableTextAlignChanged value) variableTextAlignChanged,
    required TResult Function(AddImage value) addImage,
    required TResult Function(CanvasDragStart value) canvasDragStart,
    required TResult Function(CanvasDragUpdate value) canvasDragUpdate,
    required TResult Function(CanvasDragEnd value) canvasDragEnd,
    required TResult Function(ElementDragStart value) elementDragStart,
    required TResult Function(ElementDragUpdate value) elementDragUpdate,
    required TResult Function(ElementDragEnd value) elementDragEnd,
    required TResult Function(CanvasTap value) canvasTap,
    required TResult Function(ElementTap value) elementTap,
    required TResult Function(RemoveSelectedElement value) removeSelectedElement,
    required TResult Function(DeselectElement value) deselectElement,
    required TResult Function(BringSelectedElementToFront value) bringSelectedElementToFront,
    required TResult Function(ResizeUpdate value) resizeUpdate,
    required TResult Function(ResizeEnd value) resizeEnd,
    required TResult Function(SelectedElementSizeChanged value) selectedElementSizeChanged,
    required TResult Function(SelectedElementPositionChanged value) selectedElementPositionChanged,
    required TResult Function(TextEditingModeChanged value) textEditingModeChanged,
    required TResult Function(ClearEditor value) clearEditor,
    required TResult Function(SetCanvasKey value) setCanvasKey,
    required TResult Function(ChangeCanvasBackgroundColor value) changeCanvasBackgroundColor,
    required TResult Function(ChangeCanvasBackgroundImage value) changeCanvasBackgroundImage,
    required TResult Function(RemoveCanvasBackgroundImage value) removeCanvasBackgroundImage,
    required TResult Function(DuplicateSelectedElement value) duplicateSelectedElement,
  }) {
    return canvasTap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
  }) {
    return canvasTap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (canvasTap != null) {
      return canvasTap(this);
    }
    return orElse();
  }
}

abstract class CanvasTap implements EditorEvent {
  const factory CanvasTap() = _$CanvasTap;
}

/// @nodoc
abstract class _$$ElementTapCopyWith<$Res> {
  factory _$$ElementTapCopyWith(_$ElementTap value, $Res Function(_$ElementTap) then) =
      __$$ElementTapCopyWithImpl<$Res>;
  $Res call({Element element});

  $ElementCopyWith<$Res> get element;
}

/// @nodoc
class __$$ElementTapCopyWithImpl<$Res> extends _$EditorEventCopyWithImpl<$Res> implements _$$ElementTapCopyWith<$Res> {
  __$$ElementTapCopyWithImpl(_$ElementTap _value, $Res Function(_$ElementTap) _then)
      : super(_value, (v) => _then(v as _$ElementTap));

  @override
  _$ElementTap get _value => super._value as _$ElementTap;

  @override
  $Res call({
    Object? element = freezed,
  }) {
    return _then(_$ElementTap(
      element == freezed
          ? _value.element
          : element // ignore: cast_nullable_to_non_nullable
              as Element,
    ));
  }

  @override
  $ElementCopyWith<$Res> get element {
    return $ElementCopyWith<$Res>(_value.element, (value) {
      return _then(_value.copyWith(element: value));
    });
  }
}

/// @nodoc

class _$ElementTap implements ElementTap {
  const _$ElementTap(this.element);

  /// The element that has been tapped.
  @override
  final Element element;

  @override
  String toString() {
    return 'EditorEvent.elementTap(element: $element)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ElementTap &&
            const DeepCollectionEquality().equals(other.element, element));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(element));

  @JsonKey(ignore: true)
  @override
  _$$ElementTapCopyWith<_$ElementTap> get copyWith => __$$ElementTapCopyWithImpl<_$ElementTap>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addStaticText,
    required TResult Function(String updatedText) staticTextChanged,
    required TResult Function(TextStyle? updatedTextStyle) staticTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) staticTextAlignChanged,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addVariableText,
    required TResult Function() variableTextFileChanged,
    required TResult Function(TextStyle? updatedTextStyle) variableTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) variableTextAlignChanged,
    required TResult Function() addImage,
    required TResult Function(Offset localPosition) canvasDragStart,
    required TResult Function(Offset delta) canvasDragUpdate,
    required TResult Function() canvasDragEnd,
    required TResult Function(Element draggedElement, Offset localPosition) elementDragStart,
    required TResult Function(Offset delta) elementDragUpdate,
    required TResult Function() elementDragEnd,
    required TResult Function() canvasTap,
    required TResult Function(Element element) elementTap,
    required TResult Function() removeSelectedElement,
    required TResult Function() deselectElement,
    required TResult Function() bringSelectedElementToFront,
    required TResult Function(ResizeDirection resizeDirection, Offset delta) resizeUpdate,
    required TResult Function() resizeEnd,
    required TResult Function(Size updatedSize) selectedElementSizeChanged,
    required TResult Function(Offset updatedPosition) selectedElementPositionChanged,
    required TResult Function(bool isEditingTextElement) textEditingModeChanged,
    required TResult Function() clearEditor,
    required TResult Function(Option<GlobalKey<State<StatefulWidget>>> key) setCanvasKey,
    required TResult Function(Color color) changeCanvasBackgroundColor,
    required TResult Function() changeCanvasBackgroundImage,
    required TResult Function() removeCanvasBackgroundImage,
    required TResult Function() duplicateSelectedElement,
  }) {
    return elementTap(element);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
  }) {
    return elementTap?.call(element);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (elementTap != null) {
      return elementTap(element);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Undo value) undo,
    required TResult Function(Redo value) redo,
    required TResult Function(AddStaticText value) addStaticText,
    required TResult Function(StaticTextChanged value) staticTextChanged,
    required TResult Function(StaticTextStyleChanged value) staticTextStyleChanged,
    required TResult Function(StaticTextAlignChanged value) staticTextAlignChanged,
    required TResult Function(AddVariableText value) addVariableText,
    required TResult Function(VariableTextFileChanged value) variableTextFileChanged,
    required TResult Function(VariableTextStyleChanged value) variableTextStyleChanged,
    required TResult Function(VariableTextAlignChanged value) variableTextAlignChanged,
    required TResult Function(AddImage value) addImage,
    required TResult Function(CanvasDragStart value) canvasDragStart,
    required TResult Function(CanvasDragUpdate value) canvasDragUpdate,
    required TResult Function(CanvasDragEnd value) canvasDragEnd,
    required TResult Function(ElementDragStart value) elementDragStart,
    required TResult Function(ElementDragUpdate value) elementDragUpdate,
    required TResult Function(ElementDragEnd value) elementDragEnd,
    required TResult Function(CanvasTap value) canvasTap,
    required TResult Function(ElementTap value) elementTap,
    required TResult Function(RemoveSelectedElement value) removeSelectedElement,
    required TResult Function(DeselectElement value) deselectElement,
    required TResult Function(BringSelectedElementToFront value) bringSelectedElementToFront,
    required TResult Function(ResizeUpdate value) resizeUpdate,
    required TResult Function(ResizeEnd value) resizeEnd,
    required TResult Function(SelectedElementSizeChanged value) selectedElementSizeChanged,
    required TResult Function(SelectedElementPositionChanged value) selectedElementPositionChanged,
    required TResult Function(TextEditingModeChanged value) textEditingModeChanged,
    required TResult Function(ClearEditor value) clearEditor,
    required TResult Function(SetCanvasKey value) setCanvasKey,
    required TResult Function(ChangeCanvasBackgroundColor value) changeCanvasBackgroundColor,
    required TResult Function(ChangeCanvasBackgroundImage value) changeCanvasBackgroundImage,
    required TResult Function(RemoveCanvasBackgroundImage value) removeCanvasBackgroundImage,
    required TResult Function(DuplicateSelectedElement value) duplicateSelectedElement,
  }) {
    return elementTap(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
  }) {
    return elementTap?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (elementTap != null) {
      return elementTap(this);
    }
    return orElse();
  }
}

abstract class ElementTap implements EditorEvent {
  const factory ElementTap(final Element element) = _$ElementTap;

  /// The element that has been tapped.
  Element get element;
  @JsonKey(ignore: true)
  _$$ElementTapCopyWith<_$ElementTap> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveSelectedElementCopyWith<$Res> {
  factory _$$RemoveSelectedElementCopyWith(_$RemoveSelectedElement value, $Res Function(_$RemoveSelectedElement) then) =
      __$$RemoveSelectedElementCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemoveSelectedElementCopyWithImpl<$Res> extends _$EditorEventCopyWithImpl<$Res>
    implements _$$RemoveSelectedElementCopyWith<$Res> {
  __$$RemoveSelectedElementCopyWithImpl(_$RemoveSelectedElement _value, $Res Function(_$RemoveSelectedElement) _then)
      : super(_value, (v) => _then(v as _$RemoveSelectedElement));

  @override
  _$RemoveSelectedElement get _value => super._value as _$RemoveSelectedElement;
}

/// @nodoc

class _$RemoveSelectedElement implements RemoveSelectedElement {
  const _$RemoveSelectedElement();

  @override
  String toString() {
    return 'EditorEvent.removeSelectedElement()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$RemoveSelectedElement);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addStaticText,
    required TResult Function(String updatedText) staticTextChanged,
    required TResult Function(TextStyle? updatedTextStyle) staticTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) staticTextAlignChanged,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addVariableText,
    required TResult Function() variableTextFileChanged,
    required TResult Function(TextStyle? updatedTextStyle) variableTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) variableTextAlignChanged,
    required TResult Function() addImage,
    required TResult Function(Offset localPosition) canvasDragStart,
    required TResult Function(Offset delta) canvasDragUpdate,
    required TResult Function() canvasDragEnd,
    required TResult Function(Element draggedElement, Offset localPosition) elementDragStart,
    required TResult Function(Offset delta) elementDragUpdate,
    required TResult Function() elementDragEnd,
    required TResult Function() canvasTap,
    required TResult Function(Element element) elementTap,
    required TResult Function() removeSelectedElement,
    required TResult Function() deselectElement,
    required TResult Function() bringSelectedElementToFront,
    required TResult Function(ResizeDirection resizeDirection, Offset delta) resizeUpdate,
    required TResult Function() resizeEnd,
    required TResult Function(Size updatedSize) selectedElementSizeChanged,
    required TResult Function(Offset updatedPosition) selectedElementPositionChanged,
    required TResult Function(bool isEditingTextElement) textEditingModeChanged,
    required TResult Function() clearEditor,
    required TResult Function(Option<GlobalKey<State<StatefulWidget>>> key) setCanvasKey,
    required TResult Function(Color color) changeCanvasBackgroundColor,
    required TResult Function() changeCanvasBackgroundImage,
    required TResult Function() removeCanvasBackgroundImage,
    required TResult Function() duplicateSelectedElement,
  }) {
    return removeSelectedElement();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
  }) {
    return removeSelectedElement?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (removeSelectedElement != null) {
      return removeSelectedElement();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Undo value) undo,
    required TResult Function(Redo value) redo,
    required TResult Function(AddStaticText value) addStaticText,
    required TResult Function(StaticTextChanged value) staticTextChanged,
    required TResult Function(StaticTextStyleChanged value) staticTextStyleChanged,
    required TResult Function(StaticTextAlignChanged value) staticTextAlignChanged,
    required TResult Function(AddVariableText value) addVariableText,
    required TResult Function(VariableTextFileChanged value) variableTextFileChanged,
    required TResult Function(VariableTextStyleChanged value) variableTextStyleChanged,
    required TResult Function(VariableTextAlignChanged value) variableTextAlignChanged,
    required TResult Function(AddImage value) addImage,
    required TResult Function(CanvasDragStart value) canvasDragStart,
    required TResult Function(CanvasDragUpdate value) canvasDragUpdate,
    required TResult Function(CanvasDragEnd value) canvasDragEnd,
    required TResult Function(ElementDragStart value) elementDragStart,
    required TResult Function(ElementDragUpdate value) elementDragUpdate,
    required TResult Function(ElementDragEnd value) elementDragEnd,
    required TResult Function(CanvasTap value) canvasTap,
    required TResult Function(ElementTap value) elementTap,
    required TResult Function(RemoveSelectedElement value) removeSelectedElement,
    required TResult Function(DeselectElement value) deselectElement,
    required TResult Function(BringSelectedElementToFront value) bringSelectedElementToFront,
    required TResult Function(ResizeUpdate value) resizeUpdate,
    required TResult Function(ResizeEnd value) resizeEnd,
    required TResult Function(SelectedElementSizeChanged value) selectedElementSizeChanged,
    required TResult Function(SelectedElementPositionChanged value) selectedElementPositionChanged,
    required TResult Function(TextEditingModeChanged value) textEditingModeChanged,
    required TResult Function(ClearEditor value) clearEditor,
    required TResult Function(SetCanvasKey value) setCanvasKey,
    required TResult Function(ChangeCanvasBackgroundColor value) changeCanvasBackgroundColor,
    required TResult Function(ChangeCanvasBackgroundImage value) changeCanvasBackgroundImage,
    required TResult Function(RemoveCanvasBackgroundImage value) removeCanvasBackgroundImage,
    required TResult Function(DuplicateSelectedElement value) duplicateSelectedElement,
  }) {
    return removeSelectedElement(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
  }) {
    return removeSelectedElement?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (removeSelectedElement != null) {
      return removeSelectedElement(this);
    }
    return orElse();
  }
}

abstract class RemoveSelectedElement implements EditorEvent {
  const factory RemoveSelectedElement() = _$RemoveSelectedElement;
}

/// @nodoc
abstract class _$$DeselectElementCopyWith<$Res> {
  factory _$$DeselectElementCopyWith(_$DeselectElement value, $Res Function(_$DeselectElement) then) =
      __$$DeselectElementCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DeselectElementCopyWithImpl<$Res> extends _$EditorEventCopyWithImpl<$Res>
    implements _$$DeselectElementCopyWith<$Res> {
  __$$DeselectElementCopyWithImpl(_$DeselectElement _value, $Res Function(_$DeselectElement) _then)
      : super(_value, (v) => _then(v as _$DeselectElement));

  @override
  _$DeselectElement get _value => super._value as _$DeselectElement;
}

/// @nodoc

class _$DeselectElement implements DeselectElement {
  const _$DeselectElement();

  @override
  String toString() {
    return 'EditorEvent.deselectElement()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$DeselectElement);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addStaticText,
    required TResult Function(String updatedText) staticTextChanged,
    required TResult Function(TextStyle? updatedTextStyle) staticTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) staticTextAlignChanged,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addVariableText,
    required TResult Function() variableTextFileChanged,
    required TResult Function(TextStyle? updatedTextStyle) variableTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) variableTextAlignChanged,
    required TResult Function() addImage,
    required TResult Function(Offset localPosition) canvasDragStart,
    required TResult Function(Offset delta) canvasDragUpdate,
    required TResult Function() canvasDragEnd,
    required TResult Function(Element draggedElement, Offset localPosition) elementDragStart,
    required TResult Function(Offset delta) elementDragUpdate,
    required TResult Function() elementDragEnd,
    required TResult Function() canvasTap,
    required TResult Function(Element element) elementTap,
    required TResult Function() removeSelectedElement,
    required TResult Function() deselectElement,
    required TResult Function() bringSelectedElementToFront,
    required TResult Function(ResizeDirection resizeDirection, Offset delta) resizeUpdate,
    required TResult Function() resizeEnd,
    required TResult Function(Size updatedSize) selectedElementSizeChanged,
    required TResult Function(Offset updatedPosition) selectedElementPositionChanged,
    required TResult Function(bool isEditingTextElement) textEditingModeChanged,
    required TResult Function() clearEditor,
    required TResult Function(Option<GlobalKey<State<StatefulWidget>>> key) setCanvasKey,
    required TResult Function(Color color) changeCanvasBackgroundColor,
    required TResult Function() changeCanvasBackgroundImage,
    required TResult Function() removeCanvasBackgroundImage,
    required TResult Function() duplicateSelectedElement,
  }) {
    return deselectElement();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
  }) {
    return deselectElement?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (deselectElement != null) {
      return deselectElement();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Undo value) undo,
    required TResult Function(Redo value) redo,
    required TResult Function(AddStaticText value) addStaticText,
    required TResult Function(StaticTextChanged value) staticTextChanged,
    required TResult Function(StaticTextStyleChanged value) staticTextStyleChanged,
    required TResult Function(StaticTextAlignChanged value) staticTextAlignChanged,
    required TResult Function(AddVariableText value) addVariableText,
    required TResult Function(VariableTextFileChanged value) variableTextFileChanged,
    required TResult Function(VariableTextStyleChanged value) variableTextStyleChanged,
    required TResult Function(VariableTextAlignChanged value) variableTextAlignChanged,
    required TResult Function(AddImage value) addImage,
    required TResult Function(CanvasDragStart value) canvasDragStart,
    required TResult Function(CanvasDragUpdate value) canvasDragUpdate,
    required TResult Function(CanvasDragEnd value) canvasDragEnd,
    required TResult Function(ElementDragStart value) elementDragStart,
    required TResult Function(ElementDragUpdate value) elementDragUpdate,
    required TResult Function(ElementDragEnd value) elementDragEnd,
    required TResult Function(CanvasTap value) canvasTap,
    required TResult Function(ElementTap value) elementTap,
    required TResult Function(RemoveSelectedElement value) removeSelectedElement,
    required TResult Function(DeselectElement value) deselectElement,
    required TResult Function(BringSelectedElementToFront value) bringSelectedElementToFront,
    required TResult Function(ResizeUpdate value) resizeUpdate,
    required TResult Function(ResizeEnd value) resizeEnd,
    required TResult Function(SelectedElementSizeChanged value) selectedElementSizeChanged,
    required TResult Function(SelectedElementPositionChanged value) selectedElementPositionChanged,
    required TResult Function(TextEditingModeChanged value) textEditingModeChanged,
    required TResult Function(ClearEditor value) clearEditor,
    required TResult Function(SetCanvasKey value) setCanvasKey,
    required TResult Function(ChangeCanvasBackgroundColor value) changeCanvasBackgroundColor,
    required TResult Function(ChangeCanvasBackgroundImage value) changeCanvasBackgroundImage,
    required TResult Function(RemoveCanvasBackgroundImage value) removeCanvasBackgroundImage,
    required TResult Function(DuplicateSelectedElement value) duplicateSelectedElement,
  }) {
    return deselectElement(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
  }) {
    return deselectElement?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (deselectElement != null) {
      return deselectElement(this);
    }
    return orElse();
  }
}

abstract class DeselectElement implements EditorEvent {
  const factory DeselectElement() = _$DeselectElement;
}

/// @nodoc
abstract class _$$BringSelectedElementToFrontCopyWith<$Res> {
  factory _$$BringSelectedElementToFrontCopyWith(
          _$BringSelectedElementToFront value, $Res Function(_$BringSelectedElementToFront) then) =
      __$$BringSelectedElementToFrontCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BringSelectedElementToFrontCopyWithImpl<$Res> extends _$EditorEventCopyWithImpl<$Res>
    implements _$$BringSelectedElementToFrontCopyWith<$Res> {
  __$$BringSelectedElementToFrontCopyWithImpl(
      _$BringSelectedElementToFront _value, $Res Function(_$BringSelectedElementToFront) _then)
      : super(_value, (v) => _then(v as _$BringSelectedElementToFront));

  @override
  _$BringSelectedElementToFront get _value => super._value as _$BringSelectedElementToFront;
}

/// @nodoc

class _$BringSelectedElementToFront implements BringSelectedElementToFront {
  const _$BringSelectedElementToFront();

  @override
  String toString() {
    return 'EditorEvent.bringSelectedElementToFront()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$BringSelectedElementToFront);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addStaticText,
    required TResult Function(String updatedText) staticTextChanged,
    required TResult Function(TextStyle? updatedTextStyle) staticTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) staticTextAlignChanged,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addVariableText,
    required TResult Function() variableTextFileChanged,
    required TResult Function(TextStyle? updatedTextStyle) variableTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) variableTextAlignChanged,
    required TResult Function() addImage,
    required TResult Function(Offset localPosition) canvasDragStart,
    required TResult Function(Offset delta) canvasDragUpdate,
    required TResult Function() canvasDragEnd,
    required TResult Function(Element draggedElement, Offset localPosition) elementDragStart,
    required TResult Function(Offset delta) elementDragUpdate,
    required TResult Function() elementDragEnd,
    required TResult Function() canvasTap,
    required TResult Function(Element element) elementTap,
    required TResult Function() removeSelectedElement,
    required TResult Function() deselectElement,
    required TResult Function() bringSelectedElementToFront,
    required TResult Function(ResizeDirection resizeDirection, Offset delta) resizeUpdate,
    required TResult Function() resizeEnd,
    required TResult Function(Size updatedSize) selectedElementSizeChanged,
    required TResult Function(Offset updatedPosition) selectedElementPositionChanged,
    required TResult Function(bool isEditingTextElement) textEditingModeChanged,
    required TResult Function() clearEditor,
    required TResult Function(Option<GlobalKey<State<StatefulWidget>>> key) setCanvasKey,
    required TResult Function(Color color) changeCanvasBackgroundColor,
    required TResult Function() changeCanvasBackgroundImage,
    required TResult Function() removeCanvasBackgroundImage,
    required TResult Function() duplicateSelectedElement,
  }) {
    return bringSelectedElementToFront();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
  }) {
    return bringSelectedElementToFront?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (bringSelectedElementToFront != null) {
      return bringSelectedElementToFront();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Undo value) undo,
    required TResult Function(Redo value) redo,
    required TResult Function(AddStaticText value) addStaticText,
    required TResult Function(StaticTextChanged value) staticTextChanged,
    required TResult Function(StaticTextStyleChanged value) staticTextStyleChanged,
    required TResult Function(StaticTextAlignChanged value) staticTextAlignChanged,
    required TResult Function(AddVariableText value) addVariableText,
    required TResult Function(VariableTextFileChanged value) variableTextFileChanged,
    required TResult Function(VariableTextStyleChanged value) variableTextStyleChanged,
    required TResult Function(VariableTextAlignChanged value) variableTextAlignChanged,
    required TResult Function(AddImage value) addImage,
    required TResult Function(CanvasDragStart value) canvasDragStart,
    required TResult Function(CanvasDragUpdate value) canvasDragUpdate,
    required TResult Function(CanvasDragEnd value) canvasDragEnd,
    required TResult Function(ElementDragStart value) elementDragStart,
    required TResult Function(ElementDragUpdate value) elementDragUpdate,
    required TResult Function(ElementDragEnd value) elementDragEnd,
    required TResult Function(CanvasTap value) canvasTap,
    required TResult Function(ElementTap value) elementTap,
    required TResult Function(RemoveSelectedElement value) removeSelectedElement,
    required TResult Function(DeselectElement value) deselectElement,
    required TResult Function(BringSelectedElementToFront value) bringSelectedElementToFront,
    required TResult Function(ResizeUpdate value) resizeUpdate,
    required TResult Function(ResizeEnd value) resizeEnd,
    required TResult Function(SelectedElementSizeChanged value) selectedElementSizeChanged,
    required TResult Function(SelectedElementPositionChanged value) selectedElementPositionChanged,
    required TResult Function(TextEditingModeChanged value) textEditingModeChanged,
    required TResult Function(ClearEditor value) clearEditor,
    required TResult Function(SetCanvasKey value) setCanvasKey,
    required TResult Function(ChangeCanvasBackgroundColor value) changeCanvasBackgroundColor,
    required TResult Function(ChangeCanvasBackgroundImage value) changeCanvasBackgroundImage,
    required TResult Function(RemoveCanvasBackgroundImage value) removeCanvasBackgroundImage,
    required TResult Function(DuplicateSelectedElement value) duplicateSelectedElement,
  }) {
    return bringSelectedElementToFront(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
  }) {
    return bringSelectedElementToFront?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (bringSelectedElementToFront != null) {
      return bringSelectedElementToFront(this);
    }
    return orElse();
  }
}

abstract class BringSelectedElementToFront implements EditorEvent {
  const factory BringSelectedElementToFront() = _$BringSelectedElementToFront;
}

/// @nodoc
abstract class _$$ResizeUpdateCopyWith<$Res> {
  factory _$$ResizeUpdateCopyWith(_$ResizeUpdate value, $Res Function(_$ResizeUpdate) then) =
      __$$ResizeUpdateCopyWithImpl<$Res>;
  $Res call({ResizeDirection resizeDirection, Offset delta});
}

/// @nodoc
class __$$ResizeUpdateCopyWithImpl<$Res> extends _$EditorEventCopyWithImpl<$Res>
    implements _$$ResizeUpdateCopyWith<$Res> {
  __$$ResizeUpdateCopyWithImpl(_$ResizeUpdate _value, $Res Function(_$ResizeUpdate) _then)
      : super(_value, (v) => _then(v as _$ResizeUpdate));

  @override
  _$ResizeUpdate get _value => super._value as _$ResizeUpdate;

  @override
  $Res call({
    Object? resizeDirection = freezed,
    Object? delta = freezed,
  }) {
    return _then(_$ResizeUpdate(
      resizeDirection == freezed
          ? _value.resizeDirection
          : resizeDirection // ignore: cast_nullable_to_non_nullable
              as ResizeDirection,
      delta == freezed
          ? _value.delta
          : delta // ignore: cast_nullable_to_non_nullable
              as Offset,
    ));
  }
}

/// @nodoc

class _$ResizeUpdate implements ResizeUpdate {
  const _$ResizeUpdate(this.resizeDirection, this.delta);

  @override
  final ResizeDirection resizeDirection;
  @override
  final Offset delta;

  @override
  String toString() {
    return 'EditorEvent.resizeUpdate(resizeDirection: $resizeDirection, delta: $delta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResizeUpdate &&
            const DeepCollectionEquality().equals(other.resizeDirection, resizeDirection) &&
            const DeepCollectionEquality().equals(other.delta, delta));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(resizeDirection), const DeepCollectionEquality().hash(delta));

  @JsonKey(ignore: true)
  @override
  _$$ResizeUpdateCopyWith<_$ResizeUpdate> get copyWith =>
      __$$ResizeUpdateCopyWithImpl<_$ResizeUpdate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addStaticText,
    required TResult Function(String updatedText) staticTextChanged,
    required TResult Function(TextStyle? updatedTextStyle) staticTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) staticTextAlignChanged,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addVariableText,
    required TResult Function() variableTextFileChanged,
    required TResult Function(TextStyle? updatedTextStyle) variableTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) variableTextAlignChanged,
    required TResult Function() addImage,
    required TResult Function(Offset localPosition) canvasDragStart,
    required TResult Function(Offset delta) canvasDragUpdate,
    required TResult Function() canvasDragEnd,
    required TResult Function(Element draggedElement, Offset localPosition) elementDragStart,
    required TResult Function(Offset delta) elementDragUpdate,
    required TResult Function() elementDragEnd,
    required TResult Function() canvasTap,
    required TResult Function(Element element) elementTap,
    required TResult Function() removeSelectedElement,
    required TResult Function() deselectElement,
    required TResult Function() bringSelectedElementToFront,
    required TResult Function(ResizeDirection resizeDirection, Offset delta) resizeUpdate,
    required TResult Function() resizeEnd,
    required TResult Function(Size updatedSize) selectedElementSizeChanged,
    required TResult Function(Offset updatedPosition) selectedElementPositionChanged,
    required TResult Function(bool isEditingTextElement) textEditingModeChanged,
    required TResult Function() clearEditor,
    required TResult Function(Option<GlobalKey<State<StatefulWidget>>> key) setCanvasKey,
    required TResult Function(Color color) changeCanvasBackgroundColor,
    required TResult Function() changeCanvasBackgroundImage,
    required TResult Function() removeCanvasBackgroundImage,
    required TResult Function() duplicateSelectedElement,
  }) {
    return resizeUpdate(resizeDirection, delta);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
  }) {
    return resizeUpdate?.call(resizeDirection, delta);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (resizeUpdate != null) {
      return resizeUpdate(resizeDirection, delta);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Undo value) undo,
    required TResult Function(Redo value) redo,
    required TResult Function(AddStaticText value) addStaticText,
    required TResult Function(StaticTextChanged value) staticTextChanged,
    required TResult Function(StaticTextStyleChanged value) staticTextStyleChanged,
    required TResult Function(StaticTextAlignChanged value) staticTextAlignChanged,
    required TResult Function(AddVariableText value) addVariableText,
    required TResult Function(VariableTextFileChanged value) variableTextFileChanged,
    required TResult Function(VariableTextStyleChanged value) variableTextStyleChanged,
    required TResult Function(VariableTextAlignChanged value) variableTextAlignChanged,
    required TResult Function(AddImage value) addImage,
    required TResult Function(CanvasDragStart value) canvasDragStart,
    required TResult Function(CanvasDragUpdate value) canvasDragUpdate,
    required TResult Function(CanvasDragEnd value) canvasDragEnd,
    required TResult Function(ElementDragStart value) elementDragStart,
    required TResult Function(ElementDragUpdate value) elementDragUpdate,
    required TResult Function(ElementDragEnd value) elementDragEnd,
    required TResult Function(CanvasTap value) canvasTap,
    required TResult Function(ElementTap value) elementTap,
    required TResult Function(RemoveSelectedElement value) removeSelectedElement,
    required TResult Function(DeselectElement value) deselectElement,
    required TResult Function(BringSelectedElementToFront value) bringSelectedElementToFront,
    required TResult Function(ResizeUpdate value) resizeUpdate,
    required TResult Function(ResizeEnd value) resizeEnd,
    required TResult Function(SelectedElementSizeChanged value) selectedElementSizeChanged,
    required TResult Function(SelectedElementPositionChanged value) selectedElementPositionChanged,
    required TResult Function(TextEditingModeChanged value) textEditingModeChanged,
    required TResult Function(ClearEditor value) clearEditor,
    required TResult Function(SetCanvasKey value) setCanvasKey,
    required TResult Function(ChangeCanvasBackgroundColor value) changeCanvasBackgroundColor,
    required TResult Function(ChangeCanvasBackgroundImage value) changeCanvasBackgroundImage,
    required TResult Function(RemoveCanvasBackgroundImage value) removeCanvasBackgroundImage,
    required TResult Function(DuplicateSelectedElement value) duplicateSelectedElement,
  }) {
    return resizeUpdate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
  }) {
    return resizeUpdate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (resizeUpdate != null) {
      return resizeUpdate(this);
    }
    return orElse();
  }
}

abstract class ResizeUpdate implements EditorEvent {
  const factory ResizeUpdate(final ResizeDirection resizeDirection, final Offset delta) = _$ResizeUpdate;

  ResizeDirection get resizeDirection;
  Offset get delta;
  @JsonKey(ignore: true)
  _$$ResizeUpdateCopyWith<_$ResizeUpdate> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ResizeEndCopyWith<$Res> {
  factory _$$ResizeEndCopyWith(_$ResizeEnd value, $Res Function(_$ResizeEnd) then) = __$$ResizeEndCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResizeEndCopyWithImpl<$Res> extends _$EditorEventCopyWithImpl<$Res> implements _$$ResizeEndCopyWith<$Res> {
  __$$ResizeEndCopyWithImpl(_$ResizeEnd _value, $Res Function(_$ResizeEnd) _then)
      : super(_value, (v) => _then(v as _$ResizeEnd));

  @override
  _$ResizeEnd get _value => super._value as _$ResizeEnd;
}

/// @nodoc

class _$ResizeEnd implements ResizeEnd {
  const _$ResizeEnd();

  @override
  String toString() {
    return 'EditorEvent.resizeEnd()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$ResizeEnd);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addStaticText,
    required TResult Function(String updatedText) staticTextChanged,
    required TResult Function(TextStyle? updatedTextStyle) staticTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) staticTextAlignChanged,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addVariableText,
    required TResult Function() variableTextFileChanged,
    required TResult Function(TextStyle? updatedTextStyle) variableTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) variableTextAlignChanged,
    required TResult Function() addImage,
    required TResult Function(Offset localPosition) canvasDragStart,
    required TResult Function(Offset delta) canvasDragUpdate,
    required TResult Function() canvasDragEnd,
    required TResult Function(Element draggedElement, Offset localPosition) elementDragStart,
    required TResult Function(Offset delta) elementDragUpdate,
    required TResult Function() elementDragEnd,
    required TResult Function() canvasTap,
    required TResult Function(Element element) elementTap,
    required TResult Function() removeSelectedElement,
    required TResult Function() deselectElement,
    required TResult Function() bringSelectedElementToFront,
    required TResult Function(ResizeDirection resizeDirection, Offset delta) resizeUpdate,
    required TResult Function() resizeEnd,
    required TResult Function(Size updatedSize) selectedElementSizeChanged,
    required TResult Function(Offset updatedPosition) selectedElementPositionChanged,
    required TResult Function(bool isEditingTextElement) textEditingModeChanged,
    required TResult Function() clearEditor,
    required TResult Function(Option<GlobalKey<State<StatefulWidget>>> key) setCanvasKey,
    required TResult Function(Color color) changeCanvasBackgroundColor,
    required TResult Function() changeCanvasBackgroundImage,
    required TResult Function() removeCanvasBackgroundImage,
    required TResult Function() duplicateSelectedElement,
  }) {
    return resizeEnd();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
  }) {
    return resizeEnd?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (resizeEnd != null) {
      return resizeEnd();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Undo value) undo,
    required TResult Function(Redo value) redo,
    required TResult Function(AddStaticText value) addStaticText,
    required TResult Function(StaticTextChanged value) staticTextChanged,
    required TResult Function(StaticTextStyleChanged value) staticTextStyleChanged,
    required TResult Function(StaticTextAlignChanged value) staticTextAlignChanged,
    required TResult Function(AddVariableText value) addVariableText,
    required TResult Function(VariableTextFileChanged value) variableTextFileChanged,
    required TResult Function(VariableTextStyleChanged value) variableTextStyleChanged,
    required TResult Function(VariableTextAlignChanged value) variableTextAlignChanged,
    required TResult Function(AddImage value) addImage,
    required TResult Function(CanvasDragStart value) canvasDragStart,
    required TResult Function(CanvasDragUpdate value) canvasDragUpdate,
    required TResult Function(CanvasDragEnd value) canvasDragEnd,
    required TResult Function(ElementDragStart value) elementDragStart,
    required TResult Function(ElementDragUpdate value) elementDragUpdate,
    required TResult Function(ElementDragEnd value) elementDragEnd,
    required TResult Function(CanvasTap value) canvasTap,
    required TResult Function(ElementTap value) elementTap,
    required TResult Function(RemoveSelectedElement value) removeSelectedElement,
    required TResult Function(DeselectElement value) deselectElement,
    required TResult Function(BringSelectedElementToFront value) bringSelectedElementToFront,
    required TResult Function(ResizeUpdate value) resizeUpdate,
    required TResult Function(ResizeEnd value) resizeEnd,
    required TResult Function(SelectedElementSizeChanged value) selectedElementSizeChanged,
    required TResult Function(SelectedElementPositionChanged value) selectedElementPositionChanged,
    required TResult Function(TextEditingModeChanged value) textEditingModeChanged,
    required TResult Function(ClearEditor value) clearEditor,
    required TResult Function(SetCanvasKey value) setCanvasKey,
    required TResult Function(ChangeCanvasBackgroundColor value) changeCanvasBackgroundColor,
    required TResult Function(ChangeCanvasBackgroundImage value) changeCanvasBackgroundImage,
    required TResult Function(RemoveCanvasBackgroundImage value) removeCanvasBackgroundImage,
    required TResult Function(DuplicateSelectedElement value) duplicateSelectedElement,
  }) {
    return resizeEnd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
  }) {
    return resizeEnd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (resizeEnd != null) {
      return resizeEnd(this);
    }
    return orElse();
  }
}

abstract class ResizeEnd implements EditorEvent {
  const factory ResizeEnd() = _$ResizeEnd;
}

/// @nodoc
abstract class _$$SelectedElementSizeChangedCopyWith<$Res> {
  factory _$$SelectedElementSizeChangedCopyWith(
          _$SelectedElementSizeChanged value, $Res Function(_$SelectedElementSizeChanged) then) =
      __$$SelectedElementSizeChangedCopyWithImpl<$Res>;
  $Res call({Size updatedSize});
}

/// @nodoc
class __$$SelectedElementSizeChangedCopyWithImpl<$Res> extends _$EditorEventCopyWithImpl<$Res>
    implements _$$SelectedElementSizeChangedCopyWith<$Res> {
  __$$SelectedElementSizeChangedCopyWithImpl(
      _$SelectedElementSizeChanged _value, $Res Function(_$SelectedElementSizeChanged) _then)
      : super(_value, (v) => _then(v as _$SelectedElementSizeChanged));

  @override
  _$SelectedElementSizeChanged get _value => super._value as _$SelectedElementSizeChanged;

  @override
  $Res call({
    Object? updatedSize = freezed,
  }) {
    return _then(_$SelectedElementSizeChanged(
      updatedSize == freezed
          ? _value.updatedSize
          : updatedSize // ignore: cast_nullable_to_non_nullable
              as Size,
    ));
  }
}

/// @nodoc

class _$SelectedElementSizeChanged implements SelectedElementSizeChanged {
  const _$SelectedElementSizeChanged(this.updatedSize);

  @override
  final Size updatedSize;

  @override
  String toString() {
    return 'EditorEvent.selectedElementSizeChanged(updatedSize: $updatedSize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedElementSizeChanged &&
            const DeepCollectionEquality().equals(other.updatedSize, updatedSize));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(updatedSize));

  @JsonKey(ignore: true)
  @override
  _$$SelectedElementSizeChangedCopyWith<_$SelectedElementSizeChanged> get copyWith =>
      __$$SelectedElementSizeChangedCopyWithImpl<_$SelectedElementSizeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addStaticText,
    required TResult Function(String updatedText) staticTextChanged,
    required TResult Function(TextStyle? updatedTextStyle) staticTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) staticTextAlignChanged,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addVariableText,
    required TResult Function() variableTextFileChanged,
    required TResult Function(TextStyle? updatedTextStyle) variableTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) variableTextAlignChanged,
    required TResult Function() addImage,
    required TResult Function(Offset localPosition) canvasDragStart,
    required TResult Function(Offset delta) canvasDragUpdate,
    required TResult Function() canvasDragEnd,
    required TResult Function(Element draggedElement, Offset localPosition) elementDragStart,
    required TResult Function(Offset delta) elementDragUpdate,
    required TResult Function() elementDragEnd,
    required TResult Function() canvasTap,
    required TResult Function(Element element) elementTap,
    required TResult Function() removeSelectedElement,
    required TResult Function() deselectElement,
    required TResult Function() bringSelectedElementToFront,
    required TResult Function(ResizeDirection resizeDirection, Offset delta) resizeUpdate,
    required TResult Function() resizeEnd,
    required TResult Function(Size updatedSize) selectedElementSizeChanged,
    required TResult Function(Offset updatedPosition) selectedElementPositionChanged,
    required TResult Function(bool isEditingTextElement) textEditingModeChanged,
    required TResult Function() clearEditor,
    required TResult Function(Option<GlobalKey<State<StatefulWidget>>> key) setCanvasKey,
    required TResult Function(Color color) changeCanvasBackgroundColor,
    required TResult Function() changeCanvasBackgroundImage,
    required TResult Function() removeCanvasBackgroundImage,
    required TResult Function() duplicateSelectedElement,
  }) {
    return selectedElementSizeChanged(updatedSize);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
  }) {
    return selectedElementSizeChanged?.call(updatedSize);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (selectedElementSizeChanged != null) {
      return selectedElementSizeChanged(updatedSize);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Undo value) undo,
    required TResult Function(Redo value) redo,
    required TResult Function(AddStaticText value) addStaticText,
    required TResult Function(StaticTextChanged value) staticTextChanged,
    required TResult Function(StaticTextStyleChanged value) staticTextStyleChanged,
    required TResult Function(StaticTextAlignChanged value) staticTextAlignChanged,
    required TResult Function(AddVariableText value) addVariableText,
    required TResult Function(VariableTextFileChanged value) variableTextFileChanged,
    required TResult Function(VariableTextStyleChanged value) variableTextStyleChanged,
    required TResult Function(VariableTextAlignChanged value) variableTextAlignChanged,
    required TResult Function(AddImage value) addImage,
    required TResult Function(CanvasDragStart value) canvasDragStart,
    required TResult Function(CanvasDragUpdate value) canvasDragUpdate,
    required TResult Function(CanvasDragEnd value) canvasDragEnd,
    required TResult Function(ElementDragStart value) elementDragStart,
    required TResult Function(ElementDragUpdate value) elementDragUpdate,
    required TResult Function(ElementDragEnd value) elementDragEnd,
    required TResult Function(CanvasTap value) canvasTap,
    required TResult Function(ElementTap value) elementTap,
    required TResult Function(RemoveSelectedElement value) removeSelectedElement,
    required TResult Function(DeselectElement value) deselectElement,
    required TResult Function(BringSelectedElementToFront value) bringSelectedElementToFront,
    required TResult Function(ResizeUpdate value) resizeUpdate,
    required TResult Function(ResizeEnd value) resizeEnd,
    required TResult Function(SelectedElementSizeChanged value) selectedElementSizeChanged,
    required TResult Function(SelectedElementPositionChanged value) selectedElementPositionChanged,
    required TResult Function(TextEditingModeChanged value) textEditingModeChanged,
    required TResult Function(ClearEditor value) clearEditor,
    required TResult Function(SetCanvasKey value) setCanvasKey,
    required TResult Function(ChangeCanvasBackgroundColor value) changeCanvasBackgroundColor,
    required TResult Function(ChangeCanvasBackgroundImage value) changeCanvasBackgroundImage,
    required TResult Function(RemoveCanvasBackgroundImage value) removeCanvasBackgroundImage,
    required TResult Function(DuplicateSelectedElement value) duplicateSelectedElement,
  }) {
    return selectedElementSizeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
  }) {
    return selectedElementSizeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (selectedElementSizeChanged != null) {
      return selectedElementSizeChanged(this);
    }
    return orElse();
  }
}

abstract class SelectedElementSizeChanged implements EditorEvent {
  const factory SelectedElementSizeChanged(final Size updatedSize) = _$SelectedElementSizeChanged;

  Size get updatedSize;
  @JsonKey(ignore: true)
  _$$SelectedElementSizeChangedCopyWith<_$SelectedElementSizeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SelectedElementPositionChangedCopyWith<$Res> {
  factory _$$SelectedElementPositionChangedCopyWith(
          _$SelectedElementPositionChanged value, $Res Function(_$SelectedElementPositionChanged) then) =
      __$$SelectedElementPositionChangedCopyWithImpl<$Res>;
  $Res call({Offset updatedPosition});
}

/// @nodoc
class __$$SelectedElementPositionChangedCopyWithImpl<$Res> extends _$EditorEventCopyWithImpl<$Res>
    implements _$$SelectedElementPositionChangedCopyWith<$Res> {
  __$$SelectedElementPositionChangedCopyWithImpl(
      _$SelectedElementPositionChanged _value, $Res Function(_$SelectedElementPositionChanged) _then)
      : super(_value, (v) => _then(v as _$SelectedElementPositionChanged));

  @override
  _$SelectedElementPositionChanged get _value => super._value as _$SelectedElementPositionChanged;

  @override
  $Res call({
    Object? updatedPosition = freezed,
  }) {
    return _then(_$SelectedElementPositionChanged(
      updatedPosition == freezed
          ? _value.updatedPosition
          : updatedPosition // ignore: cast_nullable_to_non_nullable
              as Offset,
    ));
  }
}

/// @nodoc

class _$SelectedElementPositionChanged implements SelectedElementPositionChanged {
  const _$SelectedElementPositionChanged(this.updatedPosition);

  /// The new top-left of the element's rect.
  @override
  final Offset updatedPosition;

  @override
  String toString() {
    return 'EditorEvent.selectedElementPositionChanged(updatedPosition: $updatedPosition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedElementPositionChanged &&
            const DeepCollectionEquality().equals(other.updatedPosition, updatedPosition));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(updatedPosition));

  @JsonKey(ignore: true)
  @override
  _$$SelectedElementPositionChangedCopyWith<_$SelectedElementPositionChanged> get copyWith =>
      __$$SelectedElementPositionChangedCopyWithImpl<_$SelectedElementPositionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addStaticText,
    required TResult Function(String updatedText) staticTextChanged,
    required TResult Function(TextStyle? updatedTextStyle) staticTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) staticTextAlignChanged,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addVariableText,
    required TResult Function() variableTextFileChanged,
    required TResult Function(TextStyle? updatedTextStyle) variableTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) variableTextAlignChanged,
    required TResult Function() addImage,
    required TResult Function(Offset localPosition) canvasDragStart,
    required TResult Function(Offset delta) canvasDragUpdate,
    required TResult Function() canvasDragEnd,
    required TResult Function(Element draggedElement, Offset localPosition) elementDragStart,
    required TResult Function(Offset delta) elementDragUpdate,
    required TResult Function() elementDragEnd,
    required TResult Function() canvasTap,
    required TResult Function(Element element) elementTap,
    required TResult Function() removeSelectedElement,
    required TResult Function() deselectElement,
    required TResult Function() bringSelectedElementToFront,
    required TResult Function(ResizeDirection resizeDirection, Offset delta) resizeUpdate,
    required TResult Function() resizeEnd,
    required TResult Function(Size updatedSize) selectedElementSizeChanged,
    required TResult Function(Offset updatedPosition) selectedElementPositionChanged,
    required TResult Function(bool isEditingTextElement) textEditingModeChanged,
    required TResult Function() clearEditor,
    required TResult Function(Option<GlobalKey<State<StatefulWidget>>> key) setCanvasKey,
    required TResult Function(Color color) changeCanvasBackgroundColor,
    required TResult Function() changeCanvasBackgroundImage,
    required TResult Function() removeCanvasBackgroundImage,
    required TResult Function() duplicateSelectedElement,
  }) {
    return selectedElementPositionChanged(updatedPosition);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
  }) {
    return selectedElementPositionChanged?.call(updatedPosition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (selectedElementPositionChanged != null) {
      return selectedElementPositionChanged(updatedPosition);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Undo value) undo,
    required TResult Function(Redo value) redo,
    required TResult Function(AddStaticText value) addStaticText,
    required TResult Function(StaticTextChanged value) staticTextChanged,
    required TResult Function(StaticTextStyleChanged value) staticTextStyleChanged,
    required TResult Function(StaticTextAlignChanged value) staticTextAlignChanged,
    required TResult Function(AddVariableText value) addVariableText,
    required TResult Function(VariableTextFileChanged value) variableTextFileChanged,
    required TResult Function(VariableTextStyleChanged value) variableTextStyleChanged,
    required TResult Function(VariableTextAlignChanged value) variableTextAlignChanged,
    required TResult Function(AddImage value) addImage,
    required TResult Function(CanvasDragStart value) canvasDragStart,
    required TResult Function(CanvasDragUpdate value) canvasDragUpdate,
    required TResult Function(CanvasDragEnd value) canvasDragEnd,
    required TResult Function(ElementDragStart value) elementDragStart,
    required TResult Function(ElementDragUpdate value) elementDragUpdate,
    required TResult Function(ElementDragEnd value) elementDragEnd,
    required TResult Function(CanvasTap value) canvasTap,
    required TResult Function(ElementTap value) elementTap,
    required TResult Function(RemoveSelectedElement value) removeSelectedElement,
    required TResult Function(DeselectElement value) deselectElement,
    required TResult Function(BringSelectedElementToFront value) bringSelectedElementToFront,
    required TResult Function(ResizeUpdate value) resizeUpdate,
    required TResult Function(ResizeEnd value) resizeEnd,
    required TResult Function(SelectedElementSizeChanged value) selectedElementSizeChanged,
    required TResult Function(SelectedElementPositionChanged value) selectedElementPositionChanged,
    required TResult Function(TextEditingModeChanged value) textEditingModeChanged,
    required TResult Function(ClearEditor value) clearEditor,
    required TResult Function(SetCanvasKey value) setCanvasKey,
    required TResult Function(ChangeCanvasBackgroundColor value) changeCanvasBackgroundColor,
    required TResult Function(ChangeCanvasBackgroundImage value) changeCanvasBackgroundImage,
    required TResult Function(RemoveCanvasBackgroundImage value) removeCanvasBackgroundImage,
    required TResult Function(DuplicateSelectedElement value) duplicateSelectedElement,
  }) {
    return selectedElementPositionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
  }) {
    return selectedElementPositionChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (selectedElementPositionChanged != null) {
      return selectedElementPositionChanged(this);
    }
    return orElse();
  }
}

abstract class SelectedElementPositionChanged implements EditorEvent {
  const factory SelectedElementPositionChanged(final Offset updatedPosition) = _$SelectedElementPositionChanged;

  /// The new top-left of the element's rect.
  Offset get updatedPosition;
  @JsonKey(ignore: true)
  _$$SelectedElementPositionChangedCopyWith<_$SelectedElementPositionChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TextEditingModeChangedCopyWith<$Res> {
  factory _$$TextEditingModeChangedCopyWith(
          _$TextEditingModeChanged value, $Res Function(_$TextEditingModeChanged) then) =
      __$$TextEditingModeChangedCopyWithImpl<$Res>;
  $Res call({bool isEditingTextElement});
}

/// @nodoc
class __$$TextEditingModeChangedCopyWithImpl<$Res> extends _$EditorEventCopyWithImpl<$Res>
    implements _$$TextEditingModeChangedCopyWith<$Res> {
  __$$TextEditingModeChangedCopyWithImpl(_$TextEditingModeChanged _value, $Res Function(_$TextEditingModeChanged) _then)
      : super(_value, (v) => _then(v as _$TextEditingModeChanged));

  @override
  _$TextEditingModeChanged get _value => super._value as _$TextEditingModeChanged;

  @override
  $Res call({
    Object? isEditingTextElement = freezed,
  }) {
    return _then(_$TextEditingModeChanged(
      isEditingTextElement == freezed
          ? _value.isEditingTextElement
          : isEditingTextElement // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$TextEditingModeChanged implements TextEditingModeChanged {
  const _$TextEditingModeChanged(this.isEditingTextElement);

  @override
  final bool isEditingTextElement;

  @override
  String toString() {
    return 'EditorEvent.textEditingModeChanged(isEditingTextElement: $isEditingTextElement)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TextEditingModeChanged &&
            const DeepCollectionEquality().equals(other.isEditingTextElement, isEditingTextElement));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(isEditingTextElement));

  @JsonKey(ignore: true)
  @override
  _$$TextEditingModeChangedCopyWith<_$TextEditingModeChanged> get copyWith =>
      __$$TextEditingModeChangedCopyWithImpl<_$TextEditingModeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addStaticText,
    required TResult Function(String updatedText) staticTextChanged,
    required TResult Function(TextStyle? updatedTextStyle) staticTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) staticTextAlignChanged,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addVariableText,
    required TResult Function() variableTextFileChanged,
    required TResult Function(TextStyle? updatedTextStyle) variableTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) variableTextAlignChanged,
    required TResult Function() addImage,
    required TResult Function(Offset localPosition) canvasDragStart,
    required TResult Function(Offset delta) canvasDragUpdate,
    required TResult Function() canvasDragEnd,
    required TResult Function(Element draggedElement, Offset localPosition) elementDragStart,
    required TResult Function(Offset delta) elementDragUpdate,
    required TResult Function() elementDragEnd,
    required TResult Function() canvasTap,
    required TResult Function(Element element) elementTap,
    required TResult Function() removeSelectedElement,
    required TResult Function() deselectElement,
    required TResult Function() bringSelectedElementToFront,
    required TResult Function(ResizeDirection resizeDirection, Offset delta) resizeUpdate,
    required TResult Function() resizeEnd,
    required TResult Function(Size updatedSize) selectedElementSizeChanged,
    required TResult Function(Offset updatedPosition) selectedElementPositionChanged,
    required TResult Function(bool isEditingTextElement) textEditingModeChanged,
    required TResult Function() clearEditor,
    required TResult Function(Option<GlobalKey<State<StatefulWidget>>> key) setCanvasKey,
    required TResult Function(Color color) changeCanvasBackgroundColor,
    required TResult Function() changeCanvasBackgroundImage,
    required TResult Function() removeCanvasBackgroundImage,
    required TResult Function() duplicateSelectedElement,
  }) {
    return textEditingModeChanged(isEditingTextElement);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
  }) {
    return textEditingModeChanged?.call(isEditingTextElement);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (textEditingModeChanged != null) {
      return textEditingModeChanged(isEditingTextElement);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Undo value) undo,
    required TResult Function(Redo value) redo,
    required TResult Function(AddStaticText value) addStaticText,
    required TResult Function(StaticTextChanged value) staticTextChanged,
    required TResult Function(StaticTextStyleChanged value) staticTextStyleChanged,
    required TResult Function(StaticTextAlignChanged value) staticTextAlignChanged,
    required TResult Function(AddVariableText value) addVariableText,
    required TResult Function(VariableTextFileChanged value) variableTextFileChanged,
    required TResult Function(VariableTextStyleChanged value) variableTextStyleChanged,
    required TResult Function(VariableTextAlignChanged value) variableTextAlignChanged,
    required TResult Function(AddImage value) addImage,
    required TResult Function(CanvasDragStart value) canvasDragStart,
    required TResult Function(CanvasDragUpdate value) canvasDragUpdate,
    required TResult Function(CanvasDragEnd value) canvasDragEnd,
    required TResult Function(ElementDragStart value) elementDragStart,
    required TResult Function(ElementDragUpdate value) elementDragUpdate,
    required TResult Function(ElementDragEnd value) elementDragEnd,
    required TResult Function(CanvasTap value) canvasTap,
    required TResult Function(ElementTap value) elementTap,
    required TResult Function(RemoveSelectedElement value) removeSelectedElement,
    required TResult Function(DeselectElement value) deselectElement,
    required TResult Function(BringSelectedElementToFront value) bringSelectedElementToFront,
    required TResult Function(ResizeUpdate value) resizeUpdate,
    required TResult Function(ResizeEnd value) resizeEnd,
    required TResult Function(SelectedElementSizeChanged value) selectedElementSizeChanged,
    required TResult Function(SelectedElementPositionChanged value) selectedElementPositionChanged,
    required TResult Function(TextEditingModeChanged value) textEditingModeChanged,
    required TResult Function(ClearEditor value) clearEditor,
    required TResult Function(SetCanvasKey value) setCanvasKey,
    required TResult Function(ChangeCanvasBackgroundColor value) changeCanvasBackgroundColor,
    required TResult Function(ChangeCanvasBackgroundImage value) changeCanvasBackgroundImage,
    required TResult Function(RemoveCanvasBackgroundImage value) removeCanvasBackgroundImage,
    required TResult Function(DuplicateSelectedElement value) duplicateSelectedElement,
  }) {
    return textEditingModeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
  }) {
    return textEditingModeChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (textEditingModeChanged != null) {
      return textEditingModeChanged(this);
    }
    return orElse();
  }
}

abstract class TextEditingModeChanged implements EditorEvent {
  const factory TextEditingModeChanged(final bool isEditingTextElement) = _$TextEditingModeChanged;

  bool get isEditingTextElement;
  @JsonKey(ignore: true)
  _$$TextEditingModeChangedCopyWith<_$TextEditingModeChanged> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearEditorCopyWith<$Res> {
  factory _$$ClearEditorCopyWith(_$ClearEditor value, $Res Function(_$ClearEditor) then) =
      __$$ClearEditorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearEditorCopyWithImpl<$Res> extends _$EditorEventCopyWithImpl<$Res>
    implements _$$ClearEditorCopyWith<$Res> {
  __$$ClearEditorCopyWithImpl(_$ClearEditor _value, $Res Function(_$ClearEditor) _then)
      : super(_value, (v) => _then(v as _$ClearEditor));

  @override
  _$ClearEditor get _value => super._value as _$ClearEditor;
}

/// @nodoc

class _$ClearEditor implements ClearEditor {
  const _$ClearEditor();

  @override
  String toString() {
    return 'EditorEvent.clearEditor()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$ClearEditor);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addStaticText,
    required TResult Function(String updatedText) staticTextChanged,
    required TResult Function(TextStyle? updatedTextStyle) staticTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) staticTextAlignChanged,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addVariableText,
    required TResult Function() variableTextFileChanged,
    required TResult Function(TextStyle? updatedTextStyle) variableTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) variableTextAlignChanged,
    required TResult Function() addImage,
    required TResult Function(Offset localPosition) canvasDragStart,
    required TResult Function(Offset delta) canvasDragUpdate,
    required TResult Function() canvasDragEnd,
    required TResult Function(Element draggedElement, Offset localPosition) elementDragStart,
    required TResult Function(Offset delta) elementDragUpdate,
    required TResult Function() elementDragEnd,
    required TResult Function() canvasTap,
    required TResult Function(Element element) elementTap,
    required TResult Function() removeSelectedElement,
    required TResult Function() deselectElement,
    required TResult Function() bringSelectedElementToFront,
    required TResult Function(ResizeDirection resizeDirection, Offset delta) resizeUpdate,
    required TResult Function() resizeEnd,
    required TResult Function(Size updatedSize) selectedElementSizeChanged,
    required TResult Function(Offset updatedPosition) selectedElementPositionChanged,
    required TResult Function(bool isEditingTextElement) textEditingModeChanged,
    required TResult Function() clearEditor,
    required TResult Function(Option<GlobalKey<State<StatefulWidget>>> key) setCanvasKey,
    required TResult Function(Color color) changeCanvasBackgroundColor,
    required TResult Function() changeCanvasBackgroundImage,
    required TResult Function() removeCanvasBackgroundImage,
    required TResult Function() duplicateSelectedElement,
  }) {
    return clearEditor();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
  }) {
    return clearEditor?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
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
    required TResult Function(Undo value) undo,
    required TResult Function(Redo value) redo,
    required TResult Function(AddStaticText value) addStaticText,
    required TResult Function(StaticTextChanged value) staticTextChanged,
    required TResult Function(StaticTextStyleChanged value) staticTextStyleChanged,
    required TResult Function(StaticTextAlignChanged value) staticTextAlignChanged,
    required TResult Function(AddVariableText value) addVariableText,
    required TResult Function(VariableTextFileChanged value) variableTextFileChanged,
    required TResult Function(VariableTextStyleChanged value) variableTextStyleChanged,
    required TResult Function(VariableTextAlignChanged value) variableTextAlignChanged,
    required TResult Function(AddImage value) addImage,
    required TResult Function(CanvasDragStart value) canvasDragStart,
    required TResult Function(CanvasDragUpdate value) canvasDragUpdate,
    required TResult Function(CanvasDragEnd value) canvasDragEnd,
    required TResult Function(ElementDragStart value) elementDragStart,
    required TResult Function(ElementDragUpdate value) elementDragUpdate,
    required TResult Function(ElementDragEnd value) elementDragEnd,
    required TResult Function(CanvasTap value) canvasTap,
    required TResult Function(ElementTap value) elementTap,
    required TResult Function(RemoveSelectedElement value) removeSelectedElement,
    required TResult Function(DeselectElement value) deselectElement,
    required TResult Function(BringSelectedElementToFront value) bringSelectedElementToFront,
    required TResult Function(ResizeUpdate value) resizeUpdate,
    required TResult Function(ResizeEnd value) resizeEnd,
    required TResult Function(SelectedElementSizeChanged value) selectedElementSizeChanged,
    required TResult Function(SelectedElementPositionChanged value) selectedElementPositionChanged,
    required TResult Function(TextEditingModeChanged value) textEditingModeChanged,
    required TResult Function(ClearEditor value) clearEditor,
    required TResult Function(SetCanvasKey value) setCanvasKey,
    required TResult Function(ChangeCanvasBackgroundColor value) changeCanvasBackgroundColor,
    required TResult Function(ChangeCanvasBackgroundImage value) changeCanvasBackgroundImage,
    required TResult Function(RemoveCanvasBackgroundImage value) removeCanvasBackgroundImage,
    required TResult Function(DuplicateSelectedElement value) duplicateSelectedElement,
  }) {
    return clearEditor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
  }) {
    return clearEditor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (clearEditor != null) {
      return clearEditor(this);
    }
    return orElse();
  }
}

abstract class ClearEditor implements EditorEvent {
  const factory ClearEditor() = _$ClearEditor;
}

/// @nodoc
abstract class _$$SetCanvasKeyCopyWith<$Res> {
  factory _$$SetCanvasKeyCopyWith(_$SetCanvasKey value, $Res Function(_$SetCanvasKey) then) =
      __$$SetCanvasKeyCopyWithImpl<$Res>;
  $Res call({Option<GlobalKey<State<StatefulWidget>>> key});
}

/// @nodoc
class __$$SetCanvasKeyCopyWithImpl<$Res> extends _$EditorEventCopyWithImpl<$Res>
    implements _$$SetCanvasKeyCopyWith<$Res> {
  __$$SetCanvasKeyCopyWithImpl(_$SetCanvasKey _value, $Res Function(_$SetCanvasKey) _then)
      : super(_value, (v) => _then(v as _$SetCanvasKey));

  @override
  _$SetCanvasKey get _value => super._value as _$SetCanvasKey;

  @override
  $Res call({
    Object? key = freezed,
  }) {
    return _then(_$SetCanvasKey(
      key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as Option<GlobalKey<State<StatefulWidget>>>,
    ));
  }
}

/// @nodoc

class _$SetCanvasKey implements SetCanvasKey {
  const _$SetCanvasKey(this.key);

  @override
  final Option<GlobalKey<State<StatefulWidget>>> key;

  @override
  String toString() {
    return 'EditorEvent.setCanvasKey(key: $key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetCanvasKey &&
            const DeepCollectionEquality().equals(other.key, key));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(key));

  @JsonKey(ignore: true)
  @override
  _$$SetCanvasKeyCopyWith<_$SetCanvasKey> get copyWith =>
      __$$SetCanvasKeyCopyWithImpl<_$SetCanvasKey>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addStaticText,
    required TResult Function(String updatedText) staticTextChanged,
    required TResult Function(TextStyle? updatedTextStyle) staticTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) staticTextAlignChanged,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addVariableText,
    required TResult Function() variableTextFileChanged,
    required TResult Function(TextStyle? updatedTextStyle) variableTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) variableTextAlignChanged,
    required TResult Function() addImage,
    required TResult Function(Offset localPosition) canvasDragStart,
    required TResult Function(Offset delta) canvasDragUpdate,
    required TResult Function() canvasDragEnd,
    required TResult Function(Element draggedElement, Offset localPosition) elementDragStart,
    required TResult Function(Offset delta) elementDragUpdate,
    required TResult Function() elementDragEnd,
    required TResult Function() canvasTap,
    required TResult Function(Element element) elementTap,
    required TResult Function() removeSelectedElement,
    required TResult Function() deselectElement,
    required TResult Function() bringSelectedElementToFront,
    required TResult Function(ResizeDirection resizeDirection, Offset delta) resizeUpdate,
    required TResult Function() resizeEnd,
    required TResult Function(Size updatedSize) selectedElementSizeChanged,
    required TResult Function(Offset updatedPosition) selectedElementPositionChanged,
    required TResult Function(bool isEditingTextElement) textEditingModeChanged,
    required TResult Function() clearEditor,
    required TResult Function(Option<GlobalKey<State<StatefulWidget>>> key) setCanvasKey,
    required TResult Function(Color color) changeCanvasBackgroundColor,
    required TResult Function() changeCanvasBackgroundImage,
    required TResult Function() removeCanvasBackgroundImage,
    required TResult Function() duplicateSelectedElement,
  }) {
    return setCanvasKey(key);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
  }) {
    return setCanvasKey?.call(key);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (setCanvasKey != null) {
      return setCanvasKey(key);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Undo value) undo,
    required TResult Function(Redo value) redo,
    required TResult Function(AddStaticText value) addStaticText,
    required TResult Function(StaticTextChanged value) staticTextChanged,
    required TResult Function(StaticTextStyleChanged value) staticTextStyleChanged,
    required TResult Function(StaticTextAlignChanged value) staticTextAlignChanged,
    required TResult Function(AddVariableText value) addVariableText,
    required TResult Function(VariableTextFileChanged value) variableTextFileChanged,
    required TResult Function(VariableTextStyleChanged value) variableTextStyleChanged,
    required TResult Function(VariableTextAlignChanged value) variableTextAlignChanged,
    required TResult Function(AddImage value) addImage,
    required TResult Function(CanvasDragStart value) canvasDragStart,
    required TResult Function(CanvasDragUpdate value) canvasDragUpdate,
    required TResult Function(CanvasDragEnd value) canvasDragEnd,
    required TResult Function(ElementDragStart value) elementDragStart,
    required TResult Function(ElementDragUpdate value) elementDragUpdate,
    required TResult Function(ElementDragEnd value) elementDragEnd,
    required TResult Function(CanvasTap value) canvasTap,
    required TResult Function(ElementTap value) elementTap,
    required TResult Function(RemoveSelectedElement value) removeSelectedElement,
    required TResult Function(DeselectElement value) deselectElement,
    required TResult Function(BringSelectedElementToFront value) bringSelectedElementToFront,
    required TResult Function(ResizeUpdate value) resizeUpdate,
    required TResult Function(ResizeEnd value) resizeEnd,
    required TResult Function(SelectedElementSizeChanged value) selectedElementSizeChanged,
    required TResult Function(SelectedElementPositionChanged value) selectedElementPositionChanged,
    required TResult Function(TextEditingModeChanged value) textEditingModeChanged,
    required TResult Function(ClearEditor value) clearEditor,
    required TResult Function(SetCanvasKey value) setCanvasKey,
    required TResult Function(ChangeCanvasBackgroundColor value) changeCanvasBackgroundColor,
    required TResult Function(ChangeCanvasBackgroundImage value) changeCanvasBackgroundImage,
    required TResult Function(RemoveCanvasBackgroundImage value) removeCanvasBackgroundImage,
    required TResult Function(DuplicateSelectedElement value) duplicateSelectedElement,
  }) {
    return setCanvasKey(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
  }) {
    return setCanvasKey?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (setCanvasKey != null) {
      return setCanvasKey(this);
    }
    return orElse();
  }
}

abstract class SetCanvasKey implements EditorEvent {
  const factory SetCanvasKey(final Option<GlobalKey<State<StatefulWidget>>> key) = _$SetCanvasKey;

  Option<GlobalKey<State<StatefulWidget>>> get key;
  @JsonKey(ignore: true)
  _$$SetCanvasKeyCopyWith<_$SetCanvasKey> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeCanvasBackgroundColorCopyWith<$Res> {
  factory _$$ChangeCanvasBackgroundColorCopyWith(
          _$ChangeCanvasBackgroundColor value, $Res Function(_$ChangeCanvasBackgroundColor) then) =
      __$$ChangeCanvasBackgroundColorCopyWithImpl<$Res>;
  $Res call({Color color});
}

/// @nodoc
class __$$ChangeCanvasBackgroundColorCopyWithImpl<$Res> extends _$EditorEventCopyWithImpl<$Res>
    implements _$$ChangeCanvasBackgroundColorCopyWith<$Res> {
  __$$ChangeCanvasBackgroundColorCopyWithImpl(
      _$ChangeCanvasBackgroundColor _value, $Res Function(_$ChangeCanvasBackgroundColor) _then)
      : super(_value, (v) => _then(v as _$ChangeCanvasBackgroundColor));

  @override
  _$ChangeCanvasBackgroundColor get _value => super._value as _$ChangeCanvasBackgroundColor;

  @override
  $Res call({
    Object? color = freezed,
  }) {
    return _then(_$ChangeCanvasBackgroundColor(
      color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
    ));
  }
}

/// @nodoc

class _$ChangeCanvasBackgroundColor implements ChangeCanvasBackgroundColor {
  const _$ChangeCanvasBackgroundColor(this.color);

  @override
  final Color color;

  @override
  String toString() {
    return 'EditorEvent.changeCanvasBackgroundColor(color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeCanvasBackgroundColor &&
            const DeepCollectionEquality().equals(other.color, color));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(color));

  @JsonKey(ignore: true)
  @override
  _$$ChangeCanvasBackgroundColorCopyWith<_$ChangeCanvasBackgroundColor> get copyWith =>
      __$$ChangeCanvasBackgroundColorCopyWithImpl<_$ChangeCanvasBackgroundColor>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addStaticText,
    required TResult Function(String updatedText) staticTextChanged,
    required TResult Function(TextStyle? updatedTextStyle) staticTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) staticTextAlignChanged,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addVariableText,
    required TResult Function() variableTextFileChanged,
    required TResult Function(TextStyle? updatedTextStyle) variableTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) variableTextAlignChanged,
    required TResult Function() addImage,
    required TResult Function(Offset localPosition) canvasDragStart,
    required TResult Function(Offset delta) canvasDragUpdate,
    required TResult Function() canvasDragEnd,
    required TResult Function(Element draggedElement, Offset localPosition) elementDragStart,
    required TResult Function(Offset delta) elementDragUpdate,
    required TResult Function() elementDragEnd,
    required TResult Function() canvasTap,
    required TResult Function(Element element) elementTap,
    required TResult Function() removeSelectedElement,
    required TResult Function() deselectElement,
    required TResult Function() bringSelectedElementToFront,
    required TResult Function(ResizeDirection resizeDirection, Offset delta) resizeUpdate,
    required TResult Function() resizeEnd,
    required TResult Function(Size updatedSize) selectedElementSizeChanged,
    required TResult Function(Offset updatedPosition) selectedElementPositionChanged,
    required TResult Function(bool isEditingTextElement) textEditingModeChanged,
    required TResult Function() clearEditor,
    required TResult Function(Option<GlobalKey<State<StatefulWidget>>> key) setCanvasKey,
    required TResult Function(Color color) changeCanvasBackgroundColor,
    required TResult Function() changeCanvasBackgroundImage,
    required TResult Function() removeCanvasBackgroundImage,
    required TResult Function() duplicateSelectedElement,
  }) {
    return changeCanvasBackgroundColor(color);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
  }) {
    return changeCanvasBackgroundColor?.call(color);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (changeCanvasBackgroundColor != null) {
      return changeCanvasBackgroundColor(color);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Undo value) undo,
    required TResult Function(Redo value) redo,
    required TResult Function(AddStaticText value) addStaticText,
    required TResult Function(StaticTextChanged value) staticTextChanged,
    required TResult Function(StaticTextStyleChanged value) staticTextStyleChanged,
    required TResult Function(StaticTextAlignChanged value) staticTextAlignChanged,
    required TResult Function(AddVariableText value) addVariableText,
    required TResult Function(VariableTextFileChanged value) variableTextFileChanged,
    required TResult Function(VariableTextStyleChanged value) variableTextStyleChanged,
    required TResult Function(VariableTextAlignChanged value) variableTextAlignChanged,
    required TResult Function(AddImage value) addImage,
    required TResult Function(CanvasDragStart value) canvasDragStart,
    required TResult Function(CanvasDragUpdate value) canvasDragUpdate,
    required TResult Function(CanvasDragEnd value) canvasDragEnd,
    required TResult Function(ElementDragStart value) elementDragStart,
    required TResult Function(ElementDragUpdate value) elementDragUpdate,
    required TResult Function(ElementDragEnd value) elementDragEnd,
    required TResult Function(CanvasTap value) canvasTap,
    required TResult Function(ElementTap value) elementTap,
    required TResult Function(RemoveSelectedElement value) removeSelectedElement,
    required TResult Function(DeselectElement value) deselectElement,
    required TResult Function(BringSelectedElementToFront value) bringSelectedElementToFront,
    required TResult Function(ResizeUpdate value) resizeUpdate,
    required TResult Function(ResizeEnd value) resizeEnd,
    required TResult Function(SelectedElementSizeChanged value) selectedElementSizeChanged,
    required TResult Function(SelectedElementPositionChanged value) selectedElementPositionChanged,
    required TResult Function(TextEditingModeChanged value) textEditingModeChanged,
    required TResult Function(ClearEditor value) clearEditor,
    required TResult Function(SetCanvasKey value) setCanvasKey,
    required TResult Function(ChangeCanvasBackgroundColor value) changeCanvasBackgroundColor,
    required TResult Function(ChangeCanvasBackgroundImage value) changeCanvasBackgroundImage,
    required TResult Function(RemoveCanvasBackgroundImage value) removeCanvasBackgroundImage,
    required TResult Function(DuplicateSelectedElement value) duplicateSelectedElement,
  }) {
    return changeCanvasBackgroundColor(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
  }) {
    return changeCanvasBackgroundColor?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (changeCanvasBackgroundColor != null) {
      return changeCanvasBackgroundColor(this);
    }
    return orElse();
  }
}

abstract class ChangeCanvasBackgroundColor implements EditorEvent {
  const factory ChangeCanvasBackgroundColor(final Color color) = _$ChangeCanvasBackgroundColor;

  Color get color;
  @JsonKey(ignore: true)
  _$$ChangeCanvasBackgroundColorCopyWith<_$ChangeCanvasBackgroundColor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeCanvasBackgroundImageCopyWith<$Res> {
  factory _$$ChangeCanvasBackgroundImageCopyWith(
          _$ChangeCanvasBackgroundImage value, $Res Function(_$ChangeCanvasBackgroundImage) then) =
      __$$ChangeCanvasBackgroundImageCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChangeCanvasBackgroundImageCopyWithImpl<$Res> extends _$EditorEventCopyWithImpl<$Res>
    implements _$$ChangeCanvasBackgroundImageCopyWith<$Res> {
  __$$ChangeCanvasBackgroundImageCopyWithImpl(
      _$ChangeCanvasBackgroundImage _value, $Res Function(_$ChangeCanvasBackgroundImage) _then)
      : super(_value, (v) => _then(v as _$ChangeCanvasBackgroundImage));

  @override
  _$ChangeCanvasBackgroundImage get _value => super._value as _$ChangeCanvasBackgroundImage;
}

/// @nodoc

class _$ChangeCanvasBackgroundImage implements ChangeCanvasBackgroundImage {
  const _$ChangeCanvasBackgroundImage();

  @override
  String toString() {
    return 'EditorEvent.changeCanvasBackgroundImage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$ChangeCanvasBackgroundImage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addStaticText,
    required TResult Function(String updatedText) staticTextChanged,
    required TResult Function(TextStyle? updatedTextStyle) staticTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) staticTextAlignChanged,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addVariableText,
    required TResult Function() variableTextFileChanged,
    required TResult Function(TextStyle? updatedTextStyle) variableTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) variableTextAlignChanged,
    required TResult Function() addImage,
    required TResult Function(Offset localPosition) canvasDragStart,
    required TResult Function(Offset delta) canvasDragUpdate,
    required TResult Function() canvasDragEnd,
    required TResult Function(Element draggedElement, Offset localPosition) elementDragStart,
    required TResult Function(Offset delta) elementDragUpdate,
    required TResult Function() elementDragEnd,
    required TResult Function() canvasTap,
    required TResult Function(Element element) elementTap,
    required TResult Function() removeSelectedElement,
    required TResult Function() deselectElement,
    required TResult Function() bringSelectedElementToFront,
    required TResult Function(ResizeDirection resizeDirection, Offset delta) resizeUpdate,
    required TResult Function() resizeEnd,
    required TResult Function(Size updatedSize) selectedElementSizeChanged,
    required TResult Function(Offset updatedPosition) selectedElementPositionChanged,
    required TResult Function(bool isEditingTextElement) textEditingModeChanged,
    required TResult Function() clearEditor,
    required TResult Function(Option<GlobalKey<State<StatefulWidget>>> key) setCanvasKey,
    required TResult Function(Color color) changeCanvasBackgroundColor,
    required TResult Function() changeCanvasBackgroundImage,
    required TResult Function() removeCanvasBackgroundImage,
    required TResult Function() duplicateSelectedElement,
  }) {
    return changeCanvasBackgroundImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
  }) {
    return changeCanvasBackgroundImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (changeCanvasBackgroundImage != null) {
      return changeCanvasBackgroundImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Undo value) undo,
    required TResult Function(Redo value) redo,
    required TResult Function(AddStaticText value) addStaticText,
    required TResult Function(StaticTextChanged value) staticTextChanged,
    required TResult Function(StaticTextStyleChanged value) staticTextStyleChanged,
    required TResult Function(StaticTextAlignChanged value) staticTextAlignChanged,
    required TResult Function(AddVariableText value) addVariableText,
    required TResult Function(VariableTextFileChanged value) variableTextFileChanged,
    required TResult Function(VariableTextStyleChanged value) variableTextStyleChanged,
    required TResult Function(VariableTextAlignChanged value) variableTextAlignChanged,
    required TResult Function(AddImage value) addImage,
    required TResult Function(CanvasDragStart value) canvasDragStart,
    required TResult Function(CanvasDragUpdate value) canvasDragUpdate,
    required TResult Function(CanvasDragEnd value) canvasDragEnd,
    required TResult Function(ElementDragStart value) elementDragStart,
    required TResult Function(ElementDragUpdate value) elementDragUpdate,
    required TResult Function(ElementDragEnd value) elementDragEnd,
    required TResult Function(CanvasTap value) canvasTap,
    required TResult Function(ElementTap value) elementTap,
    required TResult Function(RemoveSelectedElement value) removeSelectedElement,
    required TResult Function(DeselectElement value) deselectElement,
    required TResult Function(BringSelectedElementToFront value) bringSelectedElementToFront,
    required TResult Function(ResizeUpdate value) resizeUpdate,
    required TResult Function(ResizeEnd value) resizeEnd,
    required TResult Function(SelectedElementSizeChanged value) selectedElementSizeChanged,
    required TResult Function(SelectedElementPositionChanged value) selectedElementPositionChanged,
    required TResult Function(TextEditingModeChanged value) textEditingModeChanged,
    required TResult Function(ClearEditor value) clearEditor,
    required TResult Function(SetCanvasKey value) setCanvasKey,
    required TResult Function(ChangeCanvasBackgroundColor value) changeCanvasBackgroundColor,
    required TResult Function(ChangeCanvasBackgroundImage value) changeCanvasBackgroundImage,
    required TResult Function(RemoveCanvasBackgroundImage value) removeCanvasBackgroundImage,
    required TResult Function(DuplicateSelectedElement value) duplicateSelectedElement,
  }) {
    return changeCanvasBackgroundImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
  }) {
    return changeCanvasBackgroundImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (changeCanvasBackgroundImage != null) {
      return changeCanvasBackgroundImage(this);
    }
    return orElse();
  }
}

abstract class ChangeCanvasBackgroundImage implements EditorEvent {
  const factory ChangeCanvasBackgroundImage() = _$ChangeCanvasBackgroundImage;
}

/// @nodoc
abstract class _$$RemoveCanvasBackgroundImageCopyWith<$Res> {
  factory _$$RemoveCanvasBackgroundImageCopyWith(
          _$RemoveCanvasBackgroundImage value, $Res Function(_$RemoveCanvasBackgroundImage) then) =
      __$$RemoveCanvasBackgroundImageCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemoveCanvasBackgroundImageCopyWithImpl<$Res> extends _$EditorEventCopyWithImpl<$Res>
    implements _$$RemoveCanvasBackgroundImageCopyWith<$Res> {
  __$$RemoveCanvasBackgroundImageCopyWithImpl(
      _$RemoveCanvasBackgroundImage _value, $Res Function(_$RemoveCanvasBackgroundImage) _then)
      : super(_value, (v) => _then(v as _$RemoveCanvasBackgroundImage));

  @override
  _$RemoveCanvasBackgroundImage get _value => super._value as _$RemoveCanvasBackgroundImage;
}

/// @nodoc

class _$RemoveCanvasBackgroundImage implements RemoveCanvasBackgroundImage {
  const _$RemoveCanvasBackgroundImage();

  @override
  String toString() {
    return 'EditorEvent.removeCanvasBackgroundImage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$RemoveCanvasBackgroundImage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addStaticText,
    required TResult Function(String updatedText) staticTextChanged,
    required TResult Function(TextStyle? updatedTextStyle) staticTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) staticTextAlignChanged,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addVariableText,
    required TResult Function() variableTextFileChanged,
    required TResult Function(TextStyle? updatedTextStyle) variableTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) variableTextAlignChanged,
    required TResult Function() addImage,
    required TResult Function(Offset localPosition) canvasDragStart,
    required TResult Function(Offset delta) canvasDragUpdate,
    required TResult Function() canvasDragEnd,
    required TResult Function(Element draggedElement, Offset localPosition) elementDragStart,
    required TResult Function(Offset delta) elementDragUpdate,
    required TResult Function() elementDragEnd,
    required TResult Function() canvasTap,
    required TResult Function(Element element) elementTap,
    required TResult Function() removeSelectedElement,
    required TResult Function() deselectElement,
    required TResult Function() bringSelectedElementToFront,
    required TResult Function(ResizeDirection resizeDirection, Offset delta) resizeUpdate,
    required TResult Function() resizeEnd,
    required TResult Function(Size updatedSize) selectedElementSizeChanged,
    required TResult Function(Offset updatedPosition) selectedElementPositionChanged,
    required TResult Function(bool isEditingTextElement) textEditingModeChanged,
    required TResult Function() clearEditor,
    required TResult Function(Option<GlobalKey<State<StatefulWidget>>> key) setCanvasKey,
    required TResult Function(Color color) changeCanvasBackgroundColor,
    required TResult Function() changeCanvasBackgroundImage,
    required TResult Function() removeCanvasBackgroundImage,
    required TResult Function() duplicateSelectedElement,
  }) {
    return removeCanvasBackgroundImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
  }) {
    return removeCanvasBackgroundImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (removeCanvasBackgroundImage != null) {
      return removeCanvasBackgroundImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Undo value) undo,
    required TResult Function(Redo value) redo,
    required TResult Function(AddStaticText value) addStaticText,
    required TResult Function(StaticTextChanged value) staticTextChanged,
    required TResult Function(StaticTextStyleChanged value) staticTextStyleChanged,
    required TResult Function(StaticTextAlignChanged value) staticTextAlignChanged,
    required TResult Function(AddVariableText value) addVariableText,
    required TResult Function(VariableTextFileChanged value) variableTextFileChanged,
    required TResult Function(VariableTextStyleChanged value) variableTextStyleChanged,
    required TResult Function(VariableTextAlignChanged value) variableTextAlignChanged,
    required TResult Function(AddImage value) addImage,
    required TResult Function(CanvasDragStart value) canvasDragStart,
    required TResult Function(CanvasDragUpdate value) canvasDragUpdate,
    required TResult Function(CanvasDragEnd value) canvasDragEnd,
    required TResult Function(ElementDragStart value) elementDragStart,
    required TResult Function(ElementDragUpdate value) elementDragUpdate,
    required TResult Function(ElementDragEnd value) elementDragEnd,
    required TResult Function(CanvasTap value) canvasTap,
    required TResult Function(ElementTap value) elementTap,
    required TResult Function(RemoveSelectedElement value) removeSelectedElement,
    required TResult Function(DeselectElement value) deselectElement,
    required TResult Function(BringSelectedElementToFront value) bringSelectedElementToFront,
    required TResult Function(ResizeUpdate value) resizeUpdate,
    required TResult Function(ResizeEnd value) resizeEnd,
    required TResult Function(SelectedElementSizeChanged value) selectedElementSizeChanged,
    required TResult Function(SelectedElementPositionChanged value) selectedElementPositionChanged,
    required TResult Function(TextEditingModeChanged value) textEditingModeChanged,
    required TResult Function(ClearEditor value) clearEditor,
    required TResult Function(SetCanvasKey value) setCanvasKey,
    required TResult Function(ChangeCanvasBackgroundColor value) changeCanvasBackgroundColor,
    required TResult Function(ChangeCanvasBackgroundImage value) changeCanvasBackgroundImage,
    required TResult Function(RemoveCanvasBackgroundImage value) removeCanvasBackgroundImage,
    required TResult Function(DuplicateSelectedElement value) duplicateSelectedElement,
  }) {
    return removeCanvasBackgroundImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
  }) {
    return removeCanvasBackgroundImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (removeCanvasBackgroundImage != null) {
      return removeCanvasBackgroundImage(this);
    }
    return orElse();
  }
}

abstract class RemoveCanvasBackgroundImage implements EditorEvent {
  const factory RemoveCanvasBackgroundImage() = _$RemoveCanvasBackgroundImage;
}

/// @nodoc
abstract class _$$DuplicateSelectedElementCopyWith<$Res> {
  factory _$$DuplicateSelectedElementCopyWith(
          _$DuplicateSelectedElement value, $Res Function(_$DuplicateSelectedElement) then) =
      __$$DuplicateSelectedElementCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DuplicateSelectedElementCopyWithImpl<$Res> extends _$EditorEventCopyWithImpl<$Res>
    implements _$$DuplicateSelectedElementCopyWith<$Res> {
  __$$DuplicateSelectedElementCopyWithImpl(
      _$DuplicateSelectedElement _value, $Res Function(_$DuplicateSelectedElement) _then)
      : super(_value, (v) => _then(v as _$DuplicateSelectedElement));

  @override
  _$DuplicateSelectedElement get _value => super._value as _$DuplicateSelectedElement;
}

/// @nodoc

class _$DuplicateSelectedElement implements DuplicateSelectedElement {
  const _$DuplicateSelectedElement();

  @override
  String toString() {
    return 'EditorEvent.duplicateSelectedElement()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$DuplicateSelectedElement);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() undo,
    required TResult Function() redo,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addStaticText,
    required TResult Function(String updatedText) staticTextChanged,
    required TResult Function(TextStyle? updatedTextStyle) staticTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) staticTextAlignChanged,
    required TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)
        addVariableText,
    required TResult Function() variableTextFileChanged,
    required TResult Function(TextStyle? updatedTextStyle) variableTextStyleChanged,
    required TResult Function(TextAlign? updatedTextAlign) variableTextAlignChanged,
    required TResult Function() addImage,
    required TResult Function(Offset localPosition) canvasDragStart,
    required TResult Function(Offset delta) canvasDragUpdate,
    required TResult Function() canvasDragEnd,
    required TResult Function(Element draggedElement, Offset localPosition) elementDragStart,
    required TResult Function(Offset delta) elementDragUpdate,
    required TResult Function() elementDragEnd,
    required TResult Function() canvasTap,
    required TResult Function(Element element) elementTap,
    required TResult Function() removeSelectedElement,
    required TResult Function() deselectElement,
    required TResult Function() bringSelectedElementToFront,
    required TResult Function(ResizeDirection resizeDirection, Offset delta) resizeUpdate,
    required TResult Function() resizeEnd,
    required TResult Function(Size updatedSize) selectedElementSizeChanged,
    required TResult Function(Offset updatedPosition) selectedElementPositionChanged,
    required TResult Function(bool isEditingTextElement) textEditingModeChanged,
    required TResult Function() clearEditor,
    required TResult Function(Option<GlobalKey<State<StatefulWidget>>> key) setCanvasKey,
    required TResult Function(Color color) changeCanvasBackgroundColor,
    required TResult Function() changeCanvasBackgroundImage,
    required TResult Function() removeCanvasBackgroundImage,
    required TResult Function() duplicateSelectedElement,
  }) {
    return duplicateSelectedElement();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
  }) {
    return duplicateSelectedElement?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? undo,
    TResult Function()? redo,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)? addStaticText,
    TResult Function(String updatedText)? staticTextChanged,
    TResult Function(TextStyle? updatedTextStyle)? staticTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? staticTextAlignChanged,
    TResult Function(String initialText, TextDirection textDirection, double minWidth, double maxWidth)?
        addVariableText,
    TResult Function()? variableTextFileChanged,
    TResult Function(TextStyle? updatedTextStyle)? variableTextStyleChanged,
    TResult Function(TextAlign? updatedTextAlign)? variableTextAlignChanged,
    TResult Function()? addImage,
    TResult Function(Offset localPosition)? canvasDragStart,
    TResult Function(Offset delta)? canvasDragUpdate,
    TResult Function()? canvasDragEnd,
    TResult Function(Element draggedElement, Offset localPosition)? elementDragStart,
    TResult Function(Offset delta)? elementDragUpdate,
    TResult Function()? elementDragEnd,
    TResult Function()? canvasTap,
    TResult Function(Element element)? elementTap,
    TResult Function()? removeSelectedElement,
    TResult Function()? deselectElement,
    TResult Function()? bringSelectedElementToFront,
    TResult Function(ResizeDirection resizeDirection, Offset delta)? resizeUpdate,
    TResult Function()? resizeEnd,
    TResult Function(Size updatedSize)? selectedElementSizeChanged,
    TResult Function(Offset updatedPosition)? selectedElementPositionChanged,
    TResult Function(bool isEditingTextElement)? textEditingModeChanged,
    TResult Function()? clearEditor,
    TResult Function(Option<GlobalKey<State<StatefulWidget>>> key)? setCanvasKey,
    TResult Function(Color color)? changeCanvasBackgroundColor,
    TResult Function()? changeCanvasBackgroundImage,
    TResult Function()? removeCanvasBackgroundImage,
    TResult Function()? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (duplicateSelectedElement != null) {
      return duplicateSelectedElement();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Undo value) undo,
    required TResult Function(Redo value) redo,
    required TResult Function(AddStaticText value) addStaticText,
    required TResult Function(StaticTextChanged value) staticTextChanged,
    required TResult Function(StaticTextStyleChanged value) staticTextStyleChanged,
    required TResult Function(StaticTextAlignChanged value) staticTextAlignChanged,
    required TResult Function(AddVariableText value) addVariableText,
    required TResult Function(VariableTextFileChanged value) variableTextFileChanged,
    required TResult Function(VariableTextStyleChanged value) variableTextStyleChanged,
    required TResult Function(VariableTextAlignChanged value) variableTextAlignChanged,
    required TResult Function(AddImage value) addImage,
    required TResult Function(CanvasDragStart value) canvasDragStart,
    required TResult Function(CanvasDragUpdate value) canvasDragUpdate,
    required TResult Function(CanvasDragEnd value) canvasDragEnd,
    required TResult Function(ElementDragStart value) elementDragStart,
    required TResult Function(ElementDragUpdate value) elementDragUpdate,
    required TResult Function(ElementDragEnd value) elementDragEnd,
    required TResult Function(CanvasTap value) canvasTap,
    required TResult Function(ElementTap value) elementTap,
    required TResult Function(RemoveSelectedElement value) removeSelectedElement,
    required TResult Function(DeselectElement value) deselectElement,
    required TResult Function(BringSelectedElementToFront value) bringSelectedElementToFront,
    required TResult Function(ResizeUpdate value) resizeUpdate,
    required TResult Function(ResizeEnd value) resizeEnd,
    required TResult Function(SelectedElementSizeChanged value) selectedElementSizeChanged,
    required TResult Function(SelectedElementPositionChanged value) selectedElementPositionChanged,
    required TResult Function(TextEditingModeChanged value) textEditingModeChanged,
    required TResult Function(ClearEditor value) clearEditor,
    required TResult Function(SetCanvasKey value) setCanvasKey,
    required TResult Function(ChangeCanvasBackgroundColor value) changeCanvasBackgroundColor,
    required TResult Function(ChangeCanvasBackgroundImage value) changeCanvasBackgroundImage,
    required TResult Function(RemoveCanvasBackgroundImage value) removeCanvasBackgroundImage,
    required TResult Function(DuplicateSelectedElement value) duplicateSelectedElement,
  }) {
    return duplicateSelectedElement(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
  }) {
    return duplicateSelectedElement?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Undo value)? undo,
    TResult Function(Redo value)? redo,
    TResult Function(AddStaticText value)? addStaticText,
    TResult Function(StaticTextChanged value)? staticTextChanged,
    TResult Function(StaticTextStyleChanged value)? staticTextStyleChanged,
    TResult Function(StaticTextAlignChanged value)? staticTextAlignChanged,
    TResult Function(AddVariableText value)? addVariableText,
    TResult Function(VariableTextFileChanged value)? variableTextFileChanged,
    TResult Function(VariableTextStyleChanged value)? variableTextStyleChanged,
    TResult Function(VariableTextAlignChanged value)? variableTextAlignChanged,
    TResult Function(AddImage value)? addImage,
    TResult Function(CanvasDragStart value)? canvasDragStart,
    TResult Function(CanvasDragUpdate value)? canvasDragUpdate,
    TResult Function(CanvasDragEnd value)? canvasDragEnd,
    TResult Function(ElementDragStart value)? elementDragStart,
    TResult Function(ElementDragUpdate value)? elementDragUpdate,
    TResult Function(ElementDragEnd value)? elementDragEnd,
    TResult Function(CanvasTap value)? canvasTap,
    TResult Function(ElementTap value)? elementTap,
    TResult Function(RemoveSelectedElement value)? removeSelectedElement,
    TResult Function(DeselectElement value)? deselectElement,
    TResult Function(BringSelectedElementToFront value)? bringSelectedElementToFront,
    TResult Function(ResizeUpdate value)? resizeUpdate,
    TResult Function(ResizeEnd value)? resizeEnd,
    TResult Function(SelectedElementSizeChanged value)? selectedElementSizeChanged,
    TResult Function(SelectedElementPositionChanged value)? selectedElementPositionChanged,
    TResult Function(TextEditingModeChanged value)? textEditingModeChanged,
    TResult Function(ClearEditor value)? clearEditor,
    TResult Function(SetCanvasKey value)? setCanvasKey,
    TResult Function(ChangeCanvasBackgroundColor value)? changeCanvasBackgroundColor,
    TResult Function(ChangeCanvasBackgroundImage value)? changeCanvasBackgroundImage,
    TResult Function(RemoveCanvasBackgroundImage value)? removeCanvasBackgroundImage,
    TResult Function(DuplicateSelectedElement value)? duplicateSelectedElement,
    required TResult orElse(),
  }) {
    if (duplicateSelectedElement != null) {
      return duplicateSelectedElement(this);
    }
    return orElse();
  }
}

abstract class DuplicateSelectedElement implements EditorEvent {
  const factory DuplicateSelectedElement() = _$DuplicateSelectedElement;
}

/// @nodoc
mixin _$EditorState {
  Editor get editor => throw _privateConstructorUsedError;
  Option<Element> get draggedElement => throw _privateConstructorUsedError;
  Option<Offset> get dragPosition => throw _privateConstructorUsedError;
  Option<Element> get selectedElement => throw _privateConstructorUsedError;
  bool get isEditingTextElement => throw _privateConstructorUsedError;
  Option<GlobalKey<State<StatefulWidget>>> get canvasKey => throw _privateConstructorUsedError;
  Option<Color> get canvasBackgroundColor => throw _privateConstructorUsedError;
  Option<File> get canvasBackgroundImageFile => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditorStateCopyWith<EditorState> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditorStateCopyWith<$Res> {
  factory $EditorStateCopyWith(EditorState value, $Res Function(EditorState) then) = _$EditorStateCopyWithImpl<$Res>;
  $Res call(
      {Editor editor,
      Option<Element> draggedElement,
      Option<Offset> dragPosition,
      Option<Element> selectedElement,
      bool isEditingTextElement,
      Option<GlobalKey<State<StatefulWidget>>> canvasKey,
      Option<Color> canvasBackgroundColor,
      Option<File> canvasBackgroundImageFile});

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
    Object? draggedElement = freezed,
    Object? dragPosition = freezed,
    Object? selectedElement = freezed,
    Object? isEditingTextElement = freezed,
    Object? canvasKey = freezed,
    Object? canvasBackgroundColor = freezed,
    Object? canvasBackgroundImageFile = freezed,
  }) {
    return _then(_value.copyWith(
      editor: editor == freezed
          ? _value.editor
          : editor // ignore: cast_nullable_to_non_nullable
              as Editor,
      draggedElement: draggedElement == freezed
          ? _value.draggedElement
          : draggedElement // ignore: cast_nullable_to_non_nullable
              as Option<Element>,
      dragPosition: dragPosition == freezed
          ? _value.dragPosition
          : dragPosition // ignore: cast_nullable_to_non_nullable
              as Option<Offset>,
      selectedElement: selectedElement == freezed
          ? _value.selectedElement
          : selectedElement // ignore: cast_nullable_to_non_nullable
              as Option<Element>,
      isEditingTextElement: isEditingTextElement == freezed
          ? _value.isEditingTextElement
          : isEditingTextElement // ignore: cast_nullable_to_non_nullable
              as bool,
      canvasKey: canvasKey == freezed
          ? _value.canvasKey
          : canvasKey // ignore: cast_nullable_to_non_nullable
              as Option<GlobalKey<State<StatefulWidget>>>,
      canvasBackgroundColor: canvasBackgroundColor == freezed
          ? _value.canvasBackgroundColor
          : canvasBackgroundColor // ignore: cast_nullable_to_non_nullable
              as Option<Color>,
      canvasBackgroundImageFile: canvasBackgroundImageFile == freezed
          ? _value.canvasBackgroundImageFile
          : canvasBackgroundImageFile // ignore: cast_nullable_to_non_nullable
              as Option<File>,
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
abstract class _$$_EditorStateCopyWith<$Res> implements $EditorStateCopyWith<$Res> {
  factory _$$_EditorStateCopyWith(_$_EditorState value, $Res Function(_$_EditorState) then) =
      __$$_EditorStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Editor editor,
      Option<Element> draggedElement,
      Option<Offset> dragPosition,
      Option<Element> selectedElement,
      bool isEditingTextElement,
      Option<GlobalKey<State<StatefulWidget>>> canvasKey,
      Option<Color> canvasBackgroundColor,
      Option<File> canvasBackgroundImageFile});

  @override
  $EditorCopyWith<$Res> get editor;
}

/// @nodoc
class __$$_EditorStateCopyWithImpl<$Res> extends _$EditorStateCopyWithImpl<$Res>
    implements _$$_EditorStateCopyWith<$Res> {
  __$$_EditorStateCopyWithImpl(_$_EditorState _value, $Res Function(_$_EditorState) _then)
      : super(_value, (v) => _then(v as _$_EditorState));

  @override
  _$_EditorState get _value => super._value as _$_EditorState;

  @override
  $Res call({
    Object? editor = freezed,
    Object? draggedElement = freezed,
    Object? dragPosition = freezed,
    Object? selectedElement = freezed,
    Object? isEditingTextElement = freezed,
    Object? canvasKey = freezed,
    Object? canvasBackgroundColor = freezed,
    Object? canvasBackgroundImageFile = freezed,
  }) {
    return _then(_$_EditorState(
      editor: editor == freezed
          ? _value.editor
          : editor // ignore: cast_nullable_to_non_nullable
              as Editor,
      draggedElement: draggedElement == freezed
          ? _value.draggedElement
          : draggedElement // ignore: cast_nullable_to_non_nullable
              as Option<Element>,
      dragPosition: dragPosition == freezed
          ? _value.dragPosition
          : dragPosition // ignore: cast_nullable_to_non_nullable
              as Option<Offset>,
      selectedElement: selectedElement == freezed
          ? _value.selectedElement
          : selectedElement // ignore: cast_nullable_to_non_nullable
              as Option<Element>,
      isEditingTextElement: isEditingTextElement == freezed
          ? _value.isEditingTextElement
          : isEditingTextElement // ignore: cast_nullable_to_non_nullable
              as bool,
      canvasKey: canvasKey == freezed
          ? _value.canvasKey
          : canvasKey // ignore: cast_nullable_to_non_nullable
              as Option<GlobalKey<State<StatefulWidget>>>,
      canvasBackgroundColor: canvasBackgroundColor == freezed
          ? _value.canvasBackgroundColor
          : canvasBackgroundColor // ignore: cast_nullable_to_non_nullable
              as Option<Color>,
      canvasBackgroundImageFile: canvasBackgroundImageFile == freezed
          ? _value.canvasBackgroundImageFile
          : canvasBackgroundImageFile // ignore: cast_nullable_to_non_nullable
              as Option<File>,
    ));
  }
}

/// @nodoc

class _$_EditorState extends _EditorState {
  const _$_EditorState(
      {required this.editor,
      required this.draggedElement,
      required this.dragPosition,
      required this.selectedElement,
      required this.isEditingTextElement,
      required this.canvasKey,
      required this.canvasBackgroundColor,
      required this.canvasBackgroundImageFile})
      : super._();

  @override
  final Editor editor;
  @override
  final Option<Element> draggedElement;
  @override
  final Option<Offset> dragPosition;
  @override
  final Option<Element> selectedElement;
  @override
  final bool isEditingTextElement;
  @override
  final Option<GlobalKey<State<StatefulWidget>>> canvasKey;
  @override
  final Option<Color> canvasBackgroundColor;
  @override
  final Option<File> canvasBackgroundImageFile;

  @override
  String toString() {
    return 'EditorState(editor: $editor, draggedElement: $draggedElement, dragPosition: $dragPosition, selectedElement: $selectedElement, isEditingTextElement: $isEditingTextElement, canvasKey: $canvasKey, canvasBackgroundColor: $canvasBackgroundColor, canvasBackgroundImageFile: $canvasBackgroundImageFile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EditorState &&
            const DeepCollectionEquality().equals(other.editor, editor) &&
            const DeepCollectionEquality().equals(other.draggedElement, draggedElement) &&
            const DeepCollectionEquality().equals(other.dragPosition, dragPosition) &&
            const DeepCollectionEquality().equals(other.selectedElement, selectedElement) &&
            const DeepCollectionEquality().equals(other.isEditingTextElement, isEditingTextElement) &&
            const DeepCollectionEquality().equals(other.canvasKey, canvasKey) &&
            const DeepCollectionEquality().equals(other.canvasBackgroundColor, canvasBackgroundColor) &&
            const DeepCollectionEquality().equals(other.canvasBackgroundImageFile, canvasBackgroundImageFile));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(editor),
      const DeepCollectionEquality().hash(draggedElement),
      const DeepCollectionEquality().hash(dragPosition),
      const DeepCollectionEquality().hash(selectedElement),
      const DeepCollectionEquality().hash(isEditingTextElement),
      const DeepCollectionEquality().hash(canvasKey),
      const DeepCollectionEquality().hash(canvasBackgroundColor),
      const DeepCollectionEquality().hash(canvasBackgroundImageFile));

  @JsonKey(ignore: true)
  @override
  _$$_EditorStateCopyWith<_$_EditorState> get copyWith =>
      __$$_EditorStateCopyWithImpl<_$_EditorState>(this, _$identity);
}

abstract class _EditorState extends EditorState {
  const factory _EditorState(
      {required final Editor editor,
      required final Option<Element> draggedElement,
      required final Option<Offset> dragPosition,
      required final Option<Element> selectedElement,
      required final bool isEditingTextElement,
      required final Option<GlobalKey<State<StatefulWidget>>> canvasKey,
      required final Option<Color> canvasBackgroundColor,
      required final Option<File> canvasBackgroundImageFile}) = _$_EditorState;
  const _EditorState._() : super._();

  @override
  Editor get editor;
  @override
  Option<Element> get draggedElement;
  @override
  Option<Offset> get dragPosition;
  @override
  Option<Element> get selectedElement;
  @override
  bool get isEditingTextElement;
  @override
  Option<GlobalKey<State<StatefulWidget>>> get canvasKey;
  @override
  Option<Color> get canvasBackgroundColor;
  @override
  Option<File> get canvasBackgroundImageFile;
  @override
  @JsonKey(ignore: true)
  _$$_EditorStateCopyWith<_$_EditorState> get copyWith => throw _privateConstructorUsedError;
}
