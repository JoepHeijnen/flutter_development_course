import 'package:animdo/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Animdo());
}

class Animdo extends StatelessWidget {
  const Animdo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Animdo',
      home: HomePage(),
    );
  }
}
