import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../providers/count_page_provider.dart';

class CountPage extends ConsumerWidget {
  final String title;

  const CountPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return _buildUI(ref);
  }

  Widget _buildUI(WidgetRef ref) {
    final amount = ref.watch(counterProvider).count.amount;
    final type = ref.watch(counterProvider).count.type;

    return Builder(builder: (_context) {
      return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Counter $type:'),
              Text(
                amount.toString(),
                style: Theme.of(_context).textTheme.headline4,
              )
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 16),
              child: FloatingActionButton(
                onPressed: () {
                  ref.read(counterProvider).decrement();
                },
                tooltip: 'Decrement',
                child: const Icon(Icons.remove),
              ),
            ),
            FloatingActionButton(
              onPressed: () {
                ref.read(counterProvider).increment();
              },
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
          ],
        ),
      );
    });
  }
}
