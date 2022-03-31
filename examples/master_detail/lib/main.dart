import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:master_detail/pages/group_page.dart';
import 'package:master_detail/pages/groups_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) =>
            const GroupsPage(),
      ),
      GoRoute(
        path: '/group/:id',
        builder: (BuildContext context, GoRouterState state) =>
            const GroupPage(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      title: 'GoRouter Example',
    );
  }
}
