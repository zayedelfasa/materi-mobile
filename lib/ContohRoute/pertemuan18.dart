import 'package:flutter/material.dart';
import 'package:kelas_widget/ContohRoute/Screen1.dart';
import 'package:kelas_widget/ContohRoute/Screen2.dart';
import 'package:kelas_widget/ContohRoute/ScreenMain.dart';

class Pertemuan18 extends StatefulWidget {
  const Pertemuan18({Key key}) : super(key: key);

  @override
  _Pertemuan18State createState() => _Pertemuan18State();
}

class _Pertemuan18State extends State<Pertemuan18> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: ScreenMain.routeName,
      routes: {
        ScreenMain.routeName : (ctx) => ScreenMain(),
        Screen1.routeName : (BuildContext ctx) => Screen1(),
        Screen2.routeName : (ctx) => Screen2()
      },
    );
  }
}

