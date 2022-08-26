// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:for_test/constants/colors.dart';
import 'package:for_test/constants/texts.dart';
import 'package:for_test/controllers/homeC.dart';
import 'package:for_test/helpers/currency_helpers.dart';
import 'package:for_test/models/cart.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeController homeC = Get.find();
    return Scaffold(
      backgroundColor: AppColors.lightColor,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.white, //change your color here
        ),
        title: Text("Cart",
            style: GoogleFonts.lato(
                color: AppColors.whiteColor,
                fontSize: 18,
                fontWeight: FontWeight.w600)),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 16, right: 16, left: 16),
        child: Obx(
          () => homeC.cartData.isEmpty
              ? Center(
                  child: Text(
                    "Cart is Empty",
                    style: AppTextStyles.text14Bold,
                  ),
                )
              : Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemCount: homeC.cartData.length,
                        itemBuilder: (context, index) {
                          Cart data = homeC.cartData[index];
                          return Container(
                            padding: EdgeInsets.all(12),
                            margin: EdgeInsets.only(bottom: 16),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: AppColors.whiteColor,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 5,
                                  color: AppColors.darkGreyColor.withOpacity(
                                    0.3,
                                  ),
                                ),
                              ],
                            ),
                            child: Row(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: Image.network(
                                    data.image.toString(),
                                    height: 60,
                                    width: 60,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(width: 6),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        data.productName.toString(),
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: AppTextStyles.text16Bold,
                                      ),
                                      SizedBox(height: 4),
                                      Text(
                                        "Rp. ${CurrencyFormat.convertToIdr(data.initialPrice)}",
                                        style: AppTextStyles.text14Bold
                                            .copyWith(
                                                color: AppColors.warningColor),
                                      ),
                                      SizedBox(height: 4),
                                    ],
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    if (data.quantity!.value != 0) {
                                      homeC.cartData[index] = homeC
                                          .cartData[index]
                                        ..quantity!.value =
                                            data.quantity!.value! - 1;
                                      homeC.onDeleteQuantity(int.parse(
                                          data.productPrice.toString()));
                                    }
                                    if (data.quantity!.value == 0) {
                                      homeC.cartData.removeWhere(
                                          (Cart cart) => cart.id == data.id);
                                      homeC.update();
                                    }
                                  },
                                  child: Container(
                                    width: 24,
                                    height: 24,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: AppColors.dangerColor,
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    child: Text(
                                      "-",
                                      style: AppTextStyles.text24Bold.copyWith(
                                          color: AppColors.whiteColor),
                                    ),
                                  ),
                                ),
                                SizedBox(width: 12),
                                Obx(() => Text(
                                      data.quantity!.value.toString(),
                                      style: AppTextStyles.text20Bold,
                                    )),
                                SizedBox(width: 12),
                                GestureDetector(
                                  onTap: () {
                                    homeC.cartData[index] = homeC
                                        .cartData[index]
                                      ..quantity!.value =
                                          data.quantity!.value! + 1;
                                    homeC.onAddQuantity(int.parse(
                                        data.productPrice.toString()));
                                  },
                                  child: Container(
                                    width: 24,
                                    height: 24,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      color: AppColors.infoColor,
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    child: Text(
                                      "+",
                                      style: AppTextStyles.text24Bold.copyWith(
                                          color: AppColors.whiteColor),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: AppColors.whiteColor,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            color: AppColors.darkGreyColor.withOpacity(
                              0.3,
                            ),
                          ),
                        ],
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(24),
                          topRight: Radius.circular(24),
                        ),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  "Total Price",
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: AppTextStyles.text14Bold,
                                ),
                                SizedBox(height: 4),
                                Obx(() => Text(
                                      "Rp. ${CurrencyFormat.convertToIdr(homeC.totalPrice.value)}",
                                      style: AppTextStyles.text18Bold.copyWith(
                                          color: AppColors.warningColor),
                                    )),
                                SizedBox(height: 4),
                              ],
                            ),
                          ),
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  primary: AppColors.warningColor),
                              child: Text(
                                "Order",
                                style: GoogleFonts.montserrat(
                                  color: AppColors.whiteColor,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
        ),
      ),
    );
  }
}
