import 'package:carecomm_test/features/home/data/models/product_model.dart';
import 'package:carecomm_test/features/home/presentation/views/home_view.dart';
import 'package:carecomm_test/features/home/presentation/views/widgets/custom_btn_navbar.dart';
import 'package:carecomm_test/features/home/presentation/views/widgets/product_details_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RoutesNames {
  static const String btnNavBar = "/";
  static const String homeView = "/homeView";
  static const String productDetailsView = "/productDetailsView";
}

final GoRouter router = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      name: RoutesNames.btnNavBar,
      path: RoutesNames.btnNavBar,
      builder: (BuildContext context, GoRouterState state) {
        return const CustomBottomNavBar();
      },
    ),
    GoRoute(
      name: RoutesNames.homeView,
      path: RoutesNames.homeView,
      builder: (BuildContext context, GoRouterState state) {
        return const HomeView();
      },
    ),
    GoRoute(
      name: RoutesNames.productDetailsView,
      path: RoutesNames.productDetailsView,
      builder: (BuildContext context, GoRouterState state) {
        final ProductModel product = state.extra as ProductModel;
        return ProductDetailsView(
          product: product,
        );
      },
    ),
  ],
  errorBuilder: (BuildContext context, GoRouterState state) {
    return const Scaffold(
      body: Center(
        child: Text('Route not found!'),
      ),
    );
  },
);
