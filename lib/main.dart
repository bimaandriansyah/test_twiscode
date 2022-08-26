// ignore_for_file: await_only_futures, unnecessary_null_comparison, must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:for_test/routes/pages.dart';
import 'package:for_test/themes/lightTheme.dart';
import 'package:get/get.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.HOME,
      theme: lightTheme(context),
      getPages: AppRoutes.pages,
      defaultTransition: Transition.fadeIn,
    );
  }
}
