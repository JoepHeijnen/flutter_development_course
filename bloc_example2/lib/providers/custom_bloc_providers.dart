import 'package:bloc_example/app/routes/app_routes.dart';
import 'package:bloc_example/domain/cubit/cubit/theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../main.dart';

class Core extends StatelessWidget {
  const Core({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ThemeCubit>(create: ((context) => ThemeCubit()))
      ],
      child: Lava(
        router: AppRouter(),
      ),
    );
  }
}
