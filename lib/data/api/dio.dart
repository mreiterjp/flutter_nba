import 'package:dio/dio.dart';

Dio buildDioClient(String baseUrl) {
  final dio = Dio();
  dio.options.baseUrl = baseUrl;
  dio.options.contentType = "application/json";
  dio.options.headers['Authorization'] = '4a5bccb3-3092-44f6-9d5d-be3a6a92cf57';
  dio.interceptors.addAll([
    LogInterceptor(
      requestBody: false,
      requestHeader: true,
      responseHeader: false,
      responseBody: true,
    ),
  ]);
  return dio;
}
