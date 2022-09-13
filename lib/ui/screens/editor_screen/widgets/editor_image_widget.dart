import 'dart:io';

import 'package:flutter/material.dart';
import 'package:photo_editor/services/editor/editor.dart' as editor;

class EditorImageWidget extends StatelessWidget {
  final editor.FileImageProperties properties;
  final Size size;

  const EditorImageWidget(
      {Key? key, required this.properties, required this.size})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.file(
      File(properties.sourceFilePath),
      width: size.width,
      height: size.height,
      fit: BoxFit.fill,
    );
  }
}
