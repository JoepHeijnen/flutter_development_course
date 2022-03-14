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
          if (_token == null) {
            try {
              Response? _response = await refresh('/pixng');
              Map _data = jsonDecode(_response.toString());
              _token =
                  '${_data['gecko_says']}:${Random().nextInt(1000).toString()}';
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
    try {
      Response? _reponse = await _dio.get(_path, queryParameters: _queryParams);

      return _reponse;
    } catch (e) {
      return null;
    }
  }

  Future<Response?> refresh(String _path) async {
    try {
      Response? _reponse = await _tokenDio.get(_path);

      return _reponse;
    } catch (e) {
      return null;
    }
  }
}
