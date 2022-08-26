import 'package:dio/dio.dart';

Dio apiCall([String? token]) {
  var _dio = Dio();

  _dio
    ..options.baseUrl = 'https://ranting.twisdev.com/index.php/rest/'
    ..options.connectTimeout = 60 * 2000;

  return _dio;
}
