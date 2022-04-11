import 'dart:io' as io;

import 'package:dartz/dartz.dart';
import 'package:file_picker/file_picker.dart' as api;
import 'package:injectable/injectable.dart';
import 'package:photo_editor/domain/file_picker/file_picker.dart';

@Injectable(as: FilePicker)
class FilePickerImpl implements FilePicker {
  final api.FilePicker _filePicker = api.FilePicker.platform;

  @override
  Future<Option<io.Directory>> pickPath({String? dialogTitle}) async {
    final directoryString =  await _filePicker.getDirectoryPath(dialogTitle: dialogTitle);
    return optionOf(directoryString).map((path) => io.Directory(path));
  }

  @override
  Future<Option<io.File>> pickSingleFile(
      {List<String>? allowedExtensions}) async {
    final pickerResult = await _filePicker.pickFiles(
      allowedExtensions: allowedExtensions,
      type: allowedExtensions == null ? api.FileType.any : api.FileType.custom,
    );
    return optionOf(pickerResult?.files.first.path)
        .map((path) => io.File(path));
  }
}
