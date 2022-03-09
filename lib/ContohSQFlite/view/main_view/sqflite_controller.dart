import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:kelas_widget/ContohSQFlite/create_db/db_kelas.dart';
import 'package:kelas_widget/ContohSQFlite/create_db/db_siswa.dart';
import 'package:kelas_widget/ContohSQFlite/database_helper.dart';
import 'package:kelas_widget/ContohSQFlite/model_siswa.dart';
import 'package:kelas_widget/ContohSQFlite/view/login/login_view.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SQFliteController extends GetxController {
  // DatabaseHelper databaseHelper = DatabaseHelper();
  TableKelas _tableKelas = TableKelas();
  TableSiswa _tableSiswa = TableSiswa();

  Future<void> insertTableSiswa() async {
    // jadikan sebuah object!
    // final siswa = Siswa(
    //   siswaNama: "Sekolah Mobile",
    //   siswaAlamat: "Bogor"
    // );

    Map<String, dynamic> mapSiswa = {
      TableSiswa.SiswaNama : "Elfasa Zayed",
      TableSiswa.SiswaAlamat : "Jl Pahlawan Gang 1 no 15 Surabaya",
      TableKelas.kelasID : 1,
      TableSiswa.SiswaNamaBapak : "Soleh Bagus"
    };
    int id = await _tableSiswa.insert(mapSiswa);
    print('id dari siswa : $id');
  }

  Future<void> updateTable() async {
   // id 3 update data
   Map<String, dynamic> mapSiswa = {
     TableSiswa.SiswaNama : "Bondan Prakoso",
     TableSiswa.SiswaAlamat : "Jakarta Barat"
    };

    int id = await _tableSiswa.updateData(mapSiswa, 1);
    print('id yang di update : $id');
  }

  Future<void> readTableSiswa() async {
    // select data ?
    List<Map<String, dynamic>> listSiswa = await _tableSiswa.queryAll();
    print('List Siswa : ');
    listSiswa.forEach((element) {
      print('${element.toString()}');
    });
  }

  Future<void> deleteTable() async {
    int id = await _tableSiswa.deleteData(1);
    print('delete id : $id');
  }

  Future<void> customQuery() async {
    // select siswa_nama, siswa_alamat from where siswa_alamat = "bogor"
    List<Map<String, dynamic>> listSiswa = await _tableSiswa.customQuery("Bogor");
    print('List Siswa : ');
    listSiswa.forEach((element) {
      print('${element.toString()}');
    });
  }

  Future<void> insertTableKelas() async {
    Map<String, dynamic> row = {
      TableKelas.kelasNama : "IPA 1"
    };

    int id = await _tableKelas.insert(row);
    print(id);
  }

  logout() async {
    final pref = await SharedPreferences.getInstance();
    pref.remove("username");
    pref.remove("token");
    pref.remove("role");

    DatabaseHelper().deleteAlldata();

    Get.offAllNamed(ViewLogin.routeName);
  }
}