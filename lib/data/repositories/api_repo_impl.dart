
import 'package:flutter/foundation.dart';

import '../api_service.dart';
import '../models/model.dart';
import 'interface/api_repo.dart';

class ApiRepositoryImpl extends ApiRepository {
  MyModel? model;
  final _apiService = ApiService();

  @override
  Future<MyModel?> getCurrency(String? currency) async {
    final response = await _apiService.getCurrency(currency: currency);
    if (response != null) {
      model = response;
    }
    return model;
  }
}
