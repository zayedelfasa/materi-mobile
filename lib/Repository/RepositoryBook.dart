import 'package:dio/dio.dart';
import 'package:kelas_widget/serviceDio/ApiClient.dart';

class RepositoryBook {
  Future<Response> findAllBook() async {
    try {
      Response response = await ApiClient().dio.get("79dccac2-d2f0-423b-b19d-94705a3b9932");
      return response;
    } catch(err) {
      print('${err.toString()}');
    }
  }
}