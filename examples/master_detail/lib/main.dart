import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:master_detail/cubit/master_detail_cubit.dart';
import 'package:master_detail/navigation/routes.dart';
import 'package:master_detail/services/items_service.dart';
import 'package:master_detail/widgets/layout/layout.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  GetIt.instance.registerSingleton<ItemsService>(ItemsService());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<MasterDetailCubit>(
            create: ((context) => MasterDetailCubit()))
      ],
      child: MaterialApp.router(
        title: 'GoRouter Example',
        debugShowCheckedModeBanner: false,
        routeInformationParser: router.routeInformationParser,
        routerDelegate: router.routerDelegate,
      ),
    );
  }
}
