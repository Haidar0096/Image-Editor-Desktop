import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_editor/ui/screens/editor_screen/bloc/editor_bloc.dart';

class EditorScreenRightPanel extends StatelessWidget {
  const EditorScreenRightPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData toc = Theme.of(context);
    return BlocBuilder<EditorBloc, EditorState>(
      builder: (context, editorState) {
        // TODO: Add options to style the variable and static text, change the source file of variable text.
        return Container(color: toc.colorScheme.primary);
      },
    );
  }
}
