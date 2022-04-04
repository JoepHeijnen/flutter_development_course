import 'package:flutter/material.dart';

class GroupsDetailPage extends StatelessWidget {
  String? id;

  GroupsDetailPage({Key? key, this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: id != null ? Text('Group item ${id!}') : const Text('Details'),
      ),
      body: Center(
        child: id != null
            ? Text(id!,
                style: const TextStyle(fontSize: 30, color: Colors.blue))
            : const Text('Nothing',
                style: TextStyle(fontSize: 30, color: Colors.blue)),
      ),
    );
  }
}
