import 'package:flutter/material.dart';
import 'package:flutter_app3/core/config/di.dart';

class DependencyInjection {
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();//to ensure initalize before runApp
    await initDI();//initialize dependency injection
  }
}