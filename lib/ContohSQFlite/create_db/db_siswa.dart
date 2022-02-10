import 'package:kelas_widget/ContohSQFlite/create_db/db_kelas.dart';
import 'package:kelas_widget/ContohSQFlite/database_helper.dart';
import 'package:sqflite/sqflite.dart';

class TableSiswa extends DatabaseHelper {
  // nama tabel
  static String TabelSiswa = "siswa";
  // nama kolom
  static String SiswaID = "siswa_id";
  static String SiswaNama = "siswa_nama";
  static String SiswaAlamat = "siswa_alamat";
  static String SiswaNamaBapak = "siswa_nama_bapak";

  static String get createTableSiswa {
    return '''
    CREATE TABLE $TabelSiswa (
	    $SiswaID INTEGER PRIMARY KEY AUTOINCREMENT,
	    $SiswaNama TEXT NOT NULL,
	    $SiswaAlamat TEXT NOT NULL,
	    ${TableKelas.kelasID} INTEGER NOT NULL,
	    FOREIGN KEY(${TableKelas.kelasID}) REFERENCES ${TableKelas.table}(${TableKelas.kelasID})
    )
    ''';
  }

  static String get alterColumnOrangTua {
    return '''
    ALTER TABLE $TabelSiswa ADD COLUMN $SiswaNamaBapak TEXT 
    ''';
  }

  Future<int> insert(Map<String, dynamic> row) async {
    Database db = await database;
    return db.insert(TabelSiswa, row);
  }

  Future<List<Map<String, dynamic>>> queryAll() async {
    Database db = await database;
    return db.query(TabelSiswa);
  }

  Future<int> updateData(Map<String, dynamic> row, int id) async {
    Database db = await database;
    return db.update(TabelSiswa, row, where: '$SiswaID = ?', whereArgs: [id]);
  }

  Future<int> deleteData(int id) async {
    Database db = await database;
    return db.delete(TabelSiswa, where: '$SiswaID = ?', whereArgs: [id]);
  }

  Future<List<Map<String, dynamic>>> customQuery(String alamat) async {
    Database db = await database;
    String sql =
        "SELECT $SiswaNama, $SiswaAlamat from $TabelSiswa where $SiswaAlamat = '$alamat'";
    return await db.rawQuery(sql);
  }

  insertAll(List<Map<String, dynamic>> listMap) async {


    Map map = {
      "counter" : null
    };

    print(map["counter"] ?? 1); // 1

    Database db = await database;
    // return db.insert(table, values);
    listMap.forEach((element) {
      db.insert(TabelSiswa, element);
    });
  }
}

