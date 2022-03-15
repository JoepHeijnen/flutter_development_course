import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:intercept_example/pages/home_page.dart';
import 'package:intercept_example/services/auth_service.dart';
import 'package:intercept_example/services/crypto_service.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  registerServices();
  runApp(const MyApp());
}

void registerServices() {
  GetIt.instance.registerSingleton<AuthService>(AuthService());
  GetIt.instance.registerSingleton<CryptoService>(CryptoService());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Home',
      home: HomePage(),
    );
  }
}
