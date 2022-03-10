import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/home_page_provider.dart';

class MyHomePage extends StatelessWidget {
  final String title;

  HomePageProvider? _pageProvider;

  MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_context) => HomePageProvider(context: context),
      child: _buildUI(),
    );
  }

  Widget _buildUI() {
    return Builder(builder: (_context) {
      _pageProvider = _context.watch<HomePageProvider>();

      return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Counter:'),
              Text(
                _pageProvider!.getCounter().toString(),
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
