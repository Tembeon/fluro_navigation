import 'package:fluro/fluro.dart';

import 'routes_handlers.dart';

class Routes {
  static FluroRouter? router;

  static String home = '/'; // https://example.com
  static String emptyHome = '/empty'; // https://example.com/empty
  static String demoScreen =
      '/results/:message/:name'; // https://example.com/results/Give a text/Give a name
  // all spaces will be replaced with %20 in url, but not in params

  static void defineRoutes(FluroRouter router) {
    // router.notFoundHandler use for 404 page
    router.notFoundHandler = emptyHomeHandler;

    router.define(emptyHome, handler: emptyHomeHandler);
    router.define(home, handler: homeHandler, transitionType: TransitionType.material);
    router.define(demoScreen, handler: demoHandler, transitionType: TransitionType.material);
  }
}
