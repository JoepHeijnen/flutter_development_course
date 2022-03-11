import 'package:finstagram/pages/home_page.dart';
import 'package:finstagram/pages/login_page.dart';
import 'package:finstagram/pages/register_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Finstagram());
}

class Finstagram extends StatelessWidget {
  const Finstagram({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Finstagram',
      theme: ThemeData(primarySwatch: Colors.red),
      initialRoute: 'home',
      routes: {
        'home': (context) => HomePage(),
        'login': (context) => LoginPage(),
        'register': (context) => RegisterPage(),
      },
    );
  }
}
