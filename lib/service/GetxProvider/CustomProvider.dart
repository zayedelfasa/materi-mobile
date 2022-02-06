import 'package:get/get_connect.dart';

class CustomProvider extends GetConnect {
  @override
  void onInit() {
    super.onInit();
    // prod
    httpClient.baseUrl = "https://jsonplaceholder.typicode.com";
    // staging / QA
    // httpClient.baseUrl = "https://staging.jsonplaceholder.typicode.com/";
    // dev
    // httpClient.baseUrl = "https://dev.jsonplaceholder.typicode.com/";

    // misal ada header
    httpClient.addRequestModifier((request) async {
      request.headers['Authorization'] =
          "Bearer tokewr213whrwekrfhejhwvfc9s8dvsdnv";
      return request;
    });

    httpClient.timeout = Duration(minutes: 5);
  }
}
