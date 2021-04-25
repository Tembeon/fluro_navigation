import 'package:flutter/material.dart';

/// initial page with button which navigate to other page with params
class HomeNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: TextButton(
              onPressed: () {
                // You can change params right here. Url strategy
                // you can change in routes.dart
                Navigator.pushNamed(context, '/results/This is message/name');
              },
              child: Text('Pass param')),
        ),
      ),
    );
  }
}
