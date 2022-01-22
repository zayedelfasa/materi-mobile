import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:kelas_widget/AppBarSample.dart';
import 'package:kelas_widget/ContohConstraint/ContohConstraint.dart';
import 'package:kelas_widget/ContohGetx/view/FormListBuku/list_book.dart';
import 'package:kelas_widget/ContohGetx/view/Route/getx_route.dart';
import 'package:kelas_widget/ContohLogin/MainApp.dart';
import 'package:kelas_widget/ContohProvider/View/FormListBuku/list_book.dart';
import 'package:kelas_widget/ContohProvider/View/FormLogin/login.dart';
import 'package:kelas_widget/ContohProvider/View/Route/route_class.dart';
import 'package:kelas_widget/ContohProvider/model/login.dart';
import 'package:kelas_widget/ContohProvider/state/state_login.dart';
import 'package:provider/provider.dart';

// void main() {
//   runApp(ContohConstraint());
// }

// contoh provider
// void main() {
//   runApp(MultiProvider(
//     providers: [ListenableProvider(create: (c) => LoginState())],
//     child: MainRoute(),
//   ));
// }

// contoh GetX
void main() {
  runApp(RouteGetx());
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
