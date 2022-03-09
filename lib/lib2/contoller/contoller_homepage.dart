import 'package:get/get_connect.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:kelas_widget/Repository/RepositoryBook.dart';
import 'package:dio/dio.dart';
import 'package:kelas_widget/models/Book.dart';

class ControllerHomepage extends GetxController {
  String address = "Jln Bojong Tua No 61";
  var repositoryBook = RepositoryBook();
  List<Book> listBook = [];

  getBook() async {
    try {
      final resp = await repositoryBook.findAllBook();
      print('response status code : ${resp.statusCode}');
      print('response status message : ${resp.statusMessage}');
      print('response header : ${resp.headers}');
      for (var i in resp.data) {
        print('Data i ${i.toString()}');
        listBook.add(Book.fromJson(i));
      }
      update();
    } on DioError catch(e) {
      print('${e.toString()}');
    }
  }
}