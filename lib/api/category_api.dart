import 'package:papco_shop/src/config/config.dart';
import 'package:dio/dio.dart';

class CategoryApi {
  final Dio dio = Dio();

//Todo:fetch CategoryApi from server

  Future<Response> fetchCategoryApi() async {
    final Response response = await dio.get('$apiUrl/get-menu-category');
    return response;
  }

  Future<Response> fetchAllProducts(String id) async {
    final Response response = await dio.get('$apiUrl/product-category/$id');
    return response;
  }
}
