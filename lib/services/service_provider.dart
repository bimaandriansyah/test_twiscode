// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:for_test/services/service_init.dart';

class ServiceProvider {
  static Future<dynamic> getData(String path, {String? token}) async {
    try {
      Response response = await apiCall(token).get(path);
      return response.data;
    } on DioError catch (e) {
      print(e.message);
    }
  }

  static Future<dynamic> postData(String path,
      {Map? data,
      String? token,
      void Function(int, int)? onSendProgress}) async {
    try {
      Response response = await apiCall(token)
          .post(path, data: data, onSendProgress: onSendProgress);
      return response.data;
    } on DioError catch (e) {
      print(e.message);
    }
  }

  static Future<dynamic> postDataFile(String path,
      {FormData? data, String? token}) async {
    try {
      Response response = await apiCall(token).post(path, data: data);
      return response.data;
    } on DioError catch (e) {
      print(e.message);
    }
  }

  static Future<dynamic> deleteData(String path,
      {Map? data, String? token}) async {
    try {
      Response response = await apiCall(token).delete(path);
      return response.data;
    } on DioError catch (e) {
      print(e.message);
    }
  }
}
