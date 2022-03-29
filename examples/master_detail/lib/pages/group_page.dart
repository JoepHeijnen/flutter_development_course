import 'package:flutter/material.dart';

class GroupPage extends StatelessWidget {
  const GroupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = (ModalRoute.of(context)?.settings.arguments ??
        <String, dynamic>{}) as Map;
    var id = arguments['id'] ?? 'Nothing';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
      ),
      body: Center(
        child: Text(id),
      ),
    );
  }
}
