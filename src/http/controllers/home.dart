import 'dart:io';

import '../../models/user.dart';

class Home {
  static void index(HttpRequest request) {
    Map<String, String> data = {"name": "Jordy van Domselaar"};

    User user = new User();
    user.create(data);

    request.response.write("Hello.");
    request.response.close();
  }
}
