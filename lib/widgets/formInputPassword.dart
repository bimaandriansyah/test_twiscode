// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:for_test/constants/colors.dart';

Widget formInputPassword(
    {required controller,
    required String placeholder,
    required TextInputType inputType,
    required TextInputAction inputAction,
    required clickShow,
    required onChange,
    required bool isShow,
    String? errorText,
    required validator}) {
  return TextFormField(
    controller: controller,
    keyboardType: inputType,
    textInputAction: inputAction,
    obscureText: isShow,
    onChanged: onChange,
    textAlignVertical: TextAlignVertical.center,
    decoration: InputDecoration(
      errorText: errorText,
      hintText: placeholder,
      enabledBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.lightGreyColor, width: 1),
      ),
      focusedBorder: const UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.lightGreyColor),
      ),
      prefixIcon: Padding(
        padding: const EdgeInsetsDirectional.only(end: 20),
        child: Icon(
          Feather.lock,
          size: 20,
        ),
      ),
      suffixIcon: GestureDetector(
          onTap: clickShow,
          child: isShow
              ? Icon(
                  Feather.eye,
                  size: 20,
                )
              : Icon(
                  Feather.eye_off,
                  size: 20,
                )),
      prefixIconColor: AppColors.lightGreyColor,
      hintStyle: const TextStyle(fontSize: 16, color: AppColors.lightGreyColor),
    ),
    autovalidateMode: AutovalidateMode.onUserInteraction,
    validator: validator,
  );
}
