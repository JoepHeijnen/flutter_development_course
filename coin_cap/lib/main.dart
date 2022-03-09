import 'package:flutter/material.dart';

void main() {
  runApp(const CoinCap());
}

class CoinCap extends StatelessWidget {
  const CoinCap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coin Cap',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Coin Cap'),
        ),
        body: Container(),
      ),
    );
  }
}
