// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:for_test/helpers/snackbar_helper.dart';
import 'package:for_test/services/service_init.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/utils.dart';

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
      if (path == "login") {
        if (Get.isDialogOpen!) Get.back();
        snackbarHelper.showError(description: "User Not Found");
      }
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
