import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:photo_editor/services/editor/editor.dart' as editor;

/// A widget that represents the editor. It does not contain any detectors of user
/// input or interactions, but only the essential data to be able to render the editor elements.
class EditorScreenshotModelWidget extends StatelessWidget {
  final List<editor.Element> elements;
  final ThemeData theme;
  final Size canvasSize;
  final Option<Color> backgroundColor;
  final Option<File> backgroundImageFile;

  const EditorScreenshotModelWidget({
    Key? key,
    required this.elements,
    required this.theme,
    required this.canvasSize,
    required this.backgroundColor,
    required this.backgroundImageFile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData toc = theme;
    return Container(
      color: backgroundColor.getOrElse(() => toc.colorScheme.background),
      width: canvasSize.width.ceilToDouble(),
      height: canvasSize.height.ceilToDouble(),
      child: Stack(
        children: [
          if (backgroundImageFile.isSome())
            Positioned.fill(
              child: Image.file(
                File(backgroundImageFile.toNullable()!.path),
                fit: BoxFit.fill,
              ),
            ),
          ...elements
              .map(
                (element) => Positioned.fromRect(
                  rect: element.rect,
                  child: EditorElementWidgetDelegateModel(element: element),
                ),
              )
              .toList()
        ],
      ),
    );
  }
}

class EditorElementWidgetDelegateModel extends StatelessWidget {
  final editor.Element element;

  const EditorElementWidgetDelegateModel({Key? key, required this.element})
      : super(key: key);

  @override
  Widget build(BuildContext context) => element.properties.map(
        fileImageProperties: (fileImageProperties) => EditorImageWidgetModel(
          properties: fileImageProperties,
          size: element.rect.size,
        ),
        staticTextProperties: (staticTextProperties) =>
            EditorStaticTextWidgetModel(properties: staticTextProperties),
        variableTextProperties: (variableTextProperties) =>
            EditorVariableTextWidgetModel(properties: variableTextProperties),
      );
}

class EditorImageWidgetModel extends StatelessWidget {
  final editor.FileImageProperties properties;
  final Size size;

  const EditorImageWidgetModel({
    Key? key,
    required this.properties,
    required this.size,
  }) : super(key: key);

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

class EditorStaticTextWidgetModel extends StatelessWidget {
  final editor.StaticTextProperties properties;

  const EditorStaticTextWidgetModel({
    Key? key,
    required this.properties,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Text(
        properties.text,
        style: properties.textStyle?.copyWith(
          color: properties.textStyle?.color ??
              Theme.of(context).textTheme.subtitle2?.color,
        ),
        textAlign: properties.textAlign,
      );
}

class EditorVariableTextWidgetModel extends StatelessWidget {
  final editor.VariableTextProperties properties;

  const EditorVariableTextWidgetModel({
    Key? key,
    required this.properties,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Text(
        properties.placeHolderText,
        style: properties.textStyle?.copyWith(
          color: properties.textStyle?.color ??
              Theme.of(context).textTheme.subtitle2?.color,
        ),
        textAlign: properties.textAlign,
      );
}
