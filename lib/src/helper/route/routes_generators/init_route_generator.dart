import 'package:flutter/material.dart';
import 'package:packeee/src/features/onboarding/view/onboarding_screen.dart';
import 'package:packeee/src/features/splash/splash_screen.dart';
import '../app_route.dart';
import '../app_route_generator.dart';

class InitRouteGenerator implements RouteGenerator {
  @override
  Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen(), settings: settings);

      case AppRoutes.onboarding:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen(), settings: settings);
      default:
        return null;
    }
  }
}
