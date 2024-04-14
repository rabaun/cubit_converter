import 'package:get_it/get_it.dart';

import '../data/repositories/api_repo_impl.dart';

Future<bool?>? startGetIt(GetIt getIt) async {
  getIt.registerSingleton<ApiRepositoryImpl>(ApiRepositoryImpl());
  return null;
}
