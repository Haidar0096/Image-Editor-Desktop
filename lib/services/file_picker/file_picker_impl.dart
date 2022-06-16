import 'dart:io' as io;

import 'package:dartz/dartz.dart';
import 'package:file_picker/file_picker.dart' as api;
import 'package:injectable/injectable.dart';
import 'package:photo_editor/services/file_picker/file_picker.dart';

/// The default implementation of [FilePicker]. It uses the file_picker package for the implementation.
@Injectable(as: FilePicker)
class FilePickerImpl implements FilePicker {
  final api.FilePicker _filePicker = api.FilePicker.platform;

  @override
  Future<Option<io.File>> pickSingleFile({
    String? initialDirectory,
    String? dialogTitle,
    List<String>? allowedExtensions,
  }) async {
    final api.FilePickerResult? pickerResult = await _filePicker.pickFiles(
      allowedExtensions: allowedExtensions,
      type: allowedExtensions == null ? api.FileType.any : api.FileType.custom,
      allowMultiple: false,
      dialogTitle: dialogTitle,
      initialDirectory: initialDirectory,
    );
    return optionOf(pickerResult?.files.first.path)
        .map((path) => io.File(path));
  }

  @override
  Future<Option<io.Directory>> pickPath({
    String? dialogTitle,
    String? initialDirectory,
  }) async {
    final String? directoryString = await _filePicker.getDirectoryPath(
      dialogTitle: dialogTitle,
      initialDirectory: initialDirectory,
    );
    return optionOf(directoryString).map((path) => io.Directory(path));
  }
}
