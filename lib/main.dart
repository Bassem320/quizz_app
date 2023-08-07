import 'package:flutter/material.dart';
import 'package:quizz_app/star_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              colors: [
                Color.fromARGB(255, 75, 6, 143),
                Color.fromARGB(255, 105, 22, 186),
              ],
            ),
          ),
          child: const StartScreen(),
        ),
      ),
    );
  }
}
