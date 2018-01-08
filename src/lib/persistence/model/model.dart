import 'dart:async';
import 'package:sqljocky5/src/connection_pool.dart';
import 'package:sqljocky5/src/query.dart';

abstract class Model {
  String table;
  ConnectionPool connectionPool;

  Model(this.connectionPool);

  Future create(Map<String, String> data) async {
    String fields = "";
    String values = "";

    List<String> prepareData = [];

    data.forEach((key, value) {
      fields = "$fields, $key";
      values = "$values, ?";
      prepareData.add(value);
    });

    fields = fields.replaceFirst(", ", "");
    values = values.replaceFirst(", ", "");

    String sql = "INSERT INTO ${this.table} ($fields) VALUES ($values)";

    Query query = await connectionPool.prepare(sql);

    query.execute(prepareData);
  }
}
