import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:photo_editor/services/editor/editor_extension.dart';
import 'package:photo_editor/ui/screens/editor_screen/bloc/editor_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:photo_editor/services/editor/editor.dart' as editor;
import 'package:google_fonts/google_fonts.dart';

class LeftPanel extends StatelessWidget {
  const LeftPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final toc = Theme.of(context);
    return BlocBuilder<EditorBloc, EditorState>(
      builder: (context, state) {
        return Container(
          color: toc.colorScheme.secondary,
          child: state.selectedElementId.fold(
            () {
              // there is no selected element
              return null;
            },
            (selectedElementId) {
              // there is selected element

              // get the element
              return state.editor.elementById(selectedElementId).fold(
                () {
                  // element not in the editor, this state can never be reached
                  return null;
                },
                (selectedElement) {
                  bool isTextElement =
                      selectedElement.elementType is editor.TextElementType;

                  bool isVariableTextElement = selectedElement.elementType
                      is editor.VariableTextElementType;

                  return Column(
                    children: [
                      _action(
                        context: context,
                        icon: Icons.delete_forever_rounded,
                        toolTipMessage:
                            AppLocalizations.of(context)!.removeElement,
                        onPressed: () {
                          context.read<EditorBloc>().add(
                                RemoveElementEditorEvent(
                                  elementId: selectedElementId,
                                ),
                              );
                        },
                      ),
                      _action(
                        context: context,
                        icon: Icons.flip_to_front,
                        toolTipMessage:
                            AppLocalizations.of(context)!.bringToFront,
                        onPressed: () {
                          context
                              .read<EditorBloc>()
                              .add(const BringToFrontEditorEvent());
                        },
                      ),
                      if (isTextElement || isVariableTextElement)
                        _action(
                          context: context,
                          icon: Icons.edit,
                          toolTipMessage:
                              AppLocalizations.of(context)!.editText,
                          onPressed: () async {
                            if (isTextElement) {
                              await showDialog(
                                context: context,
                                builder: (_) => EditTextDialog(
                                  element: selectedElement,
                                  bloc: context.read<EditorBloc>(),
                                ),
                              );
                            } else if (isVariableTextElement) {
                              context.read<EditorBloc>().add(
                                  VariableTextElementFileChangedEvent(
                                      context: context));
                            }
                          },
                        ),
                      if (isTextElement || isVariableTextElement)
                        _action(
                          context: context,
                          icon: Icons.color_lens,
                          toolTipMessage:
                              AppLocalizations.of(context)!.changeColor,
                          onPressed: () {
                            late final TextStyle? currentTextStyle;
                            if (isTextElement) {
                              currentTextStyle = (selectedElement.elementType
                                      as editor.TextElementType)
                                  .textStyle;
                            } else if (isVariableTextElement) {
                              currentTextStyle = (selectedElement.elementType
                                      as editor.VariableTextElementType)
                                  .textStyle;
                            }
                            _showColorPicker(context, toc, currentTextStyle,
                                (color) {
                              if (isTextElement) {
                                context.read<EditorBloc>().add(
                                      TextElementTextStyleChangedEditorEvent(
                                        context: context,
                                        updatedTextStyle:
                                            currentTextStyle!.copyWith(
                                          color: color,
                                        ),
                                      ),
                                    );
                              } else if (isVariableTextElement) {
                                context.read<EditorBloc>().add(
                                      VariableTextElementTextStyleChangedEditorEvent(
                                        context: context,
                                        updatedTextStyle:
                                            currentTextStyle!.copyWith(
                                          color: color,
                                        ),
                                      ),
                                    );
                              }
                            });
                          },
                        ),
                      _action(
                        context: context,
                        icon: Icons.add,
                        toolTipMessage:
                            AppLocalizations.of(context)!.makeLarger,
                        onPressed: () async {
                          context.read<EditorBloc>().add(
                                const MakeElementLargerEditorEvent(),
                              );
                        },
                      ),
                      _action(
                        context: context,
                        icon: Icons.remove,
                        toolTipMessage:
                            AppLocalizations.of(context)!.makeSmaller,
                        onPressed: () async {
                          context.read<EditorBloc>().add(
                                const MakeElementSmallerEditorEvent(),
                              );
                        },
                      ),
                      if (isTextElement || isVariableTextElement)
                        _action(
                          context: context,
                          icon: Icons.font_download,
                          toolTipMessage:
                              AppLocalizations.of(context)!.makeSmaller,
                          onPressed: () async {
                            await showDialog(
                              context: context,
                              builder: (_) {
                                if (isTextElement) {
                                  return _fontsDialog(
                                    context,
                                    (updatedTextStyle) {
                                      final currentTextStyle =
                                          (selectedElement.elementType
                                                  as editor.TextElementType)
                                              .textStyle;
                                      context.read<EditorBloc>().add(
                                            EditorEvent
                                                .textElementTextStyleChanged(
                                              context: context,
                                              updatedTextStyle:
                                                  currentTextStyle!.copyWith(
                                                fontFamily:
                                                    updatedTextStyle.fontFamily,
                                                fontStyle:
                                                    updatedTextStyle.fontStyle,
                                                fontFamilyFallback:
                                                    updatedTextStyle
                                                        .fontFamilyFallback,
                                                fontFeatures: updatedTextStyle
                                                    .fontFeatures,
                                                fontWeight:
                                                    updatedTextStyle.fontWeight,
                                              ),
                                            ),
                                          );
                                    },
                                  );
                                } else if (isVariableTextElement) {
                                  return _fontsDialog(
                                    context,
                                    (updatedTextStyle) {
                                      final currentTextStyle = (selectedElement
                                                  .elementType
                                              as editor.VariableTextElementType)
                                          .textStyle;
                                      context.read<EditorBloc>().add(
                                            EditorEvent
                                                .variableTextElementTextStyleChanged(
                                              context: context,
                                              updatedTextStyle:
                                                  currentTextStyle!.copyWith(
                                                fontFamily:
                                                    updatedTextStyle.fontFamily,
                                                fontStyle:
                                                    updatedTextStyle.fontStyle,
                                                fontFamilyFallback:
                                                    updatedTextStyle
                                                        .fontFamilyFallback,
                                                fontFeatures: updatedTextStyle
                                                    .fontFeatures,
                                                fontWeight:
                                                    updatedTextStyle.fontWeight,
                                              ),
                                            ),
                                          );
                                    },
                                  );
                                } else {
                                  return Container();
                                }
                              },
                            );
                          },
                        ),
                      if (isTextElement || isVariableTextElement)
                        _changeFontSizeAction(
                            context, selectedElement, toc, Icons.add, () {
                          if (isTextElement) {
                            final currentTextStyle = (selectedElement
                                    .elementType as editor.TextElementType)
                                .textStyle;
                            context.read<EditorBloc>().add(
                                  TextElementTextStyleChangedEditorEvent(
                                    context: context,
                                    updatedTextStyle: currentTextStyle!
                                        .copyWith(
                                            fontSize:
                                                currentTextStyle.fontSize! + 3),
                                  ),
                                );
                          } else if (isVariableTextElement) {
                            final currentTextStyle =
                                (selectedElement.elementType
                                        as editor.VariableTextElementType)
                                    .textStyle;
                            context.read<EditorBloc>().add(
                                  VariableTextElementTextStyleChangedEditorEvent(
                                    context: context,
                                    updatedTextStyle: currentTextStyle!
                                        .copyWith(
                                            fontSize:
                                                currentTextStyle.fontSize! + 3),
                                  ),
                                );
                          }
                        }),
                      if (isTextElement || isVariableTextElement)
                        _changeFontSizeAction(
                            context, selectedElement, toc, Icons.remove, () {
                          if (isTextElement) {
                            final currentTextStyle = (selectedElement
                                    .elementType as editor.TextElementType)
                                .textStyle;
                            context.read<EditorBloc>().add(
                                  TextElementTextStyleChangedEditorEvent(
                                    context: context,
                                    updatedTextStyle: currentTextStyle!
                                        .copyWith(
                                            fontSize:
                                                currentTextStyle.fontSize! - 3),
                                  ),
                                );
                          } else if (isVariableTextElement) {
                            final currentTextStyle =
                                (selectedElement.elementType
                                        as editor.VariableTextElementType)
                                    .textStyle;
                            context.read<EditorBloc>().add(
                                  VariableTextElementTextStyleChangedEditorEvent(
                                    context: context,
                                    updatedTextStyle: currentTextStyle!
                                        .copyWith(
                                            fontSize:
                                                currentTextStyle.fontSize! - 3),
                                  ),
                                );
                          }
                        }),
                    ],
                  );
                },
              );
            },
          ),
        );
      },
    );
  }

  Future<dynamic> _showColorPicker(BuildContext context, ThemeData toc,
      TextStyle? currentTextStyle, void Function(Color) onColorChanged) {
    return showDialog(
      context: context,
      builder: (_) {
        return Dialog(
          backgroundColor: toc.colorScheme.background,
          child: SizedBox(
            width: MediaQuery.of(context).size.width / 2.5,
            height: MediaQuery.of(context).size.height / 2.5,
            child: FittedBox(
              child: ColorPicker(
                pickerColor: Colors.black,
                onColorChanged: onColorChanged,
              ),
            ),
          ),
        );
      },
    );
  }

  Padding _changeFontSizeAction(
      BuildContext context,
      editor.Element selectedElement,
      ThemeData toc,
      IconData icon,
      void Function() onTap) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Tooltip(
        message: AppLocalizations.of(context)!.fontSize,
        child: InkWell(
          onTap: onTap,
          child: Row(
            children: [
              Icon(
                Icons.numbers,
                color: toc.colorScheme.onSecondary,
              ),
              Icon(
                icon,
                color: toc.colorScheme.onSecondary,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Dialog _fontsDialog(BuildContext context, void Function(TextStyle) onUpdate) {
    final List<String> fonts = GoogleFonts.asMap().keys.toList();
    final textStyleFunctions = GoogleFonts.asMap().values.toList();
    return Dialog(
      child: SizedBox(
        width: MediaQuery.of(context).size.width / 2,
        height: MediaQuery.of(context).size.height / 2,
        child: ListView.builder(
          itemBuilder: (_, index) {
            return TextButton(
              onPressed: () {
                final updatedTextStyle = textStyleFunctions[index]();
                onUpdate(updatedTextStyle);
              },
              child: Text(
                fonts[index].toString(),
                style: textStyleFunctions[index](),
              ),
            );
          },
          itemCount: fonts.length,
        ),
      ),
    );
  }

  Padding _action({
    required BuildContext context,
    required IconData icon,
    required VoidCallback onPressed,
    required String toolTipMessage,
  }) {
    final toc = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Tooltip(
        message: toolTipMessage,
        textStyle: toc.textTheme.headline6,
        child: InkWell(
          child: Icon(
            icon,
            color: toc.colorScheme.onSecondary,
          ),
          onTap: onPressed,
        ),
      ),
    );
  }
}

class EditTextDialog extends StatefulWidget {
  final editor.Element element;
  final EditorBloc bloc;

  const EditTextDialog({Key? key, required this.element, required this.bloc})
      : super(key: key);

  @override
  State<EditTextDialog> createState() => _EditTextDialogState();
}

class _EditTextDialogState extends State<EditTextDialog> {
  late final TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController(
        text: (widget.element.elementType as editor.TextElementType).value);
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Material(
        child: SizedBox(
          width: MediaQuery.of(context).size.width / 2,
          height: MediaQuery.of(context).size.height / 2,
          child: TextField(
            textDirection: Directionality.of(context),
            controller: _textEditingController,
            style: (widget.element.elementType as editor.TextElementType)
                .textStyle,
            onChanged: (_) {
              widget.bloc.add(
                TextElementTextChangedEditorEvent(
                  context: context,
                  updatedText: _textEditingController.text,
                ),
              );
            },
            maxLines: 1000,
          ),
        ),
      ),
    );
  }
}
