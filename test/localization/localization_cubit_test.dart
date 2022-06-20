import 'dart:ui';

import 'package:bloc_test/bloc_test.dart';
import 'package:photo_editor/localization/language.dart';
import 'package:photo_editor/localization/localization_cubit.dart';
import 'package:test/test.dart';

import '../helpers/mock_hydrated_storage.dart';

void main() {
  group('Initialization tests.', () {
    test('Should contain the correct initial state.', () {
      mockHydratedStorage(() {
        expect(
          LocalizationCubit().state,
          LocalizationState(
            locale: Locale.fromSubtags(
              languageCode: Language.english.languageCode,
            ),
          ),
        );
      });
    });
  });
  group('setLanguage', () {
    // set up the cubit
    late LocalizationCubit localizationCubit;

    blocTest<LocalizationCubit, LocalizationState>(
      'Can set the language.',
      setUp: () {
        mockHydratedStorage(() {
          localizationCubit = LocalizationCubit();
        });
      },
      build: () => localizationCubit,
      act: (cubit) => cubit.setLanguage(Language.arabic),
      expect: () => [
        LocalizationState(
          locale: Locale.fromSubtags(
            languageCode: Language.arabic.languageCode,
          ),
        )
      ],
    );
  });
  group('toJson/fromJson', () {
    test('Can convert the state from/to json form.', () {
      mockHydratedStorage(() {
        final LocalizationCubit cubit = LocalizationCubit();
        expect(cubit.fromJson(cubit.toJson(cubit.state)!), cubit.state);
      });
    });
  });
}
