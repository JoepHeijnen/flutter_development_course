import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:master_detail/pages/group_page.dart';

class Item {
  int id;
  String title;

  Item({required this.id, required this.title});
}

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
    List<Item> _items = [
      Item(id: 1, title: 'List item 1'),
      Item(id: 2, title: 'List item 2'),
      Item(id: 3, title: 'List item 3'),
      Item(id: 4, title: 'List item 4'),
      Item(id: 5, title: 'List item 5'),
      Item(id: 6, title: 'List item 6'),
      Item(id: 7, title: 'List item 7'),
      Item(id: 8, title: 'List item 8'),
      Item(id: 9, title: 'List item 9'),
      Item(id: 10, title: 'List item 10'),
    ];

    return ListView.builder(
      itemCount: _items.length,
      itemBuilder: ((context, index) {
        Item _item = _items[index];

        return ListTile(
          title: Text(_item.title),
          subtitle: const Text('Details'),
          onTap: () {
            GoRouter.of(context).push('/group/${_item.id}');
          },
        );
      }),
    );
  }
}
