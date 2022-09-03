import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

void showColorPickerDialog({
  required BuildContext context,
  required void Function(Color color) onColorChanged,
  Color? initialColor,
}) {
  final MediaQueryData moc = MediaQuery.of(context);
  showDialog(
    context: context,
    builder: (context) => Stack(
      children: [
        GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
        ),
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: moc.size.width / 1.7,
            height: moc.size.height / 1.7,
            child: Material(
              color: Colors.transparent,
              child: SingleChildScrollView(
                child: ColorPicker(
                  onColorChanged: onColorChanged,
                  pickerColor: initialColor ?? Colors.black,
                ),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
