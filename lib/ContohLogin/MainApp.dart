import 'package:flutter/material.dart';
import 'package:kelas_widget/ContohLogin/FormLogin.dart';
import 'package:kelas_widget/ContohLogin/FormMainScreen.dart';
import 'package:kelas_widget/ContohLogin/FormSetting.dart';

class MainApp extends StatefulWidget {
  const MainApp({Key key}) : super(key: key);

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: FormLogin.routeName,
      routes: {
        FormLogin.routeName : (BuildContext ctx) => FormLogin(),
        FormMainScreen.routeName : (BuildContext ctx) => FormMainScreen(),
        FormSetting.routeName : (ctx) => FormSetting()
      },
      onGenerateRoute: (RouteSettings setting) {
        // contoh
      },
      onUnknownRoute: (RouteSettings settings) {
        return MaterialPageRoute(builder: (ctx) => Scaffold(
          body: Text("Route Salah!"),
        ));
      },
    );
  }
}
