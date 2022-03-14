import 'dart:convert';
import 'dart:math';

import 'package:dio/dio.dart';

class HTTPService {
  final Dio _dio = Dio();
  final Dio _tokenDio = Dio();

  String? _token;

  HTTPService() {
    _dio.options.baseUrl = 'https://api.coingecko.com/api/v3';
    _tokenDio.options.baseUrl = 'https://api.coingecko.com/api/v3';
    _queuedInterceptor();
  }

  Future<void> _queuedInterceptor() async {
    _dio.interceptors.add(
      QueuedInterceptorsWrapper(
        onRequest: (options, handler) async {
          print('- - - - - - - - - - - - - - - - -');
          print('Current token: $_token');

          if (_token == null) {
            try {
              print('Getting a new token!');
              Response? _response = await refresh('/ping');
              Map _data = jsonDecode(_response.toString());
              _token =
                  '${_data['gecko_says']}:${Random().nextInt(1000).toString()}';
              print('New token received: $_token');
            } catch (e) {
              return handler.reject(
                  DioError(requestOptions: options, error: 'REFRESH_FAILED'));
            }
          }

          return handler.next(options);
        },
      ),
    );
  }

  Future<Response?> get(String _path,
      [Map<String, dynamic>? _queryParams]) async {
    print('Client starts request: $_path - ${_queryParams.toString()}');

    try {
      Response? _reponse = await _dio.get(_path, queryParameters: _queryParams);
      print('On Response: $_reponse');

      return _reponse;
    } catch (e) {
      print('HTTPService: Unable to perform get request.');
      print('Reason: $e');
      return null;
    }
  }

  Future<Response?> refresh(String _path) async {
    print('Client starts request: $_path');
    try {
      Response? _reponse = await _tokenDio.get(_path);

      print('On Token Response: $_reponse');

      return _reponse;
    } catch (e) {
      print('HTTPService: Unable to perform refresh request.');
      return null;
    }
  }
}
