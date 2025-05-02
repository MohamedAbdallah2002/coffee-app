import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("INSTANT",style: TextStyle(
          color: Colors.blueAccent,
          fontSize: 32,
          fontWeight: FontWeight.bold,
        ),),
      ),
    );
  }
}