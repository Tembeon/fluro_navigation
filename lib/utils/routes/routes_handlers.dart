import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import '../../ui/screens/empty_home.dart';
import '../../ui/screens/home.dart';
import '../../ui/screens/results.dart';

Handler homeHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return HomeNavigation();
});

Handler demoHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  String name = params['name']!.first;
  String message = params['message']!.first;

  return ResultScreen(message: message, name: name);
});

Handler emptyHomeHandler = Handler(
    handlerFunc: (BuildContext? context, Map<String, List<String>> params) {
  return EmptyHome();
});
