import 'package:dio/dio.dart';
import 'package:intercept_example/api/api.dart';

class AuthService {
  Future<Response> refresh() {
    return Api().tokenDio.get('/ping');
  }
}
