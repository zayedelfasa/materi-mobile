import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kelas_widget/models/Book.dart';
import 'package:kelas_widget/lib2/contoller/contoller_homepage.dart';
import 'package:kelas_widget/lib2/custom_widget/homepage_adress.dart';
import 'package:kelas_widget/lib2/custom_widget/homepage_carousel.dart';

class HomePage extends StatelessWidget {
  HomePage({ Key key }) : super(key: key);

  final _controllerHomepage = Get.put(ControllerHomepage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: GetBuilder<ControllerHomepage>(
        initState: (state) {
          _controllerHomepage.getBook();
        },
        init: _controllerHomepage,
        builder: (ControllerHomepage c) {
          return ListView.builder(
            itemCount: c.listBook.length,
            itemBuilder: (ctx, index) {
            Book book = c.listBook[index];
            return ListTile(
              title: Text(book.title),
              subtitle: Text(book.authorName),
            );
          });
        }
      ),
    );
  }
}