import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_editor/services/editor/editor.dart' as editor;
import 'package:photo_editor/ui/screens/editor_screen/bloc/editor_bloc.dart';

class EditorStaticTextWidget extends StatefulWidget {
  final editor.StaticTextProperties properties;
  final bool isSelected;
  final bool isEditingText;

  const EditorStaticTextWidget({
    Key? key,
    required this.properties,
    required this.isSelected,
    required this.isEditingText,
  }) : super(key: key);

  @override
  State<EditorStaticTextWidget> createState() => _EditorStaticTextWidgetState();
}

class _EditorStaticTextWidgetState extends State<EditorStaticTextWidget> {
  late final TextEditingController _textController;
  late final FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController(text: widget.properties.text);
    _focusNode = FocusNode();

    KeyEventResult Function(FocusNode, KeyEvent)? currentHandler = _focusNode.onKeyEvent;

    // When `Tab` is pressed, advance the cursor and add some spaces.
    _focusNode.onKeyEvent = (node, event) {
      if (event.logicalKey == LogicalKeyboardKey.tab) {
        _insertTabAtCurrentCursorPosition();
        return KeyEventResult.handled;
      }
      return currentHandler?.call(node, event) ?? KeyEventResult.ignored;
    };

    // Check if we are editing the text initially
    if (widget.isEditingText) {
      _focusNode.requestFocus();
    }

    // register callback to change text editing mode on focus lost
    _focusNode.addListener(_changeTextEditingModeOnFocusLost);
  }

  void _changeTextEditingModeOnFocusLost() {
    if (!_focusNode.hasFocus) {
      context.read<EditorBloc>().add(const EditorEvent.textEditingModeChanged(false));
    }
  }

  void _insertTabAtCurrentCursorPosition() {
    int cursorPos = _textController.selection.base.offset;

    // Right text of cursor position
    String suffixText = _textController.text.substring(cursorPos);

    // Add new text on cursor position
    String tab = '\t';
    int length = tab.length;

    // Get the left text of cursor
    String prefixText = _textController.text.substring(0, cursorPos);

    _textController.text = prefixText + tab + suffixText;

    // Cursor move to end of added text
    _textController.selection = TextSelection(
      baseOffset: cursorPos + length,
      extentOffset: cursorPos + length,
    );
  }

  @override
  void dispose() {
    _textController.dispose();
    _focusNode.removeListener(_changeTextEditingModeOnFocusLost);
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditorBloc, EditorState>(
      builder: (context, editorState) {
        Widget child;
        child = TextField(
          enabled: editorState.isEditingTextElement,
          focusNode: _focusNode,
          controller: _textController,
          decoration: null,
          maxLines: null,
          onChanged: (text) {
            context.read<EditorBloc>().add(EditorEvent.staticTextChanged(updatedText: text));
          },
          style: widget.properties.textStyle,
          textAlign: widget.properties.textAlign ?? TextAlign.start,
        );

        if (!editorState.isEditingTextElement && widget.isSelected) {
          child = GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () {
              setState(() {
                context.read<EditorBloc>().add(const EditorEvent.textEditingModeChanged(true));
                WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
                  _focusNode.requestFocus();
                  _textController.selection =
                      TextSelection(baseOffset: 0, extentOffset: _textController.value.text.length);
                });
              });
            },
            child: child,
          );
        }
        return child;
      },
    );
  }
}
