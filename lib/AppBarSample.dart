import 'package:flutter/material.dart';
import 'package:kelas_widget/BottomNavigasi.dart';

class AppBarSample extends StatefulWidget {
  const AppBarSample({Key key}) : super(key: key);

  @override
  _AppBarSampleState createState() => _AppBarSampleState();
}

class _AppBarSampleState extends State<AppBarSample> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomNavigasi()
    );
  }
}


