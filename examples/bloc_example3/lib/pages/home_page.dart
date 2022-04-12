import 'package:bloc_example3/cubit/count/count2_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //

    return BlocBuilder<CountCubit, int>(
      builder: (context, state) {
        return Container(
          child: Center(
            child: Text(
              state.toString(),
              style: TextStyle(fontSize: 30),
            ),
          ),
        );
      },
    );
  }
}
