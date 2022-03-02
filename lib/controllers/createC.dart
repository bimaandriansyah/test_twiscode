// ignore_for_file: unnecessary_overrides, unnecessary_this, argument_type_not_assignable_to_error_handler, file_names, prefer_typing_uninitialized_variables, unused_local_variable

import 'package:dio/dio.dart' as dio;
import 'package:flutter/material.dart';
import 'package:for_test/helpers/snackbar_helper.dart';
import 'package:for_test/routes/pages.dart';
import 'package:for_test/services/service_provider.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class CreateController extends GetxController {
  final formKey = GlobalKey<FormState>();
  final firstNameFC = TextEditingController();
  final lastNameFC = TextEditingController();
  final emailFC = TextEditingController();
  var selectedImagePath = ''.obs;

  onSend() async {
    Get.focusScope?.unfocus();
    var formData;

    if (this.formKey.currentState!.validate()) {
      // selectedImagePath.value != ''
      //     ? formData = dio.FormData.fromMap({
      //         'first_name': firstNameFC.text,
      //         'last_name': lastNameFC.text,
      //         'email': emailFC.text,
      //         'avatar':
      //             await dio.MultipartFile.fromFile(selectedImagePath.value)
      //       })
      //     : formData = dio.FormData.fromMap({
      //         'first_name': firstNameFC.text,
      //         'last_name': lastNameFC.text,
      //         'email': emailFC.text,
      //       });

      var response = await ServiceProvider.postData('users', data: {
        'first_name': firstNameFC.text,
        'last_name': lastNameFC.text,
        'email': emailFC.text,
      });

      if (response == null) return;

      if (response != null) {
        formKey.currentState!.reset;
        print(response);
        Get.offAllNamed(AppPages.HOME);
        snackbarHelper.showSuccess(description: "Successfully added employees");
      }
    }
  }

  void onGetImage() async {
    // ignore: deprecated_member_use
    final pickedFile = await ImagePicker()
        .pickImage(source: ImageSource.gallery, maxHeight: 720, maxWidth: 720);
    pickedFile != null
        ? selectedImagePath.value = pickedFile.path
        : snackbarHelper.showError(description: "No image selected");
  }
}
