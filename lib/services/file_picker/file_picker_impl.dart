import 'dart:io' as io;

import 'package:dartz/dartz.dart';
import 'package:file_picker/file_picker.dart' as api;
import 'package:photo_editor/services/file_picker/file_picker.dart';

/// The default implementation of [FilePicker]. It uses the file_picker package for the implementation.
class FilePickerDefaultImpl implements FilePicker {
  final api.FilePicker apiFilePicker;

  FilePickerDefaultImpl({required this.apiFilePicker});

  @override
  Future<Option<io.File>> pickSingleFile({
    String? initialDirectory,
    String? dialogTitle,
    List<String>? allowedExtensions,
  }) async {

    throw Exception('hello');
    final api.FilePickerResult? pickerResult = await apiFilePicker.pickFiles(
      allowedExtensions: allowedExtensions,
      type: allowedExtensions == null ? api.FileType.any : api.FileType.custom,
      allowMultiple: false,
      dialogTitle: dialogTitle,
      initialDirectory: initialDirectory,
    );
    return optionOf(pickerResult?.files.first.path).map((path) => io.File(path));
  }

  @override
  Future<Option<io.Directory>> pickPath({
    String? dialogTitle,
    String? initialDirectory,
  }) async {
    final String? directoryString = await apiFilePicker.getDirectoryPath(
      dialogTitle: dialogTitle,
      initialDirectory: initialDirectory,
    );
    return optionOf(directoryString).map((path) => io.Directory(path));
  }
}
