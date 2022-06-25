import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_editor/ui/screens/editor_screen/bloc/editor_bloc.dart';

class EditorNavBar extends StatelessWidget {
  const EditorNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final toc = Theme.of(context);

    const positionTextFlex = 6;
    const dividerFlex = 1;
    const remainderFlex = 100 - positionTextFlex - 1 * dividerFlex;

    return Container(
      padding: const EdgeInsets.all(1.0),
      decoration: BoxDecoration(
        color: toc.colorScheme.primary,
        border: Border.all(width: 1.0, color: toc.colorScheme.onBackground),
      ),
      child: BlocBuilder<EditorBloc, EditorState>(
        builder: (context, state) {
          return Row(
            children: [
              Expanded(
                flex: remainderFlex,
                child: Container(),
              ),
              Expanded(
                flex: dividerFlex,
                child: VerticalDivider(color: toc.colorScheme.onPrimary),
              ),
              Expanded(
                flex: positionTextFlex,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    state.dragPosition.fold(
                      () => '(0.0, 0.0)',
                      (pos) => '(${pos.dx.toStringAsFixed(1)},${pos.dy.toStringAsFixed(1)})',
                    ),
                    style: toc.textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
