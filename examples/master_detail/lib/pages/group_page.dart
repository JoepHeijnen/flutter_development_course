import 'package:flutter/material.dart';

class GroupPage extends StatelessWidget {
  String title;

  GroupPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
      ),
      body: Center(
        child: Text(title),
      ),
    );
  }
}
