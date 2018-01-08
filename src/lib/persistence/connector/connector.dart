import 'package:sqljocky5/src/connection_pool.dart';

class Connector {
  static String host, username, password, database, port;
  static ConnectionPool pool;

  static ConnectionPool getPool(String host, String username, String password,
      String database, String port) {
    if (Connector.pool == null) {
      Connector.host = host;
      Connector.username = username;
      Connector.password = password;
      Connector.database = database;
      Connector.port = port;

      Connector.pool = new ConnectionPool(
          host: Connector.host,
          port: int.parse(Connector.port),
          user: Connector.username,
          password: Connector.password,
          db: Connector.database);
    }

    return Connector.pool;
  }
}
