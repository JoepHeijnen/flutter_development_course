import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_example/models/count.dart';
import '../providers/count_page_provider.dart';

class CountPage extends ConsumerWidget {
  WidgetRef? _ref;

  CountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _ref = ref;
    return Scaffold(
      appBar: AppBar(
        title: _title(),
      ),
      body: _listCounts(),
      floatingActionButton: _buttons(),
    );
  }

  Widget _title() {
    final total = _ref!.watch(totalCountProvider);
    return Text('Amount: ${total.toString()}');
  }

  Widget _listCounts() {
    final list = _ref!.watch(countListProvider);
    final total = _ref!.watch(totalCountProvider);

    return ListView.builder(
      itemCount: list.length,
      itemBuilder: ((context, index) {
        Count item = list[index];
        return ListTile(
          title: Text('${item.previousAmount} ${item.getChange()}'),
          subtitle: Text(item.getType()),
        );
      }),
    );
  }

  Widget _buttons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          margin: const EdgeInsets.only(right: 16),
          child: FloatingActionButton(
            onPressed: () {
              _ref!.read(countListProvider.notifier).decrement(_ref!.read(totalCountProvider));
            },
            tooltip: 'Decrement',
            child: const Icon(Icons.remove),
          ),
        ),
        FloatingActionButton(
          onPressed: () {
            _ref!.read(countListProvider.notifier).increment(_ref!.read(totalCountProvider));
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ],
    );
  }
}
