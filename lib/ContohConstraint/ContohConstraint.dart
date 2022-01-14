import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:kelas_widget/ContohConstraint/CustomTheme.dart';

class ContohConstraint extends StatefulWidget {
  const ContohConstraint({ Key key }) : super(key: key);

  @override
  _ContohConstraintState createState() => _ContohConstraintState();
}

class _ContohConstraintState extends State<ContohConstraint> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Contoh tema"),
        ),
        body: Container(
          child: Text(
            "Hello world",
            style: TextStyle(
              fontSize: Theme.of(context).bodyText2
            ),
            ),
        ),
      ),
      theme: CustomTheme.themeData(context)
    );
  }
}
