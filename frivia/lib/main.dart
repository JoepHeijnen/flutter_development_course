import 'package:flutter/material.dart';

void main() {
  runApp(const Frivia());
}

class Frivia extends StatelessWidget {
  const Frivia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Frivia',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Frivia'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
