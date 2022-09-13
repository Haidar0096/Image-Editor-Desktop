import 'dart:io' as io;

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:photo_editor/services/file_picker/file_picker_impl.dart';
import 'package:file_picker/file_picker.dart' as api;

/// A class that can be used to choose files from the file system.
@injectable
abstract class FilePicker {
  /// Creates a file picker that can be used to pick files or directories from the filesystem.
  @factoryMethod
  factory FilePicker() =>
      FilePickerDefaultImpl(apiFilePicker: api.FilePicker.platform);

  /// Picks a single file from the file system.
  ///
  /// - [allowedExtensions]: the allowed extensions that can be chosen from.
  Future<Option<io.File>> pickSingleFile({
    String? initialDirectory,
    String? dialogTitle,
    List<String>? allowedExtensions,
  });

  /// Picks a directory from the file system.
  Future<Option<io.Directory>> pickPath({
    String? dialogTitle,
    String? initialDirectory,
  });
}
