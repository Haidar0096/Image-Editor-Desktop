import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_editor/services/editor/editor.dart' as editor;
import 'package:photo_editor/ui/screens/editor_screen/bloc/editor_bloc/editor_bloc.dart';
import 'package:photo_editor/ui/screens/editor_screen/widgets/editor_image_widget.dart';
import 'package:photo_editor/ui/screens/editor_screen/widgets/editor_static_text_widget.dart';
import 'package:photo_editor/ui/screens/editor_screen/widgets/editor_variable_text_widget.dart';

/// This widget delegates the rendering of the editor element to the appropriate widget according to the element type.
class EditorElementDelegateWidget extends StatelessWidget {
  /// The editor element to render.
  final editor.Element element;

  const EditorElementDelegateWidget({
    Key? key,
    required this.element,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final EditorBloc bloc = context.read<EditorBloc>();
    bool isSelectedElement = bloc.state.selectedElement.fold(() => false, (el) => el.id == element.id);
    bool isEditingText = bloc.state.isEditingTextElement;
    return element.properties.map(
      fileImageProperties: (fileImageProperties) => EditorImageWidget(
        properties: fileImageProperties,
        size: element.rect.size,
      ),
      staticTextProperties: (staticTextProperties) => EditorStaticTextWidget(
        key: ValueKey(staticTextProperties),
        properties: staticTextProperties,
        isSelected: isSelectedElement,
        isEditingText: isEditingText,
      ),
      variableTextProperties: (variableTextProperties) => EditorVariableTextWidget(properties: variableTextProperties),
    );
  }
}
