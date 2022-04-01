import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:master_detail/pages/groups_detail_page.dart';

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
        title: const Text('Groups'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.group), label: 'Groups'),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today), label: 'Calendar'),
          BottomNavigationBarItem(
              icon: Icon(Icons.chat), label: 'Conversation'),
        ],
        onTap: (int index) {
          if (index == 0) {
            GoRouter.of(context).push('/groups');
          } else if (index == 1) {
            GoRouter.of(context).push('/calendar');
          } else if (index == 2) {
            GoRouter.of(context).push('/conversations');
          }
        },
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
            Navigator.push(
              context,
              MaterialPageRoute(builder: (BuildContext _context) {
                return GroupsDetailPage(id: _item.id.toString());
              }),
            );
          },
        );
      }),
    );
  }
}
