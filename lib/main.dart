import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';

import 'utils/routes/routes.dart';

void main() {
  setPathUrlStrategy(); // remove # from url path
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final router = FluroRouter();

  @override
  void initState() {
    // initialize router
    Routes.defineRoutes(router);
    Routes.router = router;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: Routes.router!.generator,
    );
  }
}
