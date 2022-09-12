import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_editor/services/editor/editor.dart' as editor;
import 'package:photo_editor/ui/screens/editor_screen/bloc/editor_bloc/editor_bloc.dart';

void changeTextElementProperties({
  required BuildContext context,
  required editor.Element element,
  TextStyle? Function(TextStyle? currentTextStyle)? updatedTextStyleBuilder,
  TextAlign? Function(TextAlign? currentTextAlign)? updatedTextAlignBuilder,
}) {
  late final TextStyle? selectedElementTextStyle;
  late final TextAlign? selectedElementTextAlign;
  if (element.properties.isStaticTextProperties) {
    selectedElementTextStyle = (element.properties as editor.StaticTextProperties).textStyle;
    selectedElementTextAlign = (element.properties as editor.StaticTextProperties).textAlign;
  } else if (element.properties.isVariableTextProperties) {
    selectedElementTextStyle = (element.properties as editor.VariableTextProperties).textStyle;
    selectedElementTextAlign = (element.properties as editor.VariableTextProperties).textAlign;
  }

  if (updatedTextStyleBuilder != null) {
    TextStyle? updatedTextStyle = updatedTextStyleBuilder.call(selectedElementTextStyle);

    if (element.properties.isStaticTextProperties) {
      context.read<EditorBloc>().add(EditorEvent.staticTextStyleChanged(updatedTextStyle: updatedTextStyle));
    } else if (element.properties.isVariableTextProperties) {
      context.read<EditorBloc>().add(EditorEvent.variableTextStyleChanged(updatedTextStyle: updatedTextStyle));
    }
  }

  if (updatedTextAlignBuilder != null) {
    TextAlign? updatedTextAlign = updatedTextAlignBuilder.call(selectedElementTextAlign);

    if (element.properties.isStaticTextProperties) {
      context.read<EditorBloc>().add(EditorEvent.staticTextAlignChanged(updatedTextAlign: updatedTextAlign));
    } else if (element.properties.isVariableTextProperties) {
      context.read<EditorBloc>().add(EditorEvent.variableTextAlignChanged(updatedTextAlign: updatedTextAlign));
    }
  }
}

TextStyle? getTextElementTextStyle(editor.Element element) {
  assert(element.properties.isStaticTextProperties || element.properties.isVariableTextProperties);
  if (element.properties.isStaticTextProperties) {
    return (element.properties as editor.StaticTextProperties).textStyle;
  }
  return (element.properties as editor.VariableTextProperties).textStyle;
}
