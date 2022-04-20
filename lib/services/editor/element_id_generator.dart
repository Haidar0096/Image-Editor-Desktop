import 'package:injectable/injectable.dart';
import 'package:photo_editor/services/editor/editor.dart';
import 'package:uuid/uuid.dart';

abstract class ElementIdGenerator {
  ElementId generate();
}

@Injectable(as: ElementIdGenerator)
class ElementIdGeneratorImpl implements ElementIdGenerator {
  final Uuid _uuid = const Uuid();

  @override
  ElementId generate() {
    return _uuid.v4();
  }
}
