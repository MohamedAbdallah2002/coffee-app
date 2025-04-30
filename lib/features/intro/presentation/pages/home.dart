import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

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