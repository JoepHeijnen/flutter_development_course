import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GroupPage extends StatelessWidget {
  String id;
  GroupPage({Key? key, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => GoRouter.of(context).go('/')),
        title: const Text('Detail'),
      ),
      body: Center(
        child: Text(id),
      ),
    );
  }
}
