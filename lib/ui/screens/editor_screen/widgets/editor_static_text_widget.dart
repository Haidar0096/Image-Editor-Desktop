import 'package:flutter/material.dart';
import 'package:photo_editor/services/editor/editor.dart' as editor;

class EditorStaticTextWidget extends StatelessWidget {
  final editor.StaticTextProperties properties;

  const EditorStaticTextWidget({Key? key, required this.properties}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      properties.text,
      style: properties.textStyle,
    );
  }
}
