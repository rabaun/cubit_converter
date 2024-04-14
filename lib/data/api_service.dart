import 'dart:convert';

import 'package:http/http.dart' show Client;

import 'models/model.dart';

class ApiService {
  MyModel? model;

  Client client = Client();
  final _baseUrl = "https://v6.exchangerate-api.com/v6/567e2c3057302f28aa862bab/latest/";

  Future<MyModel?> getCurrency({
    required String? currency,
  }) async {
    final response = await client.get(Uri.parse("$_baseUrl$currency"));
    print(response.body.toString());
    if (response.statusCode == 200) {
      return MyModel.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load weather');
    }
  }
}
