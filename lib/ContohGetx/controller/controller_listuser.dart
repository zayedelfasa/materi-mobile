import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:kelas_widget/ContohGetx/model/users.dart';
import 'package:kelas_widget/ContohGetx/service/config_repository/global_repository.dart';
import 'package:kelas_widget/service/GetxProvider/UserProvider.dart';

class ListUserController extends GetxController {
  final userProvider = Get.put(UserProvider());

  List<Users> _userList = [];

  StateLoading state;

  get listUser => _userList;

  @override
  onInit() {
    super.onInit();
    state = StateLoading.isInitialize;
    update();
    this.userList;
  }

  get userList async {
    state = StateLoading.isLoading;
    update();

    var data = await userProvider.getUser();
    print('data.status ${data.status}');
    print('data.statusCode ${data.statusCode}');
    print('data.statusText ${data.statusText}');

    // 500 / server error
    // 404 / endpoint gak ada
    // 403 /

    for (var i in data.body) {
      _userList.add(Users.fromJson(i));
    }
    state = StateLoading.isDone;
    update();
  }

  void setUser({
    String title,
    String body,
    String id
  }) async {
    Map map = {
      "title": "$title", 
      "body": "$body", 
      "userId": "$id"
    };

    var data = await userProvider.sendUser(map);

    print('Data kiriman : ${data.body}');
  }
}
