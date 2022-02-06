import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class DetilListUser extends StatelessWidget {
  DetilListUser({ Key key }) : super(key: key);

  static String routeName = "/DetilListUser";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detil User"),
      ),
      body: GetBuilder(builder: (c) {
        return Container();
      }),
    );
  }
}