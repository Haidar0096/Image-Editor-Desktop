import 'package:photo_editor/extensions/list_extension.dart';
import 'package:test/test.dart';

void main() {
  group('lastOrNull', () {
    test('Should return correct results.', (){
      List<int> nonEmptyList = [1,2,3];
      List<int> emptyList = [];

      expect(nonEmptyList.lastOrNull, 3);
      expect(emptyList.lastOrNull, null);
    });
  });
}
