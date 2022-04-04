import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation/models/item.dart';
import 'package:navigation/services/items_service.dart';

class ConversationsPage extends StatelessWidget {
  final ItemsService _itemsService = GetIt.instance.get<ItemsService>();

  ConversationsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
      ),
      body: SafeArea(child: _listView(context)),
    );
  }

  Widget _listView(newContext) {
    List<Item> _items = _itemsService.getConversations();

    return ListView.builder(
      itemCount: _items.length,
      itemBuilder: ((context, index) {
        Item _item = _items[index];

        return ListTile(
          title: Text(_item.name),
          subtitle: const Text('Details'),
          onTap: () {
            GoRouter.of(newContext).push('/groups/${_item.id}');
          },
        );
      }),
    );
  }
}
