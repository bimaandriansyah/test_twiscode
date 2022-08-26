// ignore_for_file: file_names, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:for_test/constants/colors.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

Widget buttonForm({
  required color,
  required text,
  required onClick,
  var splash,
}) {
  return Container(
    child: ElevatedButton(
      onPressed: onClick,
      style: ElevatedButton.styleFrom(primary: color, splashFactory: splash),
      child: Text(
        text,
        style: GoogleFonts.montserrat(
          color: AppColors.whiteColor,
          fontSize: 12,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  );
}
