import 'package:flutter/material.dart';
import 'package:photo_editor/services/editor/editor.dart' as editor;

class EditorTextWidget extends StatelessWidget {
  final editor.Element element;

  const EditorTextWidget({Key? key, required this.element}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final editor.TextElementType textElementType =
        element.elementType as editor.TextElementType;
    return Text(
      textElementType.value,
      style: textElementType.textStyle,
    );
  }
}
