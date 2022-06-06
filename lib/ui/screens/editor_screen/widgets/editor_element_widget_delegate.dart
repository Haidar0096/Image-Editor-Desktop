import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_editor/services/editor/editor.dart' as editor;
import 'package:photo_editor/ui/screens/editor_screen/bloc/editor_bloc.dart';
import 'package:photo_editor/ui/screens/editor_screen/widgets/editor_image_widget.dart';
import 'package:photo_editor/ui/screens/editor_screen/widgets/editor_text_widget.dart';

import 'editor_variable_text_widget.dart';

class EditorElementWidgetDelegate extends StatelessWidget {
  final editor.Element element;

  const EditorElementWidgetDelegate({
    Key? key,
    required this.element,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // check if this element is selected
    bool isSelected = context.read<EditorBloc>().state.selectedElementId.fold(
      () {
        // there is no selected element
        return false;
      },
      (selectedId) {
        // there is selected element
        if (element.id == selectedId) {
          // this element is selected
          return true;
        } else {
          // this element is not selected
          return false;
        }
      },
    );

    // create widget based on element type
    Widget widget = element.elementType.map(
      image: (_) => EditorImageWidget(element: element),
      text: (_) => EditorTextWidget(element: element),
      variableText: (_) => EditorVariableTextWidget(element: element),
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
