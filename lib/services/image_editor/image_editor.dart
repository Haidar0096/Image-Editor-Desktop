import 'dart:typed_data';

import 'package:injectable/injectable.dart';

import 'image_editor_impl.dart';

@Injectable()
abstract class ImageEditor {
  @factoryMethod
  factory ImageEditor() => ImageEditorDefaultImpl();

  /// Returns a resized copy of the image, or null if a problem happens when processing.
  /// - [quality] is only used when the output format is [ImageFormat.jpeg].
  Future<Uint8List> copyResize({
    required Uint8List imageData,
    required ImageFormat outputFormat,
    ImageFormat? inputFormat,
    int? width,
    int? height,
    int? quality,
  });

  /// Returns an encoded version of the image in the given format.
  ///
  /// Params:
  /// - [imageData] the image data to encode.
  /// - [outputFormat] the format to encode the image to.
  /// - [quality] the quality of the image. It is only used for the [ImageFormat.jpeg] format.
  Future<Uint8List> encodeImage({
    required Uint8List imageData,
    required ImageFormat outputFormat,
    ImageFormat? inputFormat,
    int? quality,
  });

  /// Writes the image to the file at the given [path].
  ///
  /// - [name] is the name of the file.
  Future<void> saveImage({
    required Uint8List imageData,
    required ImageFormat outputFormat,
    required String path,
    required String name,
  });
}

enum ImageFormat {
  jpeg,
  png,
}
