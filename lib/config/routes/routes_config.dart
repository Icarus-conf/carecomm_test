import 'package:carecomm_test/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RoutesNames {
  static const String homeView = "/";
}

final GoRouter router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      name: RoutesNames.homeView,
      path: RoutesNames.homeView,
      builder: (BuildContext context, GoRouterState state) {
        return const HomeView();
      },
    ),
    // Add more routes here as needed
  ],
  errorBuilder: (BuildContext context, GoRouterState state) {
    return const Scaffold(
      body: Center(
        child: Text('Route not found!'),
      ),
    );
  },
);
