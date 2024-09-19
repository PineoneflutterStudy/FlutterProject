import 'package:dio/dio.dart';

class RestClient {
  static final RestClient _instance = RestClient._internal();
  factory RestClient() => _instance;
  RestClient._internal();

  Dio createDio() {
    final dio = Dio();
    dio.interceptors.add(LogInterceptor(responseBody: true, requestBody: true));
    return dio;
  }
}