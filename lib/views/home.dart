// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:for_test/constants/colors.dart';
import 'package:for_test/controllers/homeC.dart';
import 'package:for_test/models/employe.dart';
import 'package:for_test/routes/pages.dart';
import 'package:for_test/services/service_preference.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final HomeController homeC = Get.put(HomeController());
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Center(
              child: GestureDetector(
                onTap: () {
                  PreferenceService.clear();
                  Get.offAllNamed(AppPages.LOGIN);
                },
                child: Text("Logout",
                    style: GoogleFonts.lato(
                        color: AppColors.whiteColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w600)),
              ),
            ),
          )
        ],
        backgroundColor: AppColors.primaryColor,
        centerTitle: false,
        title: Text("Employees",
            style: GoogleFonts.lato(
                color: AppColors.whiteColor,
                fontSize: 18,
                fontWeight: FontWeight.w600)),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primaryColor,
        onPressed: () {
          Get.toNamed(AppPages.CREATE);
        },
        child: Icon(
          Feather.plus,
          color: AppColors.whiteColor,
        ),
      ),
      body: Container(
          margin: EdgeInsets.all(12),
          child: Obx(() => homeC.isLoading.value
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(
                  physics: BouncingScrollPhysics(),
                  itemCount: homeC.employeesData.length,
                  itemBuilder: (context, index) {
                    final employeeData =
                        Employee.fromJson(homeC.employeesData[index]);

                    return ListTile(
                      onTap: () {
                        Get.toNamed(AppPages.DETAIL,
                            arguments: employeeData.id);
                      },
                      trailing: Icon(Feather.star, size: 20),
                      title: Text(
                          "${employeeData.firstName} ${employeeData.lastName}"),
                      subtitle: Text(employeeData.email),
                      leading: CircleAvatar(
                        backgroundImage:
                            NetworkImage(employeeData.avatar.toString()),
                      ),
                    );
                  },
                ))),
    );
  }
}
