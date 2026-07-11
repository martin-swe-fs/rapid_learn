import 'package:flutter/widgets.dart';
import 'package:frontend/home_page.dart';
import 'package:frontend/router/rl_route.dart';
import 'package:go_router/go_router.dart';

extension RlRoutePage on RlRoute {
  Widget page(GoRouterState state) => switch (this) {
    .home => const HomePage(),
  };
}

abstract final class RlRouter {
  static final GoRouter router = .new(
    routes: [
      for (final RlRoute route in RlRoute.values)
        GoRoute(
          name: route.name,
          path: route.path,
          builder: (context, state) {
            return route.page(state);
          },
        ),
    ],
  );
}
