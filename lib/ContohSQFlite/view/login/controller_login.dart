import 'package:get/get.dart';
import 'package:kelas_widget/ContohSQFlite/view/main_view/sqflite_main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ControllerLogin extends GetxController {
  void setLogin(String username, String token, String role) async {
    // set username
    // set password

    // 1. ambil data login menggunakan dio / getConnect
    // 2. simpan di sharedPreferences
    final pref = await SharedPreferences.getInstance();
    pref.setString("username", username);
    pref.setString("token", token);
    pref.setString("role", role);
    update();

    if(role == "admin") {
      Get.offAllNamed(SQFliteView.routeName);
    } else {
      Get.offAllNamed("/user");
    }
  }
}