import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:kelas_widget/ContohGetx/model/login.dart';
import 'package:get/get.dart';
import 'package:kelas_widget/ContohGetx/view/FormListBuku/list_book.dart';

class LoginController extends GetxController {
  // obs
  var login = Login().obs;

  void setLogin() {
    // cara 1
    login.update((val) {
      val.userName = "zayedelfasa";
      val.token = "token1234";
    });

    // cara 2
    // login.value.userName = "zayedelfasa";
    // login.value.token = "token1234";
    // login.refresh();
  }

  void onPress() {
    setLogin();
    Get.offAllNamed(ListBookGetx.routeName, arguments: Login(
      token: "1234token",
      userName: "sekolahmobile"
    ));
  }
}
