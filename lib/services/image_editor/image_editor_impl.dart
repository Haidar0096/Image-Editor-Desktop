import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:photo_editor/services/image_editor/image_editor.dart';
import 'package:image/image.dart' as image_api;
import 'package:photo_editor/services/image_editor/image_editor_exception.dart';

/// Default implementation of the [ImageEditor]. It uses the package: https://pub.dev/packages/image to implement the api.
class ImageEditorDefaultImpl implements ImageEditor {
  @override
  Future<Uint8List> copyResize({
    required Uint8List imageData,
    required ImageFormat outputFormat,
    ImageFormat? inputFormat,
    int? width,
    int? height,
    int? quality,
  }) async =>
      (await compute<_CopyResizeParams, Either<String, Uint8List>>(
        _copyResize,
        _CopyResizeParams(
          imageData: imageData,
          outputFormat: outputFormat,
          inputFormat: inputFormat,
          width: width,
          height: height,
          quality: quality,
        ),
      ))
          .fold((message) => throw ImageEditorException(message), id);

  static Either<String, Uint8List> _copyResize(_CopyResizeParams params) {
    late final image_api.Image? decodedImage = _decodeImage(
      imageData: params.imageData,
      inputFormat: params.inputFormat,
    );
    if (decodedImage == null) {
      return left('Could not decode the image');
    }

    final image_api.Image resizedImage = image_api.copyResize(
      decodedImage,
      width: params.width,
      height: params.height,
    );

    switch (params.outputFormat) {
      case ImageFormat.jpeg:
        return right(
            Uint8List.fromList(image_api.JpegEncoder(quality: params.quality ?? 100).encodeImage(resizedImage)));
      case ImageFormat.png:
      default:
        return right(Uint8List.fromList(image_api.PngEncoder().encodeImage(resizedImage)));
    }
  }

  @override
  Future<Uint8List> encodeImage({
    required Uint8List imageData,
    required ImageFormat outputFormat,
    ImageFormat? inputFormat,
    int? quality,
  }) async =>
      (await compute<_EncodeImageParams, Either<String, Uint8List>>(
        _encodeImage,
        _EncodeImageParams(
          imageData: imageData,
          outputFormat: outputFormat,
          inputFormat: inputFormat,
          quality: quality,
        ),
      ))
          .fold((message) {
        throw ImageEditorException(message);
      }, id);

  static Either<String, Uint8List> _encodeImage(_EncodeImageParams params) {
    late final image_api.Image? decodedImage = _decodeImage(
      imageData: params.imageData,
      inputFormat: params.inputFormat,
    );
    if (decodedImage == null) {
      return left('Could not decode the image.');
    }
    switch (params.outputFormat) {
      case ImageFormat.jpeg:
        return right(
            Uint8List.fromList(image_api.JpegEncoder(quality: params.quality ?? 100).encodeImage(decodedImage)));
      case ImageFormat.png:
      default:
        return right(Uint8List.fromList(image_api.PngEncoder().encodeImage(decodedImage)));
    }
  }

  @override
  Future<void> saveImage({
    required Uint8List imageData,
    required ImageFormat outputFormat,
    required String path,
    required String name,
  }) =>
      compute<_SaveImageParams, void>(
        _saveImage,
        _SaveImageParams(
          imageData: imageData,
          outputFormat: outputFormat,
          path: path,
          name: name,
        ),
      );

  static void _saveImage(_SaveImageParams params) async {
    if(!Directory(params.path).existsSync()) {
      Directory(params.path).createSync(recursive: true);
    }
    await File('${params.path}/${params.name}.${params.outputFormat.name.toLowerCase()}')
        .writeAsBytes(params.imageData);
  }

  static image_api.Image? _decodeImage({
    required Uint8List imageData,
    required ImageFormat? inputFormat,
  }) {
    late final image_api.Image? decodedImage;
    switch (inputFormat) {
      case ImageFormat.jpeg:
        decodedImage = image_api.JpegDecoder().decodeImage(imageData);
        break;
      case ImageFormat.png:
        decodedImage = image_api.decodePng(imageData);
        break;
      default:
        decodedImage = image_api.decodeImage(imageData);
    }
    return decodedImage;
  }
}

class _CopyResizeParams {
  final Uint8List imageData;
  final ImageFormat outputFormat;
  final ImageFormat? inputFormat;
  final int? width;
  final int? height;
  final int? quality;

  _CopyResizeParams({
    required this.imageData,
    required this.outputFormat,
    this.inputFormat,
    required this.width,
    required this.height,
    required this.quality,
  });
}

class _EncodeImageParams {
  final Uint8List imageData;
  final ImageFormat outputFormat;
  final ImageFormat? inputFormat;
  final int? quality;

  _EncodeImageParams({
    required this.imageData,
    required this.outputFormat,
    this.inputFormat,
    this.quality,
  });
}

class _SaveImageParams {
  final Uint8List imageData;
  final ImageFormat outputFormat;
  final String path;
  final String name;

  _SaveImageParams({
    required this.imageData,
    required this.outputFormat,
    required this.path,
    required this.name,
  });
}
