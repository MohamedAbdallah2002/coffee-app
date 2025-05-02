import 'package:flutter/material.dart';
import 'package:flutter_app3/core/routes/route_name.dart';
import 'package:flutter_app3/splash_view.dart';

class RouteHandler {
  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.splash:
        return MaterialPageRoute(builder: (_) => const SplashView());
    }
    return null;
  }
}