import 'package:dio/dio.dart';
import 'package:kelas_widget/serviceDio/ApiClient.dart';

class RepositoryBook {
  Future<Response> findAllBook() async {
    try {
      Response response = await ApiClient().dio.get("api/rest/book-category/findAll");
      // "https://gloshonline.herokuapp.com/api/rest/book-category/findAll"
      return response;
    } catch(err) {
      print('${err.toString()}');
    }
  }

  Future<Response> findBookById() async {
    try {
      Response response = await Dio(
        BaseOptions(
          baseUrl: "",
          headers: {

          }
        )
      ).get("https://run.mocky.io/v3/b9b7d923-4603-4cf5-88d9-345d4eec0663");
      return response;
    } catch(err) {
      print('${err.toString()}');
    }
  }

  
}