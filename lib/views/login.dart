// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:for_test/constants/colors.dart';
import 'package:for_test/controllers/loginC.dart';
import 'package:for_test/widgets/buttonForm.dart';
import 'package:for_test/widgets/formInput.dart';
import 'package:for_test/widgets/formInputPassword.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final LoginController loginC = Get.put(LoginController());
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(24),
        child: Form(
          key: loginC.formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text("LOGIN",
                  style: GoogleFonts.lato(
                      color: AppColors.blackColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w600)),
              SizedBox(height: 24),
              formInput(
                controller: loginC.emailFC,
                placeholder: "Email",
                icon: Icon(
                  Feather.mail,
                  size: 20,
                ),
                inputType: TextInputType.emailAddress,
                inputAction: TextInputAction.next,
                validator: (value) {
                  if (value == null || value.isEmpty || value.trim() == '') {
                    return 'Email is empty';
                  }
                  if (!GetUtils.isEmail(value)) {
                    return 'Format email no valid';
                  }
                  return null;
                },
              ),
              SizedBox(height: 12),
              Obx(() => formInputPassword(
                    onChange: (_) {
                      loginC.checkValidate();
                    },
                    controller: loginC.passwordFC,
                    placeholder: "Password",
                    inputType: TextInputType.visiblePassword,
                    inputAction: TextInputAction.done,
                    clickShow: () {
                      loginC.showPassword();
                    },
                    isShow: loginC.onShow.value,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Password is empty';
                      }
                      return null;
                    },
                  )),
              SizedBox(height: 24),
              Obx(() => buttonForm(
                  onClick: () {
                    loginC.isValidate.value ? loginC.onSend() : null;
                  },
                  splash:
                      loginC.isValidate.value ? null : NoSplash.splashFactory,
                  text: "Login",
                  color: loginC.isValidate.value
                      ? AppColors.primaryColor
                      : AppColors.darkGreyColor)),
            ],
          ),
        ),
      ),
    );
  }
}
