import 'package:bloc_example/cubit/count/count_cubit.dart';
import 'package:bloc_example/pages/home2_page.dart';
import 'package:bloc_example/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cubit/count/count2_cubit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CountCubit>(create: ((context) => CountCubit())),
        BlocProvider<CountCubit2>(create: ((context) => CountCubit2())),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage2(),
      ),
    );
  }
}
