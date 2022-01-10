import 'package:flutter/material.dart';
import 'package:kelas_widget/ContohRoute/Screen2.dart';

class Screen1 extends StatefulWidget {
  static String routeName = "/screen1";

  const Screen1({Key key}) : super(key: key);

  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Screen1"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: ElevatedButton(
                child: Text("Menuju Screen 2"),
                onPressed: () => Navigator.pushNamed(context, Screen2.routeName),
              ),
            )
          ],
        )
      ),
    );
  }
}
