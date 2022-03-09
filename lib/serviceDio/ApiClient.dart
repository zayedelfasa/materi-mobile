import 'package:dio/dio.dart';
import 'package:kelas_widget/service/GetxProvider/UserProvider.dart';

class ApiClient {
  final Dio dio = Dio(
    BaseOptions(
      baseUrl: "https://run.mocky.io/v3/",
      // baseUrl: "https://gloshonline.herokuapp.com/",
      headers: {
        "Authentication" : "Bearer 1234567890",
        "Username" : "zayedelfasa"
      }
    )
  );
}