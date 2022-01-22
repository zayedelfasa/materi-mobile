import 'package:flutter/material.dart';
import 'package:kelas_widget/ContohProvider/model/login.dart';
import 'package:provider/provider.dart';

class LoginState with ChangeNotifier {
  var _login = Login();

  String _userName = "";

  get login => _login;

  get userName => _userName;

  void setLogin() {
    _login = Login(
      userName: "zayedelfasa",
      token: "token1234"
    );

    // sharedPreferences. -> gak destroy. data kesimpen. 
    // simpan username
    // simpan token -> request http. req. REST API
    _userName = "zayedelfasa";
    notifyListeners();
  }
}