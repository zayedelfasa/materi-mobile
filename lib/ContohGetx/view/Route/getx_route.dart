import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:kelas_widget/ContohGetx/view/FormListBuku/list_book.dart';
import 'package:kelas_widget/ContohGetx/view/FormLogin/login_getx.dart';

class RouteGetx extends StatelessWidget {
  const RouteGetx({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: LoginGetx.routeName,
      getPages : [
        GetPage(name: LoginGetx.routeName, page: () => LoginGetx(), transition: Transition.rightToLeft),
        GetPage(name: ListBookGetx.routeName, page: () => ListBookGetx(), transition: Transition.rightToLeft)
      ],
    );
  }
}