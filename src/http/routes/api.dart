import '../../lib/router/Route.dart';
import '../../lib/router/Router.dart';
import '../controllers/err.dart';
import '../controllers/home.dart';

Router initializeRoutes() {
  Router router = new Router([
    new Route(Route.get, "/", Home.index),
    new Route(Route.get, "/.+", Err.notFound)
  ]);

  return router;
}
