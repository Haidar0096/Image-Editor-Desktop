import 'package:injectable/injectable.dart';
import 'package:photo_editor/services/editor/editor.dart';
import 'package:uuid/uuid.dart';

/// A generator of unique IDs for elements of the editor.
@injectable
abstract class ElementIdGenerator {
  /// Creates a generator of element ids.
  @factoryMethod
  factory ElementIdGenerator() => ElementIdGeneratorDefaultImpl(const Uuid());

  /// Generates a unique [ElementId].
  ElementId generate();
}

class ElementIdGeneratorDefaultImpl implements ElementIdGenerator {
  final Uuid _uuid;

  ElementIdGeneratorDefaultImpl(this._uuid);

  @override
  ElementId generate() {
    return _uuid.v4();
  }
}
