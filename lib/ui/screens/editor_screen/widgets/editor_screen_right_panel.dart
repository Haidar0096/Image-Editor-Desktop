import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_editor/services/editor/editor_extension.dart';
import 'package:photo_editor/ui/screens/editor_screen/bloc/editor_bloc.dart';

class EditorScreenRightPanel extends StatelessWidget {
  const EditorScreenRightPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData toc = Theme.of(context);
    return BlocBuilder<EditorBloc, EditorState>(
      builder: (context, editorState) {
        // TODO: Add options to style the variable and static text, and change the source file of variable text.
        // TODO: Add options to change the static text (maybe not in this widget)
        // TODO: remove the widgets below in favor of the widgets mentioned above

        final el = editorState.selectedElementId
            .flatMap((id) => editorState.editor.elementById(id).map((el) => el))
            .toNullable();
        return Container(
          color: toc.colorScheme.primary,
          child: ListView(
            children: [
              if (el != null) ...[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Text('x: ${el.rect.topLeft.dx.toStringAsFixed(2)}'),
                  ),
                ),
                Divider(color: toc.colorScheme.onSecondary),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Text('y: ${el.rect.topLeft.dy.toStringAsFixed(2)}'),
                  ),
                ),
                Divider(color: toc.colorScheme.onSecondary),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Text('w: ${el.rect.size.width.toStringAsFixed(2)}'),
                  ),
                ),
                Divider(color: toc.colorScheme.onSecondary),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Text('h: ${el.rect.size.height.toStringAsFixed(2)}'),
                  ),
                ),
              ]
            ],
          ),
        );
      },
    );
  }
}
