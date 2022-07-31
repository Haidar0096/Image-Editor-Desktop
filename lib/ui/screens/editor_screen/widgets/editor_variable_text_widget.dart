import 'package:flutter/material.dart';
import 'package:photo_editor/services/editor/editor.dart' as editor;

class EditorVariableTextWidget extends StatelessWidget {
  final editor.VariableTextProperties properties;

  const EditorVariableTextWidget({Key? key, required this.properties}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      properties.placeHolderText,
      style: properties.textStyle,
      textAlign: properties.textAlign,
    );
  }
}
