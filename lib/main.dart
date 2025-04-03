import 'package:flutter/material.dart';
import 'package:flutter_app3/core/config/app_congig.dart';
import 'package:flutter_app3/core/routes/route_handler.dart';

Future<void> main() async {
  DependencyInjection.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      onGenerateRoute: RouteHandler.generateRoute,
    );
  }
}
