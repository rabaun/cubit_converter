
import '../../models/model.dart';

abstract class ApiRepository {
  Future<MyModel?> getCurrency(String? currency);
}
