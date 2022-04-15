import 'package:flutter/material.dart';
import 'package:photo_editor/dependency_injection/service_locator.dart';
import 'package:photo_editor/services/file_picker/file_picker.dart';

class EditorCanvas extends StatelessWidget {
  const EditorCanvas({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final toc = Theme.of(context);
    return Container(
      color: toc.colorScheme.background,
      child: Center(
        child: ElevatedButton(
          child: Text("Hello world this is the photo editor",
              style: toc.textTheme.headline2!),
          onPressed: ()async{
            print(await serviceLocator.get<FilePicker>().pickPath());
          },
        ),
      ),
    );
  }
}
