import 'package:dio/dio.dart';
import 'package:papco_shop/api/api.dart';
import 'package:papco_shop/src/application/feature/views/home_features/model/home_model.dart';

class HomeRepository {
  final HomeApi homeApi = HomeApi();

  Future<dynamic> callIndexApi() async {
    Response response = await homeApi.fetchHomeApi();

    final HomeModel homeModel = HomeModel.fromJson(response.data);
    return homeModel;
  }
}
