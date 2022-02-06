import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kelas_widget/lib2/contoller/contoller_homepage.dart';
import 'package:kelas_widget/lib2/custom_widget/homepage_adress.dart';
import 'package:kelas_widget/lib2/custom_widget/homepage_carousel.dart';

class HomaPage extends StatelessWidget {
  HomaPage({ Key key }) : super(key: key);

  final _controllerHomepage = Get.put(ControllerHomepage());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        leading: IconButton(),
      ),
      body: ListView(
        children: [
          HomePageAddress(alamat: _controllerHomepage.address,),
          HomePageCarousel()
        ],
      ),
    );
  }
}