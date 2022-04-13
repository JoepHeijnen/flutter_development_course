import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:intercept_example/pages/home_page.dart';
import 'package:intercept_example/services/auth_service.dart';
import 'package:intercept_example/services/crypto_service.dart';
import 'package:intercept_example/services/event_bus_service.dart';

void main() {
  runZonedGuarded(() {
    WidgetsFlutterBinding.ensureInitialized();
    registerServices();

    FlutterError.onError = (FlutterErrorDetails details) {
      print('Flutter error found...');
      print(details.exception);
    };

    runApp(MyApp());
  }, (error, stack) {
    print('Error found...');
    print(error);
  });
}

void registerServices() {
  GetIt.instance.registerSingleton<AuthService>(AuthService());
  GetIt.instance.registerSingleton<CryptoService>(CryptoService());
  GetIt.instance.registerSingleton<EventBusService>(EventBusService());
}

class MyApp extends StatelessWidget {
  final EventBusService _eventBusService = GetIt.instance.get<EventBusService>();
  final _key = GlobalKey<ScaffoldMessengerState>();

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    _eventBusService.getInstance().on<DioError>().listen((event) {
      _key.currentState?.showSnackBar(SnackBar(content: Text(event.toString())));
    });

    return MaterialApp(
      scaffoldMessengerKey: _key,
      title: 'Home',
      home: const HomePage(),
    );
  }
}
