import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation/pages/groups_detail_page.dart';
import 'package:navigation/services/items_service.dart';
import 'package:navigation/widgets/layout/layout.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  GetIt.instance.registerSingleton<ItemsService>(ItemsService());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final GoRouter _router = GoRouter(
    navigatorBuilder: ((_, __, child) {
      return Layout(child: child);
    }),
    initialLocation: '/groups',
    routes: <GoRoute>[
      GoRoute(
        path: '/groups',
        builder: (BuildContext context, GoRouterState state) =>
            GroupsDetailPage(),
        routes: [
          GoRoute(
            path: ':id',
            builder: (BuildContext context, GoRouterState state) {
              String? _id = state.params['id'];
              return GroupsDetailPage(id: _id);
            },
          ),
        ],
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'GoRouter Example',
      debugShowCheckedModeBanner: false,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
    );
  }
}
