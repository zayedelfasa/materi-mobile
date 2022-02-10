import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kelas_widget/ContohSQFlite/view/login/login_view.dart';
import 'package:kelas_widget/ContohSQFlite/view/main_logic/controller_mainlogic.dart';
import 'package:kelas_widget/ContohSQFlite/view/main_view/sqflite_main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainLogic extends StatelessWidget {
  MainLogic({Key key}) : super(key: key);

  static String routeName = "/MainLogic";

  final _controllerMainLogic = Get.put(ControllerMainLogic());

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: _controllerMainLogic,
        initState: (state) async {
          final pref = await SharedPreferences.getInstance();
          // print(pref.getString("username"));
          // print(pref.getString("token"));
          _controllerMainLogic.setValueUsername(pref.getString("username") ?? "");
          _controllerMainLogic.setValueToken(pref.getString("token") ?? "");
        },
        builder: (ControllerMainLogic c) {
          if(c.valueUsername.isEmpty && c.valueToken.isEmpty) {
            return ViewLogin();
          } else {
            return SQFliteView();
          }
    });
  }
}
