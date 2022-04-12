import 'package:bloc_example3/cubit/count/count2_cubit.dart';
import 'package:bloc_example3/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CountCubit()..getCount(),
      child: MaterialApp(
        title: 'Welcome to Flutter',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Welcome to Flutter'),
          ),
          body: const HomePage(),
          floatingActionButton: Builder(builder: (_context) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 16),
                  child: FloatingActionButton(
                    onPressed: () {
                      _context.read<CountCubit>().decrement();
                    },
                    tooltip: 'Decrement',
                    child: const Icon(Icons.remove),
                  ),
                ),
                FloatingActionButton(
                  onPressed: () {
                    _context.read<CountCubit>().increment();
                  },
                  tooltip: 'Increment',
                  child: const Icon(Icons.add),
                ),
              ],
            );
          }),
        ),
      ),
    );
  }
}
