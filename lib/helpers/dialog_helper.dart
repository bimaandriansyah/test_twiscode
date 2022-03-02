// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:for_test/constants/colors.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class DialogHelper {
  static showLoading() {
    Get.dialog(
      Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: EdgeInsets.fromLTRB(0, 40, 0, 25),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 20,
                width: 20,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation(AppColors.primaryColor),
                ),
              ),
              SizedBox(height: 30),
              Text(
                'Loading...',
                style:
                    GoogleFonts.lato(fontSize: 14, color: AppColors.blackColor),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
      barrierDismissible: false,
    );
  }
}
