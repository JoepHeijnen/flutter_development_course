import 'dart:convert';

import 'package:dio/dio.dart';
import '../models/app_config.dart';
import 'package:get_it/get_it.dart';

class HTTPService {
  final Dio dio = Dio();
  AppConfig? _appConfig;
  String? _baseUrl;

  HTTPService() {
    _appConfig = GetIt.instance.get<AppConfig>();
    _baseUrl = _appConfig!.coinApiBaseUrl;
  }

  Future<Response?> get(String _path,
      [Map<String, dynamic>? _queryParams]) async {
    try {
      String _url = '$_baseUrl$_path';
      Response? _reponse = await dio.get(_url, queryParameters: _queryParams);
      return _reponse;
    } catch (e) {
      print('HTTPService: Unable to perform get request.');
      return null;
    }
  }
}
