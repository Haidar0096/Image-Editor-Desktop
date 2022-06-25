import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_editor/services/editor/editor.dart' as editor;
import 'package:photo_editor/ui/screens/editor_screen/bloc/editor_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class RightPanel extends StatelessWidget {
  const RightPanel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditorBloc, EditorState>(
      builder: (context, state) {
        final toc = Theme.of(context);
        return Container(
          color: toc.colorScheme.secondary,
          child: Column(
            children: [
              Expanded(
                flex: 7,
                child: _propertiesTitle(context),
              ),
              Expanded(
                flex: 1,
                child: _divider(context),
              ),
              Expanded(
                flex: 92,
                child: state.selectedElementId.fold(
                  () {
                    // no element is selected
                    return _noSelectedElementWidget(context);
                  },
                  (selectedElementId) {
                    // an element is selected

                    // get the selected element
                    final editor.Element selectedElement =
                        state.editor.elements.where((element) => element.id == selectedElementId).first;

                    return ListView(children: [
                      _fileNameProperty(selectedElement, context),
                      _divider(context),
                      _idProperty(context, selectedElementId),
                      _divider(context),
                      _positionProperty(context, selectedElement),
                      _divider(context),
                      _sizeProperty(context, selectedElement),
                      _divider(context),
                      _showOrderProperty(context, selectedElement),
                      _divider(context),
                    ]);
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Padding _showOrderProperty(BuildContext context, editor.Element selectedElement) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: _property(
        context,
        AppLocalizations.of(context)!.showOrder,
        '${selectedElement.showOrder}',
      ),
    );
  }

  Padding _sizeProperty(BuildContext context, editor.Element selectedElement) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: _property(
        context,
        AppLocalizations.of(context)!.size,
        '(${selectedElement.rect.size.width}, ${selectedElement.rect.size.height})',
      ),
    );
  }

  Padding _positionProperty(BuildContext context, editor.Element selectedElement) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: _property(
        context,
        '(x,y)',
        '(${selectedElement.rect.topLeft.dx.toStringAsFixed(2)},${selectedElement.rect.topLeft.dy.toStringAsFixed(2)})',
      ),
    );
  }

  Padding _idProperty(BuildContext context, String selectedElementId) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: _property(context, 'ID', selectedElementId),
    );
  }

  Padding _fileNameProperty(editor.Element selectedElement, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: selectedElement.elementType.map(
        image: (imageElement) {
          return _property(
            context,
            AppLocalizations.of(context)!.fileName,
            '\n${imageElement.path.split(Platform.pathSeparator).last}',
          );
        },
        text: (textElement) => Container(),
        variableText: (textElement) => _property(
          context,
          AppLocalizations.of(context)!.fileName,
          textElement.sourceFilePath,
        ),
      ),
    );
  }

  Widget _noSelectedElementWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Text(
          AppLocalizations.of(context)!.chooseAnElementToSeeItsProperties,
          style: Theme.of(context).textTheme.bodyLarge,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  Padding _propertiesTitle(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        AppLocalizations.of(context)!.properties,
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }

  Widget _property(BuildContext context, String title, String value) {
    final toc = Theme.of(context);
    return ListView(
      shrinkWrap: true,
      children: [
        Text(
          title,
          style: toc.textTheme.bodyLarge!.copyWith(color: toc.colorScheme.inversePrimary),
          textAlign: TextAlign.center,
        ),
        _divider(context),
        Text(
          value,
          style: toc.textTheme.bodyLarge,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Divider _divider(BuildContext context) => Divider(
        color: Theme.of(context).colorScheme.onSecondary,
        thickness: 3,
      );
}
