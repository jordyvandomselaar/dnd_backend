import 'dart:io';

import 'Route.dart';

class Router {
  List<Route> routes;

  Router(this.routes);

  Route getMatchingRoute(String verb, String path) {


    RegExp regexp = new RegExp(searchPattern);

    Route route =
        this.routes.firstWhere();

    print(route);
    return this
        .routes
        .where((route) =>
            (route.path == path || route.path == "*") && route.verb == verb)
        .first;
  }

  void handle(HttpRequest request) {
    Route route = this.getMatchingRoute(request.method, request.uri.toString());

    route.method(request);
  }
}
