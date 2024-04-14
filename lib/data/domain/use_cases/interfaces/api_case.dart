
import '../../../models/model.dart';

abstract class ApiCase {
  Future<MyModel?> getCurrency(String? currency);
}
