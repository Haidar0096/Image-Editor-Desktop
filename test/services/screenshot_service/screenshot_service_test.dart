import 'dart:io';
import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:photo_editor/services/screenshot_service/screenshot_service.dart';

void main() {
  group('captureWidget', () {
    testWidgets('Should return the correct Uint8List when successful.', (WidgetTester tester) async {
      TestWidgetsFlutterBinding.ensureInitialized();

      // setup the physical size
      tester.binding.window.physicalSizeTestValue = const Size(1366.0, 673.0);
      tester.binding.window.devicePixelRatioTestValue = 1.0;

      // reset the edited settings after the test ends
      addTearDown(tester.binding.window.clearPhysicalSizeTestValue);
      addTearDown(tester.binding.window.clearDevicePixelRatioTestValue);

      final Widget appWidget = MaterialApp(
        home: Scaffold(
          body: Center(
            child: Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
          ),
        ),
      );
      await tester.pumpWidget(appWidget);
      await tester.pumpAndSettle();

      // setup the screenshot service
      ScreenshotService screenshotService = ScreenshotService();

      // capture the widget and get the actual result Uint8List
      final Uint8List? actualResult =
          await tester.runAsync<Uint8List?>(() async => (await screenshotService.captureWidget(
                widget: appWidget,
                context: tester.element(find.byType(Container)),
                outputImageSize: const Size(1366, 768),
                window: tester.binding.window,
                delay: const Duration(milliseconds: 1000),
                outputImagePixelRatio: 1.0,
                outputImageByteFormat: ImageByteFormat.png,
              )));

      // file that contains an expected screenshot of the widget
      final File expectedResultFile =
          File('test_resources/screenshot_service_test_resources/capture_widget/expected_captured_image.png');

      // assert the result is correct
      expect(actualResult, expectedResultFile.readAsBytesSync());
    });
  });
}
