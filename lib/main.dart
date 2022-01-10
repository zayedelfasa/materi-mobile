import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kelas_widget/AppBarSample.dart';
import 'package:kelas_widget/ContohLogin/MainApp.dart';

void main() {
  runApp(MainApp());
}

class CupertinoApps extends StatefulWidget {
  const CupertinoApps({Key key}) : super(key: key);

  @override
  _CupertinoAppsState createState() => _CupertinoAppsState();
}

class _CupertinoAppsState extends State<CupertinoApps> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('Cupertino Store'),
        ),
        child: GestureDetector(

          child: Container(
            child: Text("Hello"),
          ),
        ),
      ),
    );
  }
}


