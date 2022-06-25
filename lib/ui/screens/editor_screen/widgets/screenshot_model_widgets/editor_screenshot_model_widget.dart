import 'package:flutter/material.dart';
import 'package:photo_editor/services/editor/editor.dart' as editor;
import 'package:photo_editor/ui/screens/editor_screen/widgets/editor_image_widget.dart';
import 'package:photo_editor/ui/screens/editor_screen/widgets/editor_text_widget.dart';
import 'package:photo_editor/ui/screens/editor_screen/widgets/editor_variable_text_widget.dart';

class EditorScreenshotModelWidget extends StatelessWidget {
  final List<editor.Element> elements;
  final ThemeData theme;

  const EditorScreenshotModelWidget({Key? key, required this.elements, required this.theme}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final toc = theme;
    return Container(
      color: toc.colorScheme.background,
      width: double.infinity,
      height: double.infinity,
      child: _editorComponents(context),
    );
  }

  Widget _editorComponents(BuildContext context) {
    return Stack(
      children: [
        ..._editorElementsWidgets(context),
      ],
    );
  }

  Iterable<Widget> _editorElementsWidgets(BuildContext context) {
    return elements.map(
      (element) {
        // create widget based on element type
        Widget stackChild = EditorElementWidgetDelegateModel(element: element);

        // wrap with Positioned
        stackChild = Positioned.fromRect(
          rect: element.rect,
          child: stackChild,
        );

        return stackChild;
      },
    );
  }
}

class EditorElementWidgetDelegateModel extends StatelessWidget {
  final editor.Element element;

  const EditorElementWidgetDelegateModel({Key? key, required this.element}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // create widget based on element type
    Widget widget = element.elementType.map(
      image: (_) => EditorImageWidget(element: element),
      text: (_) => EditorTextWidget(element: element),
      variableText: (_) => EditorVariableTextWidget(element: element),
    );

    return widget;
  }
}
