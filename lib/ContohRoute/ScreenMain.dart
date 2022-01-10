import 'package:flutter/material.dart';
import 'package:kelas_widget/ContohRoute/Screen1.dart';

class ScreenMain extends StatefulWidget {
  static String routeName = "/";

  const ScreenMain({Key key}) : super(key: key);

  @override
  _ScreenMainState createState() => _ScreenMainState();
}

class _ScreenMainState extends State<ScreenMain> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Main Screen"),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, Screen1.routeName);
                },
                child: Text("Menuju Screen 1"),
              ),
            )
          ],
        )
      ),
    );
  }
}
