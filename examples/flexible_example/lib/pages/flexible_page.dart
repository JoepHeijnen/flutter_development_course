import 'dart:math';

import 'package:flutter/material.dart';

class FlexiblePage extends StatelessWidget {
  const FlexiblePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Flexible(
                flex: 1,
                child: Container(
                  width: double.infinity,
                  color: Colors.blue,
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(
                  width: double.infinity,
                  color: Colors.red,
                  child: Column(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          color: Colors.red[100],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          width: double.infinity,
                          color: Colors.red[200],
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        child: Container(
                          width: double.infinity,
                          color: Colors.red[300],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Map<String, dynamic> _item(index) {
    return {
      'title': 'Item $index',
      'subtitle': Random().nextInt(100).toString()
    };
  }
}
