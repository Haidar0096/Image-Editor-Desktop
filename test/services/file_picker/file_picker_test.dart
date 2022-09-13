import 'dart:io' as io;

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:file_picker/file_picker.dart' as api;
import 'package:mockito/mockito.dart';
import 'package:photo_editor/services/file_picker/file_picker.dart';
import 'package:photo_editor/services/file_picker/file_picker_impl.dart';

import 'file_picker_test.mocks.dart';

@GenerateMocks([], customMocks: [MockSpec<api.FilePicker>(as: #MockApiFilePicker)])
void main() {
  group('pickSingleFile', () {
    test('Should return the correct result when a file is picked,', () async {
      // set up the mocks
      final MockApiFilePicker mockApiFilePicker = MockApiFilePicker();

      when(
        mockApiFilePicker.pickFiles(
          initialDirectory: captureThat(equals('/'), named: 'initialDirectory'),
          dialogTitle: captureThat(equals('Pick a file'), named: 'dialogTitle'),
          allowedExtensions: captureThat(equals(['jpeg', 'jpg']), named: 'allowedExtensions'),
          type: captureThat(equals(api.FileType.custom), named: 'type'),
          allowMultiple: captureThat(equals(false), named: 'allowMultiple'),
          onFileLoading: captureAnyNamed('onFileLoading'),
          withData: captureAnyNamed('withData'),
          withReadStream: captureAnyNamed('withReadStream'),
          lockParentWindow: captureAnyNamed('lockParentWindow'),
          allowCompression: captureAnyNamed('allowCompression'),
        ),
      ).thenAnswer(
        (realInvocation) async => api.FilePickerResult(
          [
            api.PlatformFile(
              name: 'image',
              size: 100,
              path: '/image.jpeg',
            )
          ],
        ),
      );

      // pick a file
      // we don't use the factory constructor here since we want to inject
      // the mock api file picker instead of a real one, for the purpose of testing
      FilePicker filePicker = FilePickerDefaultImpl(apiFilePicker: mockApiFilePicker);

      final io.File? result = (await filePicker.pickSingleFile(
        dialogTitle: 'Pick a file',
        initialDirectory: '/',
        allowedExtensions: ['jpeg', 'jpg'],
      ))
          .fold(() => null, (file) => file);

      // assert the result is correct
      expect(result?.path, '/image.jpeg');
    });
    test('Should return the correct result when a file is not picked,', () async {
      // set up the mocks
      final MockApiFilePicker mockApiFilePicker = MockApiFilePicker();

      when(
        mockApiFilePicker.pickFiles(
          initialDirectory: captureThat(equals('/'), named: 'initialDirectory'),
          dialogTitle: captureThat(equals('Pick a file'), named: 'dialogTitle'),
          allowedExtensions: captureThat(equals(['jpeg', 'jpg']), named: 'allowedExtensions'),
          type: captureThat(equals(api.FileType.custom), named: 'type'),
          allowMultiple: captureThat(equals(false), named: 'allowMultiple'),
          onFileLoading: captureAnyNamed('onFileLoading'),
          withData: captureAnyNamed('withData'),
          withReadStream: captureAnyNamed('withReadStream'),
          lockParentWindow: captureAnyNamed('lockParentWindow'),
          allowCompression: captureAnyNamed('allowCompression'),
        ),
      ).thenAnswer((realInvocation) async => null);

      // pick a file
      // we don't use the factory constructor here since we want to inject
      // the mock api file picker instead of a real one, for the purpose of testing
      FilePicker filePicker = FilePickerDefaultImpl(apiFilePicker: mockApiFilePicker);

      final io.File? result = (await filePicker.pickSingleFile(
        dialogTitle: 'Pick a file',
        initialDirectory: '/',
        allowedExtensions: ['jpeg', 'jpg'],
      ))
          .fold(() => null, (file) => file);

      // assert the result is correct
      expect(result, null);
    });
  });
  group('pickPath', () {
    test('Should return the correct result when a path is picked,', () async {
      // set up the mocks
      final MockApiFilePicker mockApiFilePicker = MockApiFilePicker();

      when(
        mockApiFilePicker.getDirectoryPath(
          initialDirectory: captureThat(equals('/'), named: 'initialDirectory'),
          dialogTitle: captureThat(equals('Pick a file'), named: 'dialogTitle'),
          lockParentWindow: captureAnyNamed('lockParentWindow'),
        ),
      ).thenAnswer((realInvocation) async => '/');

      // pick a directory
      // we don't use the factory constructor here since we want to inject
      // the mock api file picker instead of a real one, for the purpose of testing
      FilePicker filePicker = FilePickerDefaultImpl(apiFilePicker: mockApiFilePicker);

      final String? result = (await filePicker.pickPath(
        dialogTitle: 'Pick a file',
        initialDirectory: '/',
      ))
          .fold(() => null, (dir) => dir.path);

      // assert the result is correct
      expect(result, '/');
    });
    test('Should return the correct result when a path is not picked,', () async {
      // set up the mocks
      final MockApiFilePicker mockApiFilePicker = MockApiFilePicker();

      when(
        mockApiFilePicker.getDirectoryPath(
          initialDirectory: captureThat(equals('/'), named: 'initialDirectory'),
          dialogTitle: captureThat(equals('Pick a file'), named: 'dialogTitle'),
          lockParentWindow: captureAnyNamed('lockParentWindow'),
        ),
      ).thenAnswer((realInvocation) async => null);

      // pick a directory
      // we don't use the factory constructor here since we want to inject
      // the mock api file picker instead of a real one, for the purpose of testing
      FilePicker filePicker = FilePickerDefaultImpl(apiFilePicker: mockApiFilePicker);

      final String? result = (await filePicker.pickPath(
        dialogTitle: 'Pick a file',
        initialDirectory: '/',
      ))
          .fold(() => null, (dir) => dir.path);

      // assert the result is correct
      expect(result, null);
    });
  });
}
