import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_example/models/count.dart';
import 'package:provider_example/providers/count_page_provider.dart';
import '../providers/home_page_provider.dart';

class CountPage extends StatelessWidget {
  final String title;

  CountPageProvider? _pageProvider;

  CountPage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Count _count = Count(amount: 0, type: 'NONE');

    return ChangeNotifierProvider(
      create: (_context) => CountPageProvider(context: context, count: _count),
      child: _buildUI(),
    );
  }

  Widget _buildUI() {
    return Builder(builder: (_context) {
      _pageProvider = _context.watch<CountPageProvider>();

      return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Counter ${_pageProvider!.getCountType()}:'),
              Text(
                _pageProvider!.getCountAmount().toString(),
                style: Theme.of(_context).textTheme.headline4,
              ),
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
                  _pageProvider!.decrement();
                },
                tooltip: 'Decrement',
                child: const Icon(Icons.remove),
              ),
            ),
            FloatingActionButton(
              onPressed: () {
                _pageProvider!.increment();
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
