import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:intercept_example/pages/home_page.dart';
import 'package:intercept_example/services/http_service.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  registerHTTPService();
  runApp(const MyApp());
}

void registerHTTPService() {
  GetIt.instance.registerSingleton<HTTPService>(
    HTTPService(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      home: HomePage(),
    );
  }
}
