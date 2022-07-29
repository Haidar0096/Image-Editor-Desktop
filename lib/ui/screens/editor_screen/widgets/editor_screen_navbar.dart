import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_editor/ui/screens/editor_screen/bloc/editor_bloc.dart';

class EditorScreenNavBar extends StatelessWidget {
  const EditorScreenNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData toc = Theme.of(context);
    return BlocBuilder<EditorBloc, EditorState>(
      builder: (context, editorState) {
        return Container(
          color: toc.colorScheme.secondary,
          child: Stack(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    editorState.dragPosition.fold(
                      () => '( x , y )',
                      (dragPosition) => '(${dragPosition.dx.toStringAsFixed(2)},${dragPosition.dy.toStringAsFixed(2)})',
                    ),
                    style: TextStyle(color: toc.colorScheme.onSecondary),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
