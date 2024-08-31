import 'package:flutter/material.dart';
import 'routes_generators/auth_route_generator.dart';
import 'routes_generators/init_route_generator.dart';

abstract class RouteGenerator {
  Route<dynamic>? generateRoute(RouteSettings settings);
}

class AppRoutesGenerator {
  static final List<RouteGenerator> generators = [
    AuthRouteGenerator(),
    InitRouteGenerator(),
  ];

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    for (final generator in generators) {
      final route = generator.generateRoute(settings);
      if (route != null) {
        return route;
      }
    }
    // fallback route
    return MaterialPageRoute(builder: (_) {
      return const Scaffold(body: Center(child: Text('Route not found')));
    });
  }
}
