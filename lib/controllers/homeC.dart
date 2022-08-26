// ignore_for_file: unnecessary_overrides, unnecessary_this, argument_type_not_assignable_to_error_handler, file_names

import 'package:for_test/models/cart.dart';
import 'package:for_test/services/service_provider.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final productData = [].obs;
  final cartData = <Cart>[].obs;
  final isLoading = false.obs;
  var totalPrice = 0.obs;

  onAddQuantity(int price) {
    totalPrice.value = totalPrice.value + price;
  }

  onDeleteQuantity(int price) {
    totalPrice.value = totalPrice.value - price;
  }

  onGetProducts() async {
    isLoading.value = true;
    try {
      var response = await ServiceProvider.postData(
          'items/search/api_key/teampsisthebest/');

      if (response == null) return;

      if (response != null) {
        productData.assignAll(response);
        productData.refresh();
      }
    } finally {
      isLoading.value = false;
    }
  }

  @override
  void onInit() {
    super.onInit();
    onGetProducts();
  }
}
