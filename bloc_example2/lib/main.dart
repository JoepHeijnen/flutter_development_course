import 'package:bloc_example/pages/home_page.dart';
import 'package:bloc_example/presentation/views/home/home_view.dart';
import 'package:bloc_example/providers/custom_bloc_providers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'app/routes/app_routes.dart';
import 'domain/cubit/cubit/theme_cubit.dart';

void main() {
  runApp(const Core());
}

class Lava extends StatelessWidget {
  final AppRouter router;

  Lava({Key? key, required this.router}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeCubit themeCubit = BlocProvider.of<ThemeCubit>(context, listen: true);
    bool _isDark = themeCubit.isDark;

    return MaterialApp(
      title: 'Flutter Demo',
      theme: _isDark ? ThemeData.dark() : ThemeData.light(),
      initialRoute: '/home',
      onGenerateRoute: router.generateRoute,
    );
  }
}
