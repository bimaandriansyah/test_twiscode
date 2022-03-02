// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:for_test/constants/colors.dart';
import 'package:for_test/controllers/createC.dart';
import 'package:for_test/widgets/formInput.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CreatePage extends StatelessWidget {
  final CreateController createC = Get.put(CreateController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Center(
              child: GestureDetector(
                onTap: () => createC.onSend(),
                child: Text("SAVE",
                    style: GoogleFonts.lato(
                        color: AppColors.whiteColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w600)),
              ),
            ),
          )
        ],
        leading: GestureDetector(
            onTap: () {
              Get.back();
            },
            child: Icon(Feather.x, color: AppColors.whiteColor)),
        backgroundColor: AppColors.primaryColor,
        centerTitle: false,
        title: Text("Create New Employee",
            style: GoogleFonts.lato(
                color: AppColors.whiteColor,
                fontSize: 18,
                fontWeight: FontWeight.w600)),
      ),
      body: Container(
        margin: EdgeInsets.all(24),
        child: Center(
          child: Form(
            key: createC.formKey,
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                SizedBox(height: 24),
                GestureDetector(
                  onTap: () => createC.onGetImage(),
                  child: SizedBox(
                    height: 100,
                    width: 100,
                    child: Obx(() => createC.selectedImagePath.value == ''
                        ? CircleAvatar(
                            backgroundColor: AppColors.primaryColor,
                            child: Icon(
                              Feather.camera,
                              color: AppColors.whiteColor,
                            ),
                          )
                        : CircleAvatar(
                            backgroundColor: AppColors.primaryColor,
                            backgroundImage: FileImage(
                                File(createC.selectedImagePath.value)),
                          )),
                  ),
                ),
                SizedBox(height: 24),
                formInput(
                  controller: createC.firstNameFC,
                  placeholder: "First Name",
                  icon: Icon(
                    Feather.user,
                    size: 20,
                  ),
                  inputType: TextInputType.text,
                  inputAction: TextInputAction.next,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'First Name is Empty';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 12),
                formInput(
                  controller: createC.lastNameFC,
                  placeholder: "Last Name",
                  icon: Icon(
                    Feather.user,
                    size: 20,
                  ),
                  inputType: TextInputType.text,
                  inputAction: TextInputAction.next,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Last Name is Empty';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 12),
                formInput(
                  controller: createC.emailFC,
                  placeholder: "Email",
                  icon: Icon(
                    Feather.mail,
                    size: 20,
                  ),
                  inputType: TextInputType.emailAddress,
                  inputAction: TextInputAction.done,
                  validator: (value) {
                    if (value == null || value.isEmpty || value.trim() == '') {
                      return 'Email is empty';
                    }
                    if (!GetUtils.isEmail(value)) {
                      return 'Format email not valid';
                    }
                    return null;
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
