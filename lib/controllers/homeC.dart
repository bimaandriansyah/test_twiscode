// ignore_for_file: unnecessary_overrides, unnecessary_this, argument_type_not_assignable_to_error_handler, file_names

import 'package:for_test/services/service_provider.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final employeesData = [].obs;
  final isLoading = false.obs;

  onGetEmployees() async {
    isLoading.value = true;
    try {
      var response = await ServiceProvider.getData('users?page=1');

      if (response == null) return;

      if (response['data'] != null) {
        employeesData.assignAll(response['data']);
        employeesData.refresh();
      }
    } finally {
      isLoading.value = false;
    }
  }

  @override
  void onInit() {
    super.onInit();
    onGetEmployees();
  }
}
