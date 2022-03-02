// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:for_test/constants/colors.dart';
import 'package:for_test/controllers/detailC.dart';
import 'package:for_test/models/employe.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatelessWidget {
  final DetailController detailC = Get.put(DetailController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.lightColor,
        appBar: AppBar(
          // ignore: prefer_const_literals_to_create_immutables
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Center(
                child:
                    Icon(Feather.star, size: 20, color: AppColors.whiteColor),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Center(
                child:
                    Icon(Feather.edit, size: 20, color: AppColors.whiteColor),
              ),
            )
          ],
          leading: GestureDetector(
              onTap: () {
                Get.back();
              },
              child: Icon(Feather.arrow_left, color: AppColors.whiteColor)),
          backgroundColor: AppColors.primaryColor,
        ),
        body: Obx(() => detailC.isLoading.value
            ? Center(
                child: CircularProgressIndicator(),
              )
            : content()));
  }

  Widget content() {
    final employeeData = Employee.fromJson(detailC.employeeData);
    return Column(
      children: [
        Container(
          width: Get.width,
          height: Get.height / 3.5,
          color: AppColors.primaryColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(
                height: 100,
                width: 100,
                child: CircleAvatar(
                    backgroundImage:
                        NetworkImage(employeeData.avatar.toString())),
              ),
              SizedBox(height: 24),
              Text("${employeeData.firstName} ${employeeData.lastName}",
                  style: GoogleFonts.lato(
                      color: AppColors.whiteColor,
                      fontSize: 20,
                      fontWeight: FontWeight.w600))
            ],
          ),
        ),
        Container(
            margin: EdgeInsets.all(12),
            child: Column(
              children: [
                cardDetail(
                    icon: Feather.user,
                    subtitle: "First Name",
                    title: employeeData.firstName),
                cardDetail(
                    icon: Feather.user,
                    subtitle: "Last Name",
                    title: employeeData.lastName),
                cardDetail(
                    icon: Feather.mail,
                    subtitle: "Email",
                    title: employeeData.email),
              ],
            )),
      ],
    );
  }

  Widget cardDetail({
    required icon,
    required title,
    required subtitle,
  }) {
    return Card(
      color: Colors.white,
      child: ListTile(
        iconColor: AppColors.primaryColor,
        title: Text(title),
        subtitle: Text(subtitle),
        leading: CircleAvatar(
          child: Icon(
            icon,
            color: AppColors.primaryColor,
          ),
          backgroundColor: Colors.transparent,
        ),
      ),
    );
  }
}
