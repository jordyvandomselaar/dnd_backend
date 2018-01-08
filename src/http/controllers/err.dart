import 'dart:io';

class Err {
  static void notFound(HttpRequest request) {
    request.response.statusCode = 404;
    request.response.write("Not Found!");
    request.response.close();
  }
}
