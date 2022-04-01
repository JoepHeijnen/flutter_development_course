import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:master_detail/widgets/layout/layout.dart';

final GoRouter router = GoRouter(
  initialLocation: '/groups',
  routes: <GoRoute>[
    getRoute('/groups'),
    getRoute('/groups/:id'),
    getRoute('/calendar'),
    getRoute('/calendar/:id'),
    getRoute('/conversations'),
    getRoute('/conversations/:id'),
  ],
);

GoRoute getRoute(String path) {
  return GoRoute(
    path: path,
    builder: (BuildContext context, GoRouterState state) {
      return Layout();
    },
  );
}
