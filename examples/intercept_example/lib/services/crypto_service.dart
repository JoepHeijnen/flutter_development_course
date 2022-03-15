import 'package:dio/dio.dart';
import '../api/api.dart';

class CryptoService {
  Future<Response> getCrypto(String _coin) async {
    return Api().dio.get('/simple/price',
        queryParameters: {'ids': _coin, 'vs_currencies': 'eur'});
  }
}
