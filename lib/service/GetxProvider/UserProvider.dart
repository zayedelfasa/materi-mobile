import 'package:get/get_connect.dart';
import 'package:kelas_widget/service/GetxProvider/CustomProvider.dart';

String baseUrl = "https://jsonplaceholder.typicode.com/";
// flavor ? -> install banyak aplikasi dengan 1 package di dalam hp. 

// development apps dev.api.com 
// QA / staging -> qa.api.com / staging.api.com
// production -> api.com

class UserProvider extends CustomProvider {
  // get / post / patch / delete
  Future<Response> getUser() => get("/users/");

  Future<Response> sendUser(Map map) => post("/posts", map);
}

// list API
// instagram

// home 
// semua API yg ada di HOME -> class HomeProvider extend CustomProvider{}

// search
// semua API yg ada di search -> class SearchProvider extend CustomProvider{}

// case -> 1 alur program 5 API -> dikerjakan secara berurutan
// semua API yang 1 alur program -> class Aprovider extend CustomProvuder{}

// create read, update, delete master data produk
// semua API yang untuk produk -> class ProdukProvider extend CustomProvuder{}
