import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

/// Shows a color picker dialog.
Future<void> showColorPickerDialog({
  required BuildContext context,

  /// A callback to be called when the color changes.
  required void Function(Color color) onColorChanged,

  /// The initial color to be selected.
  Color? initialColor,
}) async {
  await showDialog(
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
          Positioned(
            left: moc.size.width / 2 - moc.size.width / 1.3 / 4.2,
            top: moc.size.height / 2 - moc.size.height / 1.7 / 2,
            child: SizedBox(
              width: moc.size.width / 1.3,
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
