import 'dart:async';
import "dart:io";

import 'src/http/routes/api.dart';
import 'src/lib/router/Router.dart';

Future main() async {
  HttpServer server = await HttpServer.bind("localhost", 8000);

  await for (HttpRequest request in server) {
    Router router = initializeRoutes();

    router.handle(request);

    request.response.close();
  }
}
