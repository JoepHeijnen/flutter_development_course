import 'package:flutter/material.dart';
import 'package:frivia/pages/game_page.dart';

void main() {
  runApp(const Frivia());
}

class Frivia extends StatelessWidget {
  const Frivia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Frivia',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: const Color.fromRGBO(31, 31, 31, 1.0),
          fontFamily: 'Ubuntu',
        ),
        home: GamePage());
  }
}
