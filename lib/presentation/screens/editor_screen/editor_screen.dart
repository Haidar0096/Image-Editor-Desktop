import 'package:flutter/material.dart';
import 'package:photo_editor/presentation/screens/editor_screen/widgets/editor_canvas.dart';
import 'package:photo_editor/presentation/screens/editor_screen/widgets/left_panel.dart';
import 'package:photo_editor/presentation/screens/editor_screen/widgets/right_panel.dart';

class EditorScreen extends StatelessWidget {
  static const routeName = '/editor-screen';

  const EditorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final toc = Theme.of(context);
    return Scaffold(
      backgroundColor: toc.colorScheme.background,
      body: Row(
        children: const [
          Expanded(
            flex: 5,
            child: LeftPanel(),
          ),
          Expanded(
            flex: 85,
            child: EditorCanvas(),
          ),
          Expanded(
            flex: 10,
            child: RightPanel(),
          ),
        ],
      ),
    );
  }
}
