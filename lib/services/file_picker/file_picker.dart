import 'dart:io' as io;

import 'package:dartz/dartz.dart';

/// A class that can be used to choose files from the file system.
abstract class FilePicker {
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
