import 'package:flutter/material.dart';
import 'package:kelas_widget/ContohProvider/model/Book.dart';

/**
 * terdiri dari : 
 * object buku -> dalam bentuk list
 * fungsinya : 
 * fungsi tambahBuku
 * fungsi tambahSejumlahBuku
 * fungsi tampilkanList -> get listBook
 * fungsi hapus.
 */

class BookState with ChangeNotifier {
  List<Book> _listBook = [];

  TextEditingController _textEditingController = TextEditingController();

  get textEditingController => _textEditingController;

  get listBook => _listBook;

  int lengthListBook() {
    return _listBook.length;
  }
  
  void tambahBuku(Book book) {
    _listBook.add(book);
    notifyListeners();
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
    notifyListeners();
  }

  void hapusBuku(int index) {
    // syntax untuk menghapus list?
    _listBook.removeAt(index);
    notifyListeners();
  }
}