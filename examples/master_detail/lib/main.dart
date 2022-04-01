import 'package:flutter/material.dart';
import 'package:master_detail/navigation/routes.dart';
import 'package:master_detail/widgets/layout/layout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GoRouter Example',
      home: Layout(),
    );
  }
}
