import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kelas_widget/ContohGetx/controller/contoller_login.dart';
import 'package:kelas_widget/ContohGetx/view/FormListBuku/list_book.dart';

class LoginGetx extends StatelessWidget {
  LoginGetx({ Key key }) : super(key: key);

  static String routeName = "/LoginGetx";

  // call contoller 
  final cLogin = Get.put(LoginController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(
            onPressed: cLogin.onPress, 
            child: Text("LOGIN")),
        ),
    );
  }
}