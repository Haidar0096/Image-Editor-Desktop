import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

/// A widget that is a hybrid between [TextField] and [Text] widgets.
///
/// Initially, this will be a [Text] widget with the provided [initialText].
///
/// When the user clicks on it, it becomes a [TextField] with a configurable value. And when it loses focus or when `Enter` key is
/// pressed, it returns back to the state of being a [Text] widget.
///
/// Callbacks can be provided to further control the behavior.
class DoubleStateText extends StatefulWidget {
  /// This callback will be invoked when this widget is a [Text] and the user clicks on it.
  ///
  /// The returned will be used as the initial text of the [TextField].
  ///
  /// If null is returned or if this callback is not provided, then the [initialText] value will be used instead as initial text
  /// of the [TextField].
  final String Function()? onGainFocus;

  /// This callback will be invoked when this widget is a [TextField] and it loses focus or `Enter` key is pressed.
  ///
  /// The parameter provided will be the value of the [TextField] when it lost focus, and the return value
  /// will be used to set the new text value of the [Text] widget. If the return value is null or if this callback is
  /// not provided, then the [initialText] value will be provided instead.
  final String? Function(String value)? onLoseFocus;

  /// The text value to show initially in the [Text] widget.
  final String initialText;

  /// Optional theme parameter to override the default theme.
  final ThemeData? theme;

  /// See [TextField] for more information about this parameter.
  final InputDecoration? inputDecoration;

  /// See [Text] and [TextField] for more information about this parameter.
  final int? maxLines;

  /// See [TextField] for more information about this parameter.
  final Color? cursorColor;

  /// The padding to put around the [Text] and [TextField].
  final EdgeInsets padding;

  /// See [Text] for more information about this parameter.
  final TextStyle? textStyle;

  /// See [Text] and [TextField] for more information about this parameter.
  final TextAlign? textAlign;

  /// Whether the text is initially selected when this widget becomes a [TextField].
  final bool initiallySelected;

  const DoubleStateText({
    Key? key,
    this.onGainFocus,
    this.onLoseFocus,
    required this.initialText,
    this.theme,
    this.inputDecoration,
    this.maxLines,
    this.cursorColor,
    this.padding = EdgeInsets.zero,
    this.textStyle,
    this.textAlign,
    this.initiallySelected = true,
  }) : super(key: key);

  @override
  State<DoubleStateText> createState() => _DoubleStateTextState();
}

class _DoubleStateTextState extends State<DoubleStateText> {
  bool _isEditing = false;
  late final TextEditingController _textController;
  late final FocusNode _focusNode;
  late final void Function() _onChangeFocus;

  @override
  void initState() {
    super.initState();

    _textController = TextEditingController(text: widget.initialText);
    _focusNode = FocusNode();

    // handle Enter key event when the TextField is focused
    _focusNode.onKeyEvent = (node, event) {
      if (event.logicalKey == LogicalKeyboardKey.enter) {
        setState(() {
          String? text = widget.onLoseFocus?.call(_textController.text);
          _textController.text = text ?? widget.initialText;
          _isEditing = false;
        });
        return KeyEventResult.handled;
      }
      return KeyEventResult.ignored;
    };

    // handle TextField lose focus event due to other reasons
    _onChangeFocus = () {
      if (_focusNode.hasFocus) {
        String? text = widget.onGainFocus?.call();
        _textController.text = text ?? widget.initialText;
        if (widget.initiallySelected) {
          _textController.selection = TextSelection(
            baseOffset: 0,
            extentOffset: _textController.text.length,
          );
        }
      }
      if (!_focusNode.hasFocus) {
        setState(() {
          String? text = widget.onLoseFocus?.call(_textController.text);
          _textController.text = text ?? widget.initialText;
          _isEditing = false;
        });
      }
    };
    _focusNode.addListener(_onChangeFocus);
  }

  @override
  void dispose() {
    _textController.dispose();
    _focusNode.removeListener(_onChangeFocus);
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Widget child;
    if (!_isEditing) {
      child = InkWell(
        onTap: () {
          setState(() {
            _isEditing = true;
            _focusNode.requestFocus();
          });
        },
        child: Text(
          _textController.text,
          style: widget.textStyle,
          maxLines: widget.maxLines,
          textAlign: widget.textAlign,
        ),
      );
    } else {
      child = TextField(
        focusNode: _focusNode,
        controller: _textController,
        decoration: widget.inputDecoration,
        maxLines: widget.maxLines,
        cursorColor: widget.cursorColor,
        textAlign: widget.textAlign ?? TextAlign.start,
      );
    }

    child = Padding(
      padding: widget.padding,
      child: child,
    );

    child = Theme(
      data: widget.theme ?? Theme.of(context),
      child: child,
    );

    return child;
  }
}
