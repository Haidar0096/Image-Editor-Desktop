import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

void showColorPickerDialog({
  required BuildContext context,
  required void Function(Color color) onColorChanged,
  Color? initialColor,
}) {
  showDialog(
    context: context,
    builder: (dialogContext) {
      final MediaQueryData moc = MediaQuery.of(dialogContext);
      return Stack(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(dialogContext).pop();
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
                  child: Theme(
                    data: Theme.of(dialogContext),
                    child: ColorPicker(
                      onColorChanged: onColorChanged,
                      pickerColor: initialColor ?? Colors.black,
                      paletteType: PaletteType.hueWheel,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    },
  );
}
