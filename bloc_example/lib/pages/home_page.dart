import 'package:bloc_example/cubit/count/count_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/count.dart';

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildUI();
  }

  Widget _buildUI() {
    return Builder(builder: (_context) {
      CountCubit _countCubit =
          BlocProvider.of<CountCubit>(_context, listen: false);

      return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: BlocBuilder<CountCubit, CountState>(
            builder: (context, state) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _getTitle(state),
                  _getCounter(state),
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

  Widget _getTitle(CountState _state) {
    if (_state is CountChanged) {
      return const Text('Count is updating...');
    }

    if (_state is CountIncrement) {
      return const Text('Count did increment to:');
    }

    if (_state is CountDecrement) {
      return const Text('Count did increment to:');
    }

    return const Text('Counter:');
  }

  Widget _getCounter(CountState _state) {
    return Builder(builder: (_context) {
      if (_state is CountChanged) {
        return Container(
          margin: const EdgeInsets.symmetric(vertical: 8),
          child: const CircularProgressIndicator(),
        );
      }

      if (_state is CountIncrement) {
        return Text(_state.count.amount.toString(),
            style: Theme.of(_context).textTheme.headline4);
      }

      if (_state is CountDecrement) {
        return Text(_state.count.amount.toString(),
            style: Theme.of(_context).textTheme.headline4);
      }

      return Text('0', style: Theme.of(_context).textTheme.headline4);
    });
  }
}
