import 'package:flutter/material.dart';

class GroupsDetailPage extends StatelessWidget {
  String? id;

  GroupsDetailPage({Key? key, this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
      ),
      body: Center(
        child: id != null ? Text(id!) : const Text('Nothing'),
      ),
    );
  }
}
