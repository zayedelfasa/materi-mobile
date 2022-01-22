import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kelas_widget/ContohGetx/controller/contoller_book.dart';
import 'package:kelas_widget/ContohGetx/controller/contoller_login.dart';
import 'package:kelas_widget/ContohGetx/model/Book.dart';
import 'package:kelas_widget/ContohGetx/model/login.dart';

class ListBookGetx extends StatelessWidget {
  ListBookGetx({Key key}) : super(key: key);

  static String routeName = "/ListBookGetx";

  final cBook = Get.put(BookController());
  final cLogin = Get.find<LoginController>();
  final loginParam = Get.arguments as Login;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contoh Getx"),
        actions: [
          PopupMenuButton(onSelected: (String val) {
            switch (val) {
              case "1":
                // tambah buku
                // jalankan fungsi yang ada di provider
                cBook.tambahBuku(Book(
                    id: "10",
                    namaBuku: "Sekolah Mobile",
                    namaKategori: "Pendidikan"));
                break;
              case "2":
                // tambah sejumlah buku
                // jalankan fungsi yang ada di provider
                cBook.tambahSejumlahBuku();
                break;
            }
          }, itemBuilder: (c) {
            return [
              PopupMenuItem(
                child: Text("Tambah Buku"),
                value: "1",
              ),
              PopupMenuItem(
                child: Text("+ Sejumlah Buku"),
                value: "2",
              )
            ];
          })
        ],
      ),
      // kita coba menggunakan GetBuilder !
      body: GetBuilder<BookController>(
        builder: (contollerBook) {
        if(cBook.listBook.length == 0) {
          return Column(
            children: [
              Center(
                child: Text("Belum Ada Data"),
              ),
              Center(
                child: Text("Username : ${cLogin.login.value.userName}"),
              ),
              Center(
                child: Text("Token : ${cLogin.login.value.token}"),
              ),
              Center(
                child: Text("Parameter : ${loginParam.userName} dan ${loginParam.token}"),
              )
            ],
          );
        }
        return CustomListView();
      }),
    );
  }
}

class CustomListView extends StatelessWidget {
  CustomListView({ Key key }) : super(key: key);

  final controller = Get.find<BookController>();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: controller.listBook.length,
      itemBuilder: (ctx, index) {
      return ListTile(
        onLongPress: () {
          controller.hapusBuku(index);
        },
        title: Text(controller.listBook[index].namaBuku),
        subtitle: Text(controller.listBook[index].namaKategori),
      );
    });
  }
}
