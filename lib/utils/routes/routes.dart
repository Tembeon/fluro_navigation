import 'package:fluro/fluro.dart';

import 'routes_handlers.dart';

class Routes {
  static FluroRouter? router;
  static String home = '/';
  static String emptyHome = '/empty';
  static String demoScreen = '/results/:message/:name';

  static void defineRoutes(FluroRouter router) {
    // router.notFoundHandler use for 404 page
    router.notFoundHandler = emptyHomeHandler;

    router.define(emptyHome, handler: emptyHomeHandler);
    router.define(home, handler: homeHandler, transitionType: TransitionType.material);
    router.define(demoScreen, handler: demoHandler, transitionType: TransitionType.material);
  }
}
