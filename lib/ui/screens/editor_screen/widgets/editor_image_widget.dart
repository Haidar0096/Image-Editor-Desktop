import 'dart:io';

import 'package:flutter/material.dart';
import 'package:photo_editor/services/editor/editor.dart' as editor;

class EditorImageWidget extends StatelessWidget {
  final editor.Element element;

  const EditorImageWidget({Key? key, required this.element}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.file(
      File((element.elementType as editor.ImageElementType).path),
      width: element.rect.width,
      height: element.rect.height,
      fit: BoxFit.fill,
    );
  }
}
