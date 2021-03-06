import 'package:bloc_example3/cubit/count/count_cubit.dart';
import 'package:bloc_example3/cubit/count/count_list_cubit.dart';
import 'package:bloc_example3/pages/count_page.dart';
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
      create: (_) => CountListCubit()..getList(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: CountPage(),
      ),
    );
  }
}
