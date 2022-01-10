import 'package:flutter/material.dart';
import 'package:kelas_widget/ContohRoute/Screen1.dart';
import 'package:kelas_widget/ContohRoute/ScreenMain.dart';

class Screen2 extends StatefulWidget {
  static String routeName = "/screen2 ";

  const Screen2({Key key}) : super(key: key);

  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen2"),
      ),
      body: Container(
          alignment: Alignment.center,
          child: Column(
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(context, ScreenMain.routeName, (route) => false);
                  }, child: Text("Menuju Halaman Main"))
            ],
          )),
    );
  }
}
