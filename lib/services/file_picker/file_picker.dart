import 'dart:io' as io;

import 'package:dartz/dartz.dart';

abstract class FilePicker {
  Future<Option<io.File>> pickSingleFile({List<String>? allowedExtensions});

  Future<Option<io.Directory>> pickPath();
}
