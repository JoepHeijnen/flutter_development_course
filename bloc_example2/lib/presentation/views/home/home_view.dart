import 'package:bloc_example/domain/cubit/cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/cubit/cubit/theme_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeCubit themeCubit = BlocProvider.of<ThemeCubit>(context, listen: false);

    return Scaffold(
      body: BlocListener<ThemeCubit, ThemeState>(
        listener: (context, state) {
          if (state is ThemeChanged) {
            print('Theme is changed');
          }
        },
        child: BlocBuilder<ThemeCubit, ThemeState>(
          builder: (context, ThemeState state) {
            return Container(
              child: Center(
                child: ElevatedButton(
                  onPressed: () {
                    themeCubit.toggleTheme();
                  },
                  child: state is ThemeDark
                      ? Text('Change to Light')
                      : Text('Change to Dark'),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
