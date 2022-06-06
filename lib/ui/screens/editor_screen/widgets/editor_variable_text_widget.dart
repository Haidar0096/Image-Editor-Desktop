import 'package:flutter/material.dart';
import 'package:photo_editor/services/editor/editor.dart' as editor;

class EditorVariableTextWidget extends StatelessWidget {
  final editor.Element element;

  const EditorVariableTextWidget({Key? key, required this.element})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final elementType = element.elementType as editor.VariableTextElementType;
    return Text(
      elementType.placeHolderText,
      style: elementType.textStyle,
    );
  }
}
