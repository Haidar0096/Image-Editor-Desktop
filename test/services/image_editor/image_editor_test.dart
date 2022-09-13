import 'dart:io';
import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';
import 'package:photo_editor/services/image_editor/image_editor.dart';
import 'package:photo_editor/services/image_editor/image_editor_exception.dart';

part 'image_editor_test_constants.dart';

void main() {
  group('copyResize', () {
    test('should return a resized copy of the image.', () async {
      final ImageEditor imageEditor = ImageEditor();
      final Uint8List imageData =
          File('test_resources/image_editor_test_resources/fayruz_love.png')
              .readAsBytesSync();
      final Uint8List jpegActualResizedImageData = await imageEditor.copyResize(
        imageData: imageData,
        inputFormat: ImageFormat.png,
        outputFormat: ImageFormat.jpeg,
        quality: 100,
        width: 100,
        height: 100,
      );
      final Uint8List pngActualResizedImageData = await imageEditor.copyResize(
        imageData: imageData,
        inputFormat: ImageFormat.png,
        outputFormat: ImageFormat.png,
        width: 100,
        height: 100,
      );
      expect(jpegActualResizedImageData, jpegExpectedResizedImageData);
      expect(pngActualResizedImageData, pngExpectedResizedImageData);
    });
    test(
        'Should throw an error if image could not be decoded when copyResize is called.',
        () async {
      final ImageEditor imageEditor = ImageEditor();
      expect(
        () => imageEditor.copyResize(
          imageData: Uint8List.fromList([1, 2, 3]),
          inputFormat: ImageFormat.png,
          outputFormat: ImageFormat.jpeg,
          quality: 100,
          width: 100,
          height: 100,
        ),
        throwsA(equals(ImageEditorException('Could not decode the image'))),
      );
    });
  });

  group('encodeImage', () {
    test('should return an encoded copy of the image.', () async {
      final ImageEditor imageEditor = ImageEditor();
      final Uint8List imageData =
          File('test_resources/image_editor_test_resources/fayruz_love.png')
              .readAsBytesSync();
      final Uint8List jpegActualEncodedImageData =
          await imageEditor.encodeImage(
        imageData: imageData,
        inputFormat: ImageFormat.png,
        outputFormat: ImageFormat.jpeg,
        quality: 100,
      );
      final Uint8List pngActualEncodedImageData = await imageEditor.encodeImage(
        imageData: imageData,
        inputFormat: ImageFormat.png,
        outputFormat: ImageFormat.png,
      );
      expect(jpegActualEncodedImageData, jpegExpectedEncodedImageData);
      expect(pngActualEncodedImageData, pngExpectedEncodedImageData);
    });
    test(
        'Should throw an error if image could not be decoded when encode is called.',
        () async {
      final ImageEditor imageEditor = ImageEditor();
      try {
        await imageEditor.encodeImage(
          imageData: Uint8List.fromList([0]),
          inputFormat: ImageFormat.png,
          outputFormat: ImageFormat.jpeg,
          quality: 100,
        );
      } on ImageEditorException catch (e) {
        expect(e.message, equals('Could not decode the image.'));
      }
    });
  });

  group('saveImage', () {
    test('Should save the image correctly', () async {
      Uint8List imageData =
          File('test_resources/image_editor_test_resources/fayruz_love.png')
              .readAsBytesSync();
      final ImageEditor imageEditor = ImageEditor();
      await imageEditor.saveImage(
        imageData: imageData,
        outputFormat: ImageFormat.png,
        name: 'fayruz_love',
        path: 'test_resources/image_editor_test_resources/saved_image',
      );
      final savedImageData = File(
              'test_resources/image_editor_test_resources/saved_image/fayruz_love.png')
          .readAsBytesSync();
      expect(savedImageData, imageData);
    });
  });

  group('ImageFormat', () {
    test('Should contain the correct values', () {
      expect(ImageFormat.values, [ImageFormat.jpeg, ImageFormat.png]);
    });
  });
}
