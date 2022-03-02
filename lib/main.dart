// ignore_for_file: await_only_futures, unnecessary_null_comparison, must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:for_test/routes/pages.dart';
import 'package:for_test/services/service_preference.dart';
import 'package:for_test/themes/lightTheme.dart';
import 'package:get/get.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PreferenceService.init();
  final _token = await PreferenceService.getToken();
  runApp(MyApp(
    token: _token,
  ));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key, required this.token}) : super(key: key);
  var token;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: token == null ? AppRoutes.INITIAL : AppRoutes.HOME,
      theme: lightTheme(context),
      getPages: AppRoutes.pages,
      defaultTransition: Transition.fadeIn,
    );
  }
}
