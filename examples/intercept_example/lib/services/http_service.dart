import 'dart:convert';

import 'package:dio/dio.dart';

class HTTPService {
  final Dio _dio = Dio();
  String? _token;

  HTTPService() {
    _dio.options.baseUrl = 'https://api.coingecko.com/api/v3';
    // _intercept2();
  }

  Future<void> _intercept2() async {
    _dio.interceptors.add(
      QueuedInterceptorsWrapper(onRequest: (options, handler) async {
        print('Token: $_token');

        if (options.path == '/ping') {
          return handler.next(options);
        }

        if (_token == null) {
          Response? _response = await get('/ping');
          Map _data = jsonDecode(_response.toString());
          _token = _data['gecko_says'];
          print('New token: ${_data['gecko_says']}');
        } else {}

        return handler.next(options);
      }),
    );
  }

  Future<Response?> get(String _path,
      [Map<String, dynamic>? _queryParams]) async {
    try {
      Response? _reponse = await _dio.get(_path, queryParameters: _queryParams);
      return _reponse;
    } catch (e) {
      print('HTTPService: Unable to perform get request.');
      return null;
    }
  }
}
