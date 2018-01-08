class Route {
  static const get = "GET";

  String verb;
  String path;

  Function method;

  Route(this.verb, this.path, this.method);
}
