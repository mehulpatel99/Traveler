import 'package:sqflite/sqflite.dart';
import 'package:travellar/Database/db_helper.dart';

class repositoy {
  MyDatabase? _myDatabase;
  Database? _database;

  repositoy() {
    _myDatabase = MyDatabase();
  }
  Future<Database?> get mydb async {
    if (_myDatabase != null) {
      return _database;
    } else {
      _database = await _myDatabase?.setdata();
      return  _database;
    }
  }

  //getdata
  getdata(table) async {
    var con = await mydb;
    return await con!.query(table);
  }

  //insertdata
  insertdata(table, data) async {
    var con = await mydb;
    return await con!.insert(table, data);
  }

  //updatedata
  updatedata(table, data) async {
    var con = await mydb;
    return await con!
        .update(table, data, where: 'id=?', whereArgs: [data['id']]);
  }

  deletdata(table) async {
    var con = await mydb;
    return await con!.delete(table,where: 'id=?');
  }
}
