import '../config/database.dart';
import '../lib/persistence/connector/connector.dart';
import 'package:sqljocky5/src/connection_pool.dart';

class Database {
  static ConnectionPool getPool() {
    Map<String, String> dbConfig = getDatabaseConfig();

    return Connector.getPool(dbConfig["host"], dbConfig["username"], dbConfig["password"], dbConfig["database"], dbConfig["port"]);
  }
}
