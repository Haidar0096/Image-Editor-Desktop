import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_editor/ui/common/widgets/loading_widget.dart';
import 'package:photo_editor/ui/screens/editor_screen/widgets/editor_screen_appbar.dart';
import 'package:photo_editor/ui/screens/editor_screen/widgets/editor_screen_canvas.dart';
import 'package:photo_editor/ui/screens/editor_screen/widgets/editor_screen_left_panel.dart';
import 'package:photo_editor/ui/screens/editor_screen/widgets/editor_screen_navbar.dart';
import 'package:photo_editor/ui/screens/editor_screen/widgets/editor_screen_right_panel.dart';

import 'bloc/screenshot_cubit/screenshot_cubit.dart';

class EditorScreen extends StatelessWidget {
  static const routeName = '/editor-screen';

  const EditorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData toc = Theme.of(context);

    const int editorScreenAppBarFlex = 5;
    const int editorScreenBodyFlex = 90;
    const int editorScreenNavBarFlex = 5;

    const int editorScreenLeftPanelFlex = 4;
    const int editorScreenCanvasFlex = 87;
    const int editorScreenRightPanelFlex = 9;

    return BlocBuilder<ScreenshotCubit, ScreenshotState>(
      builder: (context, screenshotState) {
        return Material(
          child: Stack(
            children: [
              Positioned.fill(
                child: Column(
                  children: [
                    const Expanded(
                        flex: editorScreenAppBarFlex,
                        child: EditorScreenAppBar()),
                    Expanded(
                      flex: editorScreenBodyFlex,
                      child: Row(
                        children: const [
                          Expanded(
                              flex: editorScreenLeftPanelFlex,
                              child: EditorScreenLeftPanel()),
                          Expanded(
                              flex: editorScreenCanvasFlex,
                              child: EditorScreenCanvas()),
                          Expanded(
                              flex: editorScreenRightPanelFlex,
                              child: EditorScreenRightPanel()),
                        ],
                      ),
                    ),
                    const Expanded(
                        flex: editorScreenNavBarFlex,
                        child: EditorScreenNavBar()),
                  ],
                ),
              ),
              if (screenshotState.processingState != ProcessingState.idle)
                const Positioned.fill(child: AbsorbPointer()),
              if (screenshotState.processingState != ProcessingState.idle)
                Positioned.fill(
                  child: LoadingWidget(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            screenshotState.processingState.getMessage(context),
                            style: toc.textTheme.subtitle1,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            screenshotState.progressMessage
                                .fold(() => '', (progress) => progress),
                            style: toc.textTheme.subtitle1,
                          ),
                        ),
                      ],
                    ),
                    onDismiss: () => context
                        .read<ScreenshotCubit>()
                        .cancelCaptureWidget(context),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
