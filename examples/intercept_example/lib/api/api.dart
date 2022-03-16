import 'dart:convert';
import 'dart:math';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:intercept_example/services/auth_service.dart';
import 'package:intercept_example/services/event_bus_service.dart';
import 'exceptions.dart';

class Api {
  static String url = 'https://api.coingecko.com/api/v3';
  final dio = createDio();
  final tokenDio = Dio(BaseOptions(baseUrl: url));

  Api._internal();

  static final _singleton = Api._internal();

  factory Api() => _singleton;

  static Dio createDio() {
    var dio = Dio(
      BaseOptions(
        baseUrl: url,
        receiveTimeout: 15000,
        connectTimeout: 15000,
        sendTimeout: 15000,
      ),
    );

    dio.interceptors.addAll({
      AppInterceptors(dio),
    });
    return dio;
  }
}

class AppInterceptors extends QueuedInterceptor {
  final Dio dio;
  final AuthService _authService = GetIt.instance.get<AuthService>();
  final EventBusService _eventBusService =
      GetIt.instance.get<EventBusService>();
  String? _token;

  AppInterceptors(this.dio);

  @override
  void onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    if (_token == null) {
      await _authService.refresh().then((_response) {
        Map _data = jsonDecode(_response.toString());
        _token = '${_data['gecko_says']}:${Random().nextInt(1000).toString()}';
        handler.next(options);
      }).catchError((error, stackTrace) {
        handler.reject(error, true);
      });
    } else {
      handler.next(options);
    }
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    switch (err.type) {
      case DioErrorType.connectTimeout:
      case DioErrorType.sendTimeout:
      case DioErrorType.receiveTimeout:
        return handler.reject(DeadlineExceededException(err.requestOptions));
      case DioErrorType.response:
        switch (err.response?.statusCode) {
          case 400:
            return handler.reject(BadRequestException(err.requestOptions));
          case 401:
            return handler.reject(UnauthorizedException(err.requestOptions));
          case 404:
            _eventBusService
                .getInstance()
                .fire(NotFoundException(err.requestOptions));
            return handler.reject(NotFoundException(err.requestOptions));
          case 409:
            return handler.reject(ConflictException(err.requestOptions));
          case 500:
            return handler
                .reject(InternalServerErrorException(err.requestOptions));
        }
        break;
      case DioErrorType.cancel:
        break;
      case DioErrorType.other:
        return handler
            .reject(NoInternetConnectionException(err.requestOptions));
    }

    return handler.reject(err);
  }
}
