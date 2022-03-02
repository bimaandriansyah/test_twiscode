// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:for_test/constants/colors.dart';

Widget formInput(
    {required controller,
    required String placeholder,
    required icon,
    required TextInputType inputType,
    required TextInputAction inputAction,
    var onChange,
    String? error,
    required validator}) {
  return TextFormField(
    controller: controller,
    keyboardType: inputType,
    textInputAction: inputAction,
    onChanged: onChange,
    textAlignVertical: TextAlignVertical.center,
    decoration: InputDecoration(
      errorText: error,
      hintText: placeholder,
      enabledBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.lightGreyColor, width: 1),
      ),
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.lightGreyColor),
      ),
      prefixIcon: Padding(
        padding: const EdgeInsetsDirectional.only(end: 20),
        child: icon,
      ),
      hintStyle: const TextStyle(fontSize: 16, color: AppColors.lightGreyColor),
    ),
    autovalidateMode: AutovalidateMode.onUserInteraction,
    validator: validator,
  );
}
