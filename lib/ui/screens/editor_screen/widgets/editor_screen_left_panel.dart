import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:photo_editor/services/editor/editor.dart';
import 'package:photo_editor/services/editor/editor_extension.dart';
import 'package:photo_editor/ui/screens/editor_screen/bloc/editor_bloc.dart';

class EditorScreenLeftPanel extends StatelessWidget {
  const EditorScreenLeftPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ThemeData toc = Theme.of(context);
    final MediaQueryData moc = MediaQuery.of(context);
    return BlocBuilder<EditorBloc, EditorState>(
      builder: (context, editorState) {
        // check if the selected element is text, and get its text style
        TextStyle? selectedElementTextStyle;
        TextAlign? selectedElementTextAlign;
        bool isSelectedElementStaticText = false;
        bool isSelectedElementVariableText = false;
        editorState.selectedElementId.flatMap((elId) => editorState.editor.elementById(elId).map((el) {
              if (el.properties.isStaticTextProperties) {
                selectedElementTextStyle = (el.properties as StaticTextProperties).textStyle;
                selectedElementTextAlign = (el.properties as StaticTextProperties).textAlign;
                isSelectedElementStaticText = true;
              } else if (el.properties.isVariableTextProperties) {
                selectedElementTextStyle = (el.properties as VariableTextProperties).textStyle;
                selectedElementTextAlign = (el.properties as VariableTextProperties).textAlign;
                isSelectedElementVariableText = true;
              }
            }));

        return Container(
          color: toc.colorScheme.primary,
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Tooltip(
                  message: AppLocalizations.of(context)!.addImage,
                  child: InkWell(
                    child: Icon(
                      Icons.add_a_photo,
                      color: toc.colorScheme.onPrimary,
                    ),
                    onTap: () {
                      context.read<EditorBloc>().add(const EditorEvent.addImage());
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Tooltip(
                  message: AppLocalizations.of(context)!.addStaticText,
                  child: InkWell(
                    child: Icon(
                      Icons.text_fields_outlined,
                      color: toc.colorScheme.onPrimary,
                    ),
                    onTap: () {
                      context.read<EditorBloc>().add(
                            EditorEvent.addStaticText(
                              initialText: AppLocalizations.of(context)!.typeText,
                              textDirection: Directionality.of(context),
                              minWidth: 0.0,
                              maxWidth: moc.size.width,
                            ),
                          );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Tooltip(
                  message: AppLocalizations.of(context)!.addVariableText,
                  child: InkWell(
                    child: Icon(
                      Icons.functions_outlined,
                      color: toc.colorScheme.onPrimary,
                    ),
                    onTap: () {
                      context.read<EditorBloc>().add(
                            EditorEvent.addVariableText(
                              initialText: AppLocalizations.of(context)!.generatedTextAppearsHere,
                              textDirection: Directionality.of(context),
                              minWidth: 0.0,
                              maxWidth: moc.size.width,
                            ),
                          );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Tooltip(
                  message: AppLocalizations.of(context)!.bringToFront,
                  child: InkWell(
                    child: Icon(
                      Icons.flip_to_front,
                      color: toc.colorScheme.onPrimary,
                    ),
                    onTap: () {
                      context.read<EditorBloc>().add(const EditorEvent.bringSelectedElementToFront());
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Tooltip(
                  message: AppLocalizations.of(context)!.removeElement,
                  child: InkWell(
                    child: Icon(
                      Icons.delete_forever,
                      color: toc.colorScheme.onPrimary,
                    ),
                    onTap: () {
                      context.read<EditorBloc>().add(const EditorEvent.removeSelectedElement());
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Tooltip(
                  message: AppLocalizations.of(context)!.deselect,
                  child: InkWell(
                    child: Icon(
                      Icons.deselect,
                      color: toc.colorScheme.onPrimary,
                    ),
                    onTap: () {
                      context.read<EditorBloc>().add(const EditorEvent.deselectElement());
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Tooltip(
                  message: AppLocalizations.of(context)!.clearEditor,
                  child: InkWell(
                    child: Icon(
                      Icons.clear,
                      color: toc.colorScheme.onPrimary,
                    ),
                    onTap: () {
                      context.read<EditorBloc>().add(const EditorEvent.clearEditor());
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Tooltip(
                  message: AppLocalizations.of(context)!.undo,
                  child: InkWell(
                    child: Icon(
                      Icons.undo,
                      color: toc.colorScheme.onPrimary,
                    ),
                    onTap: () {
                      context.read<EditorBloc>().add(const EditorEvent.undo());
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Tooltip(
                  message: AppLocalizations.of(context)!.redo,
                  child: InkWell(
                    child: Icon(
                      Icons.redo,
                      color: toc.colorScheme.onPrimary,
                    ),
                    onTap: () {
                      context.read<EditorBloc>().add(const EditorEvent.redo());
                    },
                  ),
                ),
              ),
              if (isSelectedElementStaticText || isSelectedElementVariableText)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Tooltip(
                    message: AppLocalizations.of(context)!.textJustification,
                    child: InkWell(
                      child: Icon(
                        Icons.format_align_justify,
                        color: toc.colorScheme.onPrimary,
                      ),
                      onTap: () {
                        List<TextAlign> values = [TextAlign.start, TextAlign.center, TextAlign.end];
                        int nextIndex = values.indexOf(selectedElementTextAlign ?? values[0]);
                        nextIndex += 1;
                        nextIndex %= values.length;
                        TextAlign updatedTextAlign = values[nextIndex];
                        if (isSelectedElementStaticText) {
                          context
                              .read<EditorBloc>()
                              .add(EditorEvent.staticTextAlignChanged(updatedTextAlign: updatedTextAlign));
                        } else if (isSelectedElementVariableText) {
                          context
                              .read<EditorBloc>()
                              .add(EditorEvent.variableTextAlignChanged(updatedTextAlign: updatedTextAlign));
                        }
                      },
                    ),
                  ),
                ),
            ],
          ),
        );
      },
    );
  }
}
