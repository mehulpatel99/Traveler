import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class MyDatabase {
  Future<Database> setdata() async {
    var dir = await getApplicationDocumentsDirectory();
    var path = join(dir.path, 'my_db');
    var database = await openDatabase(path, version: 1, onCreate: mytable);
    return database;
  }

  Future<void> mytable(Database mydb, int version) async {
    String? sql =
        'CREATE TABLE Test (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, email TEXT, pass TEXT)';
    await mydb.execute(sql);
  }
}
