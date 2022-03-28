import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Master Detail',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Master Detail'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
