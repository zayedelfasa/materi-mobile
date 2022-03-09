import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kelas_widget/ContohSQFlite/view/login/login_view.dart';
import 'package:kelas_widget/ContohSQFlite/view/main_logic/main_logic.dart';
import 'package:kelas_widget/ContohSQFlite/view/main_view/sqflite_main.dart';

class SQFliteRoute extends StatelessWidget {
  const SQFliteRoute({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: MainLogic.routeName,
      getPages: [
        GetPage(name: SQFliteView.routeName, page: () => SQFliteView()),
        GetPage(name: ViewLogin.routeName, page: () => ViewLogin()),
        GetPage(name: MainLogic.routeName, page: () => MainLogic()),
        GetPage(name: "/user", page: () => Scaffold())
      ],
    );
  }
}
