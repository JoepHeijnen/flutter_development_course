import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/count/count2_cubit.dart';
import '../models/count.dart';

class MyHomePage2 extends StatelessWidget {
  const MyHomePage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildUI();
  }

  Widget _buildUI() {
    return Builder(builder: (_context) {
      CountCubit2 _countCubit = BlocProvider.of<CountCubit2>(_context, listen: false);

      return Scaffold(
        appBar: AppBar(
          title: const Text('Test'),
        ),
        body: Center(
          child: BlocBuilder<CountCubit2, Count>(
            builder: (context, count) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _getTitle(count),
                  _getCounter(count),
                ],
              );
            },
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: const EdgeInsets.only(right: 16),
              child: FloatingActionButton(
                onPressed: () {
                  _countCubit.decrement();
                },
                tooltip: 'Decrement',
                child: const Icon(Icons.remove),
              ),
            ),
            FloatingActionButton(
              onPressed: () {
                _countCubit.increment();
              },
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
          ],
        ),
      );
    });
  }

  Widget _getTitle(Count _count) {
    return const Text('Counter:');
  }

  Widget _getCounter(Count _count) {
    return Builder(builder: (_context) {
      return Text(_count.amount.toString(), style: Theme.of(_context).textTheme.headline4);
    });
  }
}
