// ignore_for_file: unnecessary_overrides, unnecessary_this, argument_type_not_assignable_to_error_handler, file_names

import 'package:flutter/material.dart';
import 'package:for_test/routes/pages.dart';
import 'package:for_test/services/service_preference.dart';
import 'package:for_test/services/service_provider.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final emailFC = TextEditingController();
  final passwordFC = TextEditingController();
  var onShow = true.obs;
  var isValidate = false.obs;

  void showPassword() {
    onShow.value = !onShow.value;
  }

  void checkValidate() {
    if (formKey.currentState!.validate()) {
      isValidate.value = true;
    } else {
      isValidate.value = false;
    }
  }

  onSend() async {
    Get.focusScope?.unfocus();
    if (this.formKey.currentState!.validate()) {
      var response = await ServiceProvider.postData('login',
          data: {'email': this.emailFC.text, 'password': this.passwordFC.text});

      formKey.currentState!.reset();
      isValidate.value = false;

      if (response == null) return;

      if (response['token'] != null) {
        try {
          PreferenceService.setToken(response['token']);
        } finally {
          Get.offAllNamed(AppPages.HOME);
        }
      }
    }
  }
}
