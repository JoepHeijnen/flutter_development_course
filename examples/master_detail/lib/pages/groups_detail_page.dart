import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GroupsDetailPage extends StatelessWidget {
  String? id;
  GroupsDetailPage({Key? key, this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details Group'),
      ),
      body: Center(
        child: id != null ? Text(id!) : Text('Nothing'),
      ),
    );
  }
}
