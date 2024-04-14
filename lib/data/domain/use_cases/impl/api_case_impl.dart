import '../../../models/model.dart';
import '../../../repositories/api_repo_impl.dart';
import '../interfaces/api_case.dart';

class ApiCaseImpl extends ApiCase {
  final _apiRepository = ApiRepositoryImpl();

  @override
  Future<MyModel?> getCurrency(String? currency) => _apiRepository.getCurrency(currency);
}
