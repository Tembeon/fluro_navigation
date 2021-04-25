import 'package:flutter/material.dart';

/// Empty page with centered text
class EmptyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Wow, such empty'),
      ),
    );
  }
}
