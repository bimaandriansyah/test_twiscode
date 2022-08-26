// ignore_for_file: prefer_const_constructors

import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:for_test/constants/colors.dart';
import 'package:for_test/constants/texts.dart';
import 'package:for_test/controllers/homeC.dart';
import 'package:for_test/helpers/currency_helpers.dart';
import 'package:for_test/models/cart.dart';
import 'package:for_test/models/products.dart';
import 'package:for_test/routes/pages.dart';
import 'package:for_test/widgets/buttonForm.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconly/iconly.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeController homeC = Get.put(HomeController());
    return Scaffold(
      backgroundColor: AppColors.lightColor,
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Center(
              child: GestureDetector(
                onTap: () {
                  Get.toNamed(AppPages.CART);
                },
                child: Obx(() => Badge(
                      elevation: 0,
                      animationType: BadgeAnimationType.fade,
                      badgeContent: homeC.cartData.isEmpty
                          ? SizedBox()
                          : Text(homeC.cartData.length.toString(),
                              style: AppTextStyles.text12.copyWith(
                                color: AppColors.whiteColor,
                              )),
                      badgeColor: homeC.cartData.isEmpty
                          ? AppColors.primaryColor
                          : AppColors.warningColor,
                      child: Icon(
                        IconlyBold.buy,
                        color: AppColors.whiteColor,
                      ),
                    )),
              ),
            ),
          )
        ],
        backgroundColor: AppColors.primaryColor,
        centerTitle: false,
        title: Text("Products",
            style: GoogleFonts.lato(
                color: AppColors.whiteColor,
                fontSize: 18,
                fontWeight: FontWeight.w600)),
      ),
      body: Container(
          margin: EdgeInsets.all(16),
          child: Obx(() => homeC.isLoading.value
              ? Center(child: CircularProgressIndicator())
              : GridView.builder(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 2 / 3.4,
                      crossAxisSpacing: 16,
                      mainAxisSpacing: 16),
                  physics: BouncingScrollPhysics(),
                  itemCount: homeC.productData.length,
                  itemBuilder: (context, index) {
                    var data = Product.fromJson(homeC.productData[index]);
                    return Container(
                      width: Get.width / 2,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: AppColors.whiteColor,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 5,
                                color: AppColors.darkGreyColor.withOpacity(
                                  0.3,
                                ))
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.network(
                                "https://img.okezone.com/okz/500/library/images/2022/06/06/ue2x95s5i11u8f1ifpz0_13181.jpg"),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  data.title.toString(),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: AppTextStyles.text14Bold,
                                ),
                                SizedBox(height: 4),
                                Text(
                                  "Rp. ${CurrencyFormat.convertToIdr(int.parse(data.price.toString()))}",
                                  style: AppTextStyles.text18Bold
                                      .copyWith(color: AppColors.warningColor),
                                ),
                                SizedBox(height: 4),
                                Row(
                                  children: [
                                    Icon(
                                      IconlyBold.location,
                                      color: AppColors.darkGreyColor,
                                      size: 20,
                                    ),
                                    SizedBox(width: 4),
                                    Text(
                                      data.locationName.toString(),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: AppTextStyles.text14.copyWith(
                                          color: AppColors.darkGreyColor),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 4),
                                Row(
                                  children: [
                                    Icon(
                                      IconlyBold.profile,
                                      color: AppColors.darkGreyColor,
                                      size: 20,
                                    ),
                                    SizedBox(width: 4),
                                    Text(
                                      data.addedUserName.toString(),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: AppTextStyles.text14.copyWith(
                                          color: AppColors.darkGreyColor),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 4),
                                Center(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      homeC.cartData.add(Cart(
                                          id: index,
                                          productId: data.id,
                                          productName: data.title,
                                          initialPrice:
                                              int.parse(data.price.toString()),
                                          productPrice:
                                              int.parse(data.price.toString()),
                                          quantity: Rxn<int>(1),
                                          image:
                                              "https://img.okezone.com/okz/500/library/images/2022/06/06/ue2x95s5i11u8f1ifpz0_13181.jpg"));
                                      homeC.onAddQuantity(
                                          int.parse(data.price.toString()));
                                    },
                                    style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.all(6),
                                        primary: AppColors.primaryColor),
                                    child: Text(
                                      "Add Cart",
                                      style: GoogleFonts.montserrat(
                                        color: AppColors.whiteColor,
                                        fontSize: 10,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ))),
    );
  }
}
