import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final String message;
  final String name;

  ResultScreen({required this.message, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('For $name message:\n$message'),
      ),
    );
  }
}
