import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kelas_widget/ContohSQFlite/view/login/controller_login.dart';

class ViewLogin extends StatelessWidget {

  static String routeName = "/viewLogin";
  final _controllerLogin = Get.put(ControllerLogin());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<ControllerLogin>(
          init: _controllerLogin,
          builder: (ControllerLogin c) {
            return Center(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                        onPressed: () {
                          c.setLogin("zayedelfasa", "Bearer 1abc15b1dbd87db15c815ad", "admin");
                        },
                        child: Text("Login"))
                  ],
                ),
              ),
            );
          }
      ),
    );
  }
}