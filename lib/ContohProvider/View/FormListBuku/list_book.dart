import 'package:flutter/material.dart';
import 'package:kelas_widget/ContohProvider/model/Book.dart';
import 'package:kelas_widget/ContohProvider/model/login.dart';

import 'package:kelas_widget/ContohProvider/state/state_book.dart';
import 'package:kelas_widget/ContohProvider/state/state_login.dart';
import 'package:provider/provider.dart';

class ListBookStateLess extends StatelessWidget {
  const ListBookStateLess({ Key key }) : super(key: key);
  
  static String routeName = "/ListBookStateLess";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider<BookState>.value(
        value: BookState(),
        builder: (ctx, child) {
          final BookState _state = Provider.of<BookState>(ctx);
          return Scaffold(
          appBar: AppBar(
            title: Text("Contoh Provider"),
            actions: [
              PopupMenuButton(onSelected: (String val) {
                switch (val) {
                  case "1":
                    // tambah buku
                    // jalankan fungsi yang ada di provider
                    _state.tambahBuku(Book(
                      id: "0",
                      namaBuku: "Modul Sekolah Mobile",
                      namaKategori: "Pendidikan"
                    ));
                    break;
                  case "2":
                    // tambah sejumlah buku
                    // jalankan fungsi yang ada di provider
                    _state.tambahSejumlahBuku();
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
          body: Builder(builder: (c) {
            if(_state.lengthListBook() == 0) {
              Login _login = ctx.read<LoginState>().login;
              return Center(
                child: Container(
                  child: Column(
                    children: [
                      Text("Belum ada Data"),
                      Text("username : ${_login.userName}"),
                      Text("token : ${_login.token}")
                    ],
                  ),
                ),
              );
            }

            return ListView.builder(
              itemCount: _state.lengthListBook(),
              itemBuilder: (ctx, int i) {
                Book book = _state.listBook[i];
                return ListTile(
                  onLongPress: () {
                    _state.hapusBuku(i);
                  },
                  title: Text('${book.namaBuku} / index ke $i'),
                  subtitle: Text(book.namaKategori),
                );
              });
          }),
        );
        },
        ),
    );
  }
}

// class ListBook extends StatefulWidget {
//   const ListBook({Key key}) : super(key: key);

//   @override
//   _ListBookState createState() => _ListBookState();
// }

// class _ListBookState extends State<ListBook> {

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         home: ChangeNotifierProvider<BookState>.value(
//       value: BookState(),
//       builder: (ctx, child) {
//         final BookState _state = Provider.of<BookState>(ctx);
//         return Scaffold(
//           appBar: AppBar(
//             title: Text("Contoh Provider"),
//             actions: [
//               PopupMenuButton(onSelected: (String val) {
//                 switch (val) {
//                   case "1":
//                     // tambah buku
//                     // jalankan fungsi yang ada di provider
//                     _state.tambahBuku(Book(
//                       id: "0",
//                       namaBuku: "Modul Sekolah Mobile",
//                       namaKategori: "Pendidikan"
//                     ));
//                     break;
//                   case "2":
//                     // tambah sejumlah buku
//                     // jalankan fungsi yang ada di provider
//                     _state.tambahSejumlahBuku();
//                     break;
//                 }
//               }, itemBuilder: (c) {
//                 return [
//                   PopupMenuItem(
//                     child: Text("Tambah Buku"),
//                     value: "1",
//                   ),
//                   PopupMenuItem(
//                     child: Text("+ Sejumlah Buku"),
//                     value: "2",
//                   )
//                 ];
//               })
//             ],
//           ),
//           body: Builder(builder: (c) {
//             if(_state.lengthListBook() == 0) {
//               return Center(
//                 child: Container(
//                   child: Text("Belum ada Data"),
//                 ),
//               );
//             }

//             return ListView.builder(
//               itemCount: _state.lengthListBook(),
//               itemBuilder: (ctx, int i) {
//                 Book book = _state.listBook[i];
//                 return ListTile(
//                   onLongPress: () {
//                     _state.hapusBuku(i);
//                   },
//                   title: Text('${book.namaBuku} / index ke $i'),
//                   subtitle: Text(book.namaKategori),
//                 );
//               });
//           }),
//         );
//       },
//     ));
//   }
// }
