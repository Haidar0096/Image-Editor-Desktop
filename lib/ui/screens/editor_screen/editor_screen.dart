import 'package:flutter/material.dart';
import 'package:photo_editor/ui/screens/editor_screen/widgets/editor_screen_appbar.dart';
import 'package:photo_editor/ui/screens/editor_screen/widgets/editor_screen_canvas.dart';
import 'package:photo_editor/ui/screens/editor_screen/widgets/editor_screen_left_panel.dart';
import 'package:photo_editor/ui/screens/editor_screen/widgets/editor_screen_navbar.dart';
import 'package:photo_editor/ui/screens/editor_screen/widgets/editor_screen_right_panel.dart';

class EditorScreen extends StatelessWidget {
  static const routeName = '/editor-screen';

  const EditorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const int editorScreenAppBarFlex = 6;
    const int editorScreenBodyFlex = 91;
    const int editorScreenNavBarFlex = 3;

    const int editorScreenLeftPanelFlex = 4;
    const int editorScreenCanvasFlex = 87;
    const int editorScreenRightPanelFlex = 9;

    return Material(
      child: Column(
        children: [
          const Expanded(flex: editorScreenAppBarFlex, child: EditorScreenAppBar()),
          Expanded(
            flex: editorScreenBodyFlex,
            child: Row(
              children: const [
                Expanded(flex: editorScreenLeftPanelFlex, child: EditorScreenLeftPanel()),
                Expanded(flex: editorScreenCanvasFlex, child: EditorScreenCanvas()),
                Expanded(flex: editorScreenRightPanelFlex, child: EditorScreenRightPanel()),
              ],
            ),
          ),
          const Expanded(flex: editorScreenNavBarFlex, child: EditorScreenNavBar()),
        ],
      ),
    );
  }
}
