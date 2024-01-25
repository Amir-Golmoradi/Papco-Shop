import 'package:papco_shop/src/config/config.dart';
import 'package:dio/dio.dart';

class HomeApi {
  final Dio _dio = Dio();

  Future<Response> fetchHomeApi() async {
    _dio.options.connectTimeout = const Duration(seconds: 25);
    _dio.options.receiveTimeout = const Duration(seconds: 25);
    _dio.options.sendTimeout = const Duration(seconds: 25);

    final Response response = await _dio.get('$apiUrl/index');

    return response;
  }
}
