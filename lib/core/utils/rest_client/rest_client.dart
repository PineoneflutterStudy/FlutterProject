import 'package:dio/dio.dart';

class RestClient{
  final Dio _dio = Dio();

  static final RestClient _instance = RestClient._internal();
  factory RestClient() => _instance;
  RestClient._internal() {
    _dio.interceptors.add(LogInterceptor(responseBody: true, requestBody: true));
  }

  Dio get getDio => _dio;
}
