import 'package:get/get.dart';

class ControllerMainLogic extends GetxController {
  String _valueUsername = "";
  String _valueToken = "";
  String _valueRole = "";
  int timeValue = 0;

  void setValueUsername(String username) => _valueUsername = username;

  void setValueToken(String token) => _valueToken = token;

  void setValueRole(String role) => _valueRole = role;

  get valueUsername => _valueUsername;

  get valueToken => _valueToken;

  get valueRole => _valueRole;

  void timeDuration() async {
    await Future.delayed(Duration(seconds: 1));
    timeValue = 1;
    update();
  }
}