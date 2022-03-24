import 'package:flutter/material.dart';
import 'package:generation_example2/services/crypto_service.dart';
import 'package:generation_example2/views/coins_page.dart';
import 'package:get_it/get_it.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  GetIt.instance.registerSingleton<CryptoService>(CryptoService());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Dart Model Generation',
      home: CoinsPage(),
    );
  }
}
