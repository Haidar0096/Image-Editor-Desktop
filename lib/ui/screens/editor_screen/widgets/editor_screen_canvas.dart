import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_editor/services/editor/editor_extension.dart';
import 'package:photo_editor/ui/screens/editor_screen/bloc/editor_bloc.dart';
import 'package:photo_editor/ui/screens/editor_screen/widgets/editor_element_delegate_widget.dart';

class EditorScreenCanvas extends StatelessWidget {
  const EditorScreenCanvas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData toc = Theme.of(context);
    return BlocBuilder<EditorBloc, EditorState>(
      builder: (context, editorState) {
        return Container(
          color: toc.colorScheme.background,
          child: Stack(
            children: [
              ...editorState.editor.elementsSortedByShowOrder.map(
                (element) {
                  // each element is mapped to the corresponding widget
                  Widget child = EditorElementDelegateWidget(element: element);

                  // decorate the element if it is selected
                  editorState.selectedElementId.fold(
                    () {
                      // there is no selected element, do nothing
                    },
                    (selectedElementId) {
                      // there is selected element, decorate it if it is this element
                      if (element.id == selectedElementId) {
                        child = Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.red, width: 2.0),
                          ),
                          child: child,
                        );
                      }
                    },
                  );

                  return Positioned(
                    left: element.rect.topLeft.dx,
                    top: element.rect.topLeft.dy,
                    child: child,
                  );
                },
              ).toList(),
              Positioned.fill(
                child: GestureDetector(
                  onPanStart: (details) {
                    context.read<EditorBloc>().add(EditorEvent.dragStart(details.localPosition));
                  },
                  onPanUpdate: (details) {
                    context.read<EditorBloc>().add(EditorEvent.dragUpdate(details.delta));
                  },
                  onPanEnd: (details) {
                    context.read<EditorBloc>().add(const EditorEvent.dragEnd());
                  },
                  onTapUp: (details) {
                    context.read<EditorBloc>().add(EditorEvent.tap(details.localPosition));
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
