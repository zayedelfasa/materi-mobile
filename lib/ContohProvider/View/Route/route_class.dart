import 'package:flutter/material.dart';
import 'package:kelas_widget/ContohProvider/View/FormListBuku/list_book.dart';
import 'package:kelas_widget/ContohProvider/View/FormLogin/login.dart';

class MainRoute extends StatefulWidget {
  const MainRoute({ Key key }) : super(key: key);

  @override
  _MainRouteState createState() => _MainRouteState();
}

class _MainRouteState extends State<MainRoute> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: FormLogin.routeName,
      routes: {
        FormLogin.routeName: (ctx) => FormLogin(),
        ListBookStateLess.routeName : (ctx) => ListBookStateLess()
        // new route. 
      },
    );
  }
}