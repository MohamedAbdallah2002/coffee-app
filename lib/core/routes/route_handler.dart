import 'package:flutter/material.dart';
import 'package:flutter_app3/core/routes/route_name.dart';
import 'package:flutter_app3/features/intro/presentation/pages/home.dart';

class RouteHandler {
  static Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.home:
        return MaterialPageRoute(builder: (_) => const Home());
    }
    return null;
  }
}