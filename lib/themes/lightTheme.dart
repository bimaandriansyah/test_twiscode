// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:for_test/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightTheme(BuildContext context) {
  return ThemeData.light().copyWith(
    brightness: Brightness.light,
    primaryColor: AppColors.whiteColor,
    errorColor: AppColors.dangerColor,
    colorScheme: ColorScheme.light().copyWith(primary: AppColors.primaryColor),
    textTheme: GoogleFonts.latoTextTheme(
      Theme.of(context).textTheme,
    ),
    scaffoldBackgroundColor: AppColors.whiteColor,
    appBarTheme: const AppBarTheme(
      iconTheme: IconThemeData(color: AppColors.blackColor),
      titleTextStyle: TextStyle(color: AppColors.blackColor),
      brightness: Brightness.light,
      backgroundColor: Colors.white,
      centerTitle: true,
      elevation: 0,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: AppColors.darkGreyColor,
        elevation: 1,
        textStyle: TextTheme().button,
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    ),
  );
}
