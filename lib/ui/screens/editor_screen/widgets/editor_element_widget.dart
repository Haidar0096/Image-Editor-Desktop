import 'dart:io';

import 'package:flutter/material.dart';
import 'package:photo_editor/services/editor/editor.dart' as editor;

class EditorElementWidget extends StatelessWidget {
  final editor.Element element;
  final bool isSelected;

  const EditorElementWidget({
    Key? key,
    required this.element,
    required this.isSelected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // create widget based on element type
    Widget widget = element.elementType.map(
      image: (imageElement) => Image.file(
        File(imageElement.path),
        width: element.rect.width,
        height: element.rect.height,
        fit: BoxFit.fill,
      ),
      text: (textElement) {
        return Text(textElement.value);
      },
    );

    // decorate element if selected
    if (isSelected) {
      widget = Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.red, width: 1.0),
        ),
        child: widget,
      );
    }

    return widget;
  }
}
