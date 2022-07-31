import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_editor/services/editor/editor.dart' as editor;
import 'package:photo_editor/ui/screens/editor_screen/bloc/editor_bloc.dart';

class EditorStaticTextWidget extends StatefulWidget {
  final editor.StaticTextProperties properties;

  /// Whether this element is selected.
  final bool isSelected;

  const EditorStaticTextWidget({Key? key, required this.properties, required this.isSelected}) : super(key: key);

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
    _focusNode.onKeyEvent = (node, event) {
      if (event.logicalKey == LogicalKeyboardKey.tab) {
        _insertTabAtCurrentCursorPosition();
        return KeyEventResult.handled;
      }
      return KeyEventResult.ignored;
    };
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
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!widget.isSelected) {
      return Text(
        widget.properties.text,
        maxLines: null,
        style: widget.properties.textStyle,
        textAlign: widget.properties.textAlign ?? TextAlign.start,
      );
    } else {
      return TextField(
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
    }
  }
}
