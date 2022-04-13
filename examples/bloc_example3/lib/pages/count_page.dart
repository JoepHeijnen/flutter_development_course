import 'package:bloc_example3/cubit/count/count_list_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/count.dart';

class CountPage extends StatelessWidget {
  CountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _title(),
      ),
      body: _listCounts(),
      floatingActionButton: _buttons(),
    );
  }

  Widget _title() {
    return BlocBuilder<CountListCubit, CountListState>(
      builder: (context, state) {
        return Text('Amount: ${state.getTotal().toString()}');
      },
    );
  }

  Widget _listCounts() {
    return BlocBuilder<CountListCubit, CountListState>(
      builder: (context, state) {
        return ListView.builder(
          itemCount: state.items.length,
          itemBuilder: ((context, index) {
            Count item = state.items[index];
            return ListTile(
              title: Text('${item.previousAmount} ${item.getChange()}'),
              subtitle: Text(item.getType()),
            );
          }),
        );
      },
    );
  }

  Widget _buttons() {
    return Builder(builder: (context) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            child: FloatingActionButton(
              onPressed: () {
                context.read<CountListCubit>().clear();
              },
              tooltip: 'Clear',
              backgroundColor: Colors.red,
              child: const Icon(Icons.clear),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 16),
            child: FloatingActionButton(
              onPressed: () {
                context.read<CountListCubit>().decrement();
              },
              tooltip: 'Decrement',
              child: const Icon(Icons.remove),
            ),
          ),
          FloatingActionButton(
            onPressed: () {
              context.read<CountListCubit>().increment();
            },
            tooltip: 'Increment',
            child: const Icon(Icons.add),
          ),
        ],
      );
    });
  }
}
