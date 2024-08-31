import 'package:flutter/material.dart';
import '../app_route.dart';
import '../app_route_generator.dart';

class AuthRouteGenerator implements RouteGenerator {
  @override
  Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home:
        return MaterialPageRoute(builder: (_) => const Placeholder(), settings: settings);
      default:
        return null;
    }
  }
}
