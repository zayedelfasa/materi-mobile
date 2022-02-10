// fungsinya untuk inisialisasi database dan open database

import 'dart:io';
import 'package:kelas_widget/ContohSQFlite/create_db/db_kelas.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

import 'create_db/db_siswa.dart';

class DatabaseHelper {
  // nama DB 
  String _databaseName = "sekolah.db";
  int _version = 3;

  // object Database
  static Database _database;

  Future<Database> get database async {
    if(_database != null) return _database;
    _database = await _initDatabase();
    return _database;
  }

  // fungsi untuk initDatabase
  // gunakan path_provider
  _initDatabase() async {
    Directory pathDirectory = await getApplicationDocumentsDirectory(); // -> menunjukkan lokasi dari aplikasi
    String path = join(pathDirectory.path,_databaseName); // -> /Users/zayedelfasa/Documents/PROJECT_SEKOLAH_CILSY/latihan_flutter/kelas_widget/sekolah.db
    
    // opendatabase -> kalo misalkan tidak ada alter table
    // return openDatabase(path, version: _version, onCreate: _onCreate);

    // kalo ada alter table
    return openDatabase(path, version: _version, onCreate: _onCreate, onUpgrade: _onUpgrade);
  }

  Future _onCreate(Database db, int version) async {
    Batch batch = db.batch();
    batch.execute(TableKelas.createTableKelas);
    batch.execute(TableSiswa.createTableSiswa);
    await batch.commit();
  }

  Future _onUpgrade(Database db, int oldVersion, int newVersion) async {
    // lakukan alter table.
    if(newVersion > oldVersion) {
      await db.execute(TableSiswa.alterColumnOrangTua);
    }
  }

  Future deleteAlldata() async {
    Database db = await database;
    Batch batch = db.batch();

    batch.delete(TableSiswa.TabelSiswa);
    batch.delete(TableKelas.table);

    await batch.commit();
  }
}