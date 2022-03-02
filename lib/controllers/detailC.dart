// ignore_for_file: unnecessary_overrides, unnecessary_this, argument_type_not_assignable_to_error_handler, file_names, unnecessary_brace_in_string_interps, prefer_collection_literals

import 'package:for_test/services/service_provider.dart';
import 'package:get/get.dart';

class DetailController extends GetxController {
  final employeeData = Map<String, dynamic>().obs;
  final isLoading = false.obs;
  var idData = Get.arguments;

  onGetEmployee() async {
    isLoading.value = true;
    try {
      var response =
          await ServiceProvider.getData('users/${idData.toString()}');

      if (response == null) return;

      if (response['data'] != null) {
        employeeData.assignAll(Map<String, dynamic>.from(response['data']));
        employeeData.refresh();
      }
    } finally {
      isLoading.value = false;
    }
  }

  @override
  void onInit() {
    super.onInit();
    onGetEmployee();
  }
}
