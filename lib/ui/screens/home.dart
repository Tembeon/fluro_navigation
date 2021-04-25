import 'package:flutter/material.dart';

class HomeNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/results/This is message/name');
              },
              child: Text('Pass param')),
        ),
      ),
    );
  }
}
