import 'package:get/get.dart';
import 'package:kelas_widget/ContohSQFlite/view/main_view/sqflite_main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ControllerLogin extends GetxController {
  void setLogin(String username, String token) async {
    // set username
    // set password

    final pref = await SharedPreferences.getInstance();
    pref.setString("username", username);
    pref.setString("token", token);
    update();
    
    Get.offAllNamed(SQFliteView.routeName);
  }
}