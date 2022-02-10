// buatkan fungsi untuk insert;

import 'package:kelas_widget/ContohSQFlite/database_helper.dart';
import 'package:sqflite/sqflite.dart';

class TableKelas extends DatabaseHelper {
  static String table = "kelas";

  static String kelasID = "kelas_id";
  static String kelasNama = "kelas_nama";

  static String get createTableKelas {
    return '''
    CREATE TABLE $table (
      $kelasID INTEGER PRIMARY KEY AUTOINCREMENT,
      $kelasNama TEXT NOT NULL
    )
    ''';
  }

  Future<int> insert(Map<String, dynamic> row) async {
    Database db = await database;
    return await db.insert(table, row);
  }
}