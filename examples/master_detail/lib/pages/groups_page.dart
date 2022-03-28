import 'package:flutter/material.dart';
import 'package:master_detail/pages/group_page.dart';

class GroupsPage extends StatelessWidget {
  const GroupsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Master'),
      ),
      body: SafeArea(
        child: _listView(),
      ),
    );
  }

  Widget _listView() {
    List<String> _items = [
      'List item 1',
      'List item 3',
      'List item 4',
      'List item 5',
      'List item 6',
      'List item 7',
      'List item 8',
      'List item 9',
      'List item 10',
    ];

    return ListView.builder(
      itemCount: _items.length,
      itemBuilder: ((context, index) {
        return ListTile(
          title: Text(_items[index]),
          subtitle: const Text('Details'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (BuildContext _context) {
                return GroupPage(title: _items[index]);
              }),
            );
          },
        );
      }),
    );
  }
}
