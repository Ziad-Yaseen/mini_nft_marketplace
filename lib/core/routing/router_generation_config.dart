import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mini_nft_marketplace/core/features/on_boarding_screen/on_boarding_screen.dart';
import 'package:mini_nft_marketplace/core/routing/app_routes.dart';
import 'package:mini_nft_marketplace/core/screens/home.dart';

class RouterGenerationConfig {
  static GoRouter goRouter = GoRouter(
    initialLocation: AppRoutes.onBoarding,
    errorBuilder: (context, state) => const Scaffold(
      body: Center(child: Text('Error')),
    ),
    routes: [
      GoRoute(
        path: AppRoutes.onBoarding,
        name: AppRoutes.onBoarding,
        builder: (context, state) => const OnBoardingScreen(),
      ),

      GoRoute(
        path: AppRoutes.home,
        name: AppRoutes.home,
        builder: (context, state) => const Home(),
      ),
    ],
  );
}
