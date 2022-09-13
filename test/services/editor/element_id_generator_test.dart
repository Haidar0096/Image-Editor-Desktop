import 'dart:typed_data';

import 'package:photo_editor/services/editor/element_id_generator.dart';
import 'package:test/test.dart';
import 'package:uuid/uuid.dart';

void main() {
  group('generate', () {
    test(
        'Should generate the expected series of ids when seeded with same seed',
        () {
      // set up a mock rng that generates Uint8List using the seed value.
      int seed = 0;
      Uint8List naiveRNG() {
        final res = Uint8List(16);

        for (var i = 0; i < 16; i++) {
          res[i] = seed;
        }

        return res;
      }

      // make the ElementIdGenerator use the naive rng from above.
      ElementIdGenerator generator = ElementIdGeneratorDefaultImpl(
        Uuid(
          options: {'grng': naiveRNG},
        ),
      );

      // assert the series of generated ids are as expected
      for (int i = 0; i < 10; i++) {
        int s = seed; // shorthand named variable for 'seed'
        String s1 = '0${s}0${s}0${s}0$s';
        String s2 = '0${s}0$s';
        String s3 = '4${s}0$s';
        String s4 = '8${s}0$s';
        String s5 = '0${s}0${s}0${s}0${s}0${s}0$s';
        expect(generator.generate(), '$s1-$s2-$s3-$s4-$s5');
        seed++;
      }
    });
  });
}
