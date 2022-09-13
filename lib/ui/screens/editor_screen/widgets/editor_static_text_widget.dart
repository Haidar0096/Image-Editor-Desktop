import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_editor/services/editor/editor.dart' as editor;
import 'package:photo_editor/ui/screens/editor_screen/bloc/editor_bloc/editor_bloc.dart';

class EditorStaticTextWidget extends StatefulWidget {
  final editor.StaticTextProperties properties;
  final bool isSelected;

  /// Whether the text mode is editing or not editing.
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

    // When `Tab` is pressed, advance the cursor and add some spaces.
    KeyEventResult Function(FocusNode, KeyEvent)? currentHandler = _focusNode.onKeyEvent;
    _focusNode.onKeyEvent = (node, event) {
      if ((event is KeyDownEvent || event is KeyRepeatEvent) && event.logicalKey == LogicalKeyboardKey.tab) {
        _insertTabAtCurrentCursorPosition();
        return KeyEventResult.handled;
      }
      return currentHandler?.call(node, event) ?? KeyEventResult.ignored;
    };

    // Check if we were editing the text previously
    if (widget.isEditingText) {
      _focusNode.requestFocus();
    }

    // listen to focus node changes.
    _focusNode.addListener(_focusNodeListener);
  }

  @override
  void dispose() {
    _textController.dispose();
    _focusNode.removeListener(_focusNodeListener);
    _focusNode.dispose();
    super.dispose();
  }

  void _focusNodeListener() {
    if (!_focusNode.hasFocus) {
      context.read<EditorBloc>().add(EditorEvent.staticTextChanged(updatedText: _textController.text));
      context.read<EditorBloc>().add(const EditorEvent.textEditingModeChanged(false));
    }
  }

  void _insertTabAtCurrentCursorPosition() {
    int cursorPos = _textController.selection.base.offset;

    // Text to the right of current cursor position
    String suffixText = _textController.text.substring(cursorPos);

    // Add new text at cursor position
    String tab = '  ';
    int tabLength = tab.length;

    // Get the text to the left of the cursor
    String prefixText = _textController.text.substring(0, cursorPos);

    _textController.text = prefixText + tab + suffixText;

    // Move the cursor to end of added text
    _textController.selection = TextSelection(
      baseOffset: cursorPos + tabLength,
      extentOffset: cursorPos + tabLength,
    );
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
          style: widget.properties.textStyle?.copyWith(
            color: widget.properties.textStyle?.color ?? Theme.of(context).textTheme.subtitle2?.color,
          ),
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
