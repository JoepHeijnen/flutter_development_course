import 'package:bloc_example/domain/cubit/cubit/theme_cubit.dart';
import 'package:bloc_example/presentation/views/home/home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppRouter {
  late ThemeCubit themeCubit;

  AppRouter() {
    themeCubit = ThemeCubit();
  }

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/home':
        {
          return MaterialPageRoute(builder: ((context) => HomeView()));
        }
    }
  }
}
