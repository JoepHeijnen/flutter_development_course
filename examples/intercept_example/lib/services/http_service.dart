import 'package:dio/dio.dart';
import 'package:intercept_example/api/api.dart';

class HTTPService {
  Future<Response?> get(String _path,
      [Map<String, dynamic>? _queryParams]) async {
    return await Api().dio.get(_path, queryParameters: _queryParams);
  }

  Future<Response?> getBitcoin() async {
    return await get(
        '/simple/price', {'ids': 'bitcoin', 'vs_currencies': 'eur'});
  }

  Future<Response?> getCardano() async {
    return await get(
        '/simple/price', {'ids': 'cardano', 'vs_currencies': 'eur'});
  }
}
