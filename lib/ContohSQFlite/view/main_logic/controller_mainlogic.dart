import 'package:get/get.dart';

class ControllerMainLogic extends GetxController {
  String _valueUsername = "";
  String _valueToken = "";

  void setValueUsername(String username) => _valueUsername = username;

  void setValueToken(String token) => _valueToken = token;

  get valueUsername => _valueUsername;

  get valueToken => _valueToken;

}