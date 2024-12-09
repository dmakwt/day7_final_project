import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class ResultScreen extends StatelessWidget {
  ResultScreen({super.key, required this.result});

  String result;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          "Your Grade",
          style: TextStyle(
            fontSize: 32,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Text(
          result,
          style: TextStyle(
            color: Colors.red,
            fontSize: 100,
          ),
        ).animate().fade(duration: 500.ms).scale(delay: 500.ms),
      ),
    );
  }
}
