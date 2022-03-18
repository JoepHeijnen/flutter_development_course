import 'dart:math';

import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Flexible(
                flex: 1,
                child: Container(
                  width: double.infinity,
                  color: Colors.blue,
                ),
              ),
              Flexible(flex: 3, child: _listView()),
            ],
          ),
        ),
      ),
    );
  }

  Map<String, dynamic> _item(index) {
    return {
      'title': 'Item $index',
      'subtitle': Random().nextInt(100).toString()
    };
  }

  Widget _listView() {
    List _items = [];

    for (var i = 0; i < 10; i++) {
      _items.add(_item(i));
    }

    return ListView.builder(
      itemCount: _items.length,
      itemBuilder: ((context, index) {
        Map<String, dynamic> _item = _items[index];

        return ListTile(
          title: Text(_item['title']),
          subtitle: Text(_item['subtitle']),
        );
      }),
    );
  }
}
