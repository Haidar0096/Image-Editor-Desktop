import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_editor/ui/screens/editor_screen/bloc/editor_bloc.dart';
import 'package:collection/collection.dart';

class EditorWidget extends StatelessWidget {
  const EditorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditorBloc, EditorState>(
      builder: (context, state) {
        return SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              ...state.editor.elements
                  .sorted((a, b) => a.showOrder.compareTo(b.showOrder))
                  .map(
                (element) {
                  // create widget based on element type
                  Widget stackChild = element.elementType.map(
                    image: (imageElement) => Image.file(
                      File(imageElement.path),
                      width: element.rect.width,
                      height: element.rect.height,
                      fit: BoxFit.fill,
                    ),
                    text: (textElement) {
                      return Text(textElement.value);
                    },
                  );

                  // decorate element if selected
                  stackChild = state.selectedElementId.fold(() {
                    // no selected element
                    return stackChild;
                  }, (selectedId) {
                    // selected element
                    if (element.id == selectedId) {
                      // this element is selected
                      return Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.red, width: 1.0),
                        ),
                        child: stackChild,
                      );
                    } else {
                      // this element is not selected
                      return stackChild;
                    }
                  });

                  // wrap with Positioned
                  stackChild = Positioned.fromRect(
                    rect: element.rect,
                    child: stackChild,
                  );

                  return stackChild;
                },
              ),
              Positioned.fill(
                child: GestureDetector(
                  onTapUp: (details) {
                    context
                        .read<EditorBloc>()
                        .add(TapUp(details.localPosition));
                  },
                  onPanStart: (details) {
                    context
                        .read<EditorBloc>()
                        .add(DragStart(details.localPosition));
                  },
                  onPanUpdate: (details) {
                    context
                        .read<EditorBloc>()
                        .add(DragUpdate(details.localPosition));
                  },
                  onPanEnd: (details) {
                    context.read<EditorBloc>().add(const DragEnd());
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
