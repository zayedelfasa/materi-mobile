import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:kelas_widget/ContohGetx/model/Book.dart';


class BookController extends GetxController {
  List<Book> _listBook = [];

  get listBook => _listBook;

  get lengthListBook => _listBook.length;

  void tambahBuku(Book book) {
    _listBook.add(book);
    update();
  }

  void tambahSejumlahBuku() {
    _listBook.add(Book(
      id: "1",
      namaBuku: "Fisika",
      namaKategori: "Pendidikan"
    ));

    _listBook.add(Book(
      id: "2",
      namaBuku: "Matematika",
      namaKategori: "Pendidikan"
    ));

    _listBook.add(Book(
      id: "3",
      namaBuku: "Laskar Pelangi",
      namaKategori: "Novel"
    ));
    update();
  }

  void hapusBuku(int index) {
    _listBook.removeAt(index);
    update();
  }
}