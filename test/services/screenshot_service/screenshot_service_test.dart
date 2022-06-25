import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:photo_editor/services/screenshot_service/screenshot_service.dart';

part 'screenshot_service_test_constants.dart'; // contains the bytes of the captured image and the app widget

void main() {
  group('captureWidget', () {
    testWidgets('Should return the correct Uint8List when successful.', (WidgetTester tester) async {
      TestWidgetsFlutterBinding.ensureInitialized();

      await tester.pumpWidget(appWidget);
      await tester.pumpAndSettle();

      // setup the screenshot service
      ScreenshotService screenshotService = ScreenshotService();

      // capture the widget and get the actual result Uint8List
      final List<int>? actualResult =
          await tester.runAsync<List<int>?>(() async => (await screenshotService.captureWidget(
                widget: appWidget,
                context: tester.element(find.byType(Text)),
              ))
                  .toList());

      // assert the result is correct
      expect(actualResult, expectedResult);
    });
  });
}
