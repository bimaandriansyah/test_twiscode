// ignore_for_file: constant_identifier_names

import 'package:for_test/views/create.dart';
import 'package:for_test/views/detail.dart';
import 'package:for_test/views/home.dart';
import 'package:for_test/views/login.dart';
import 'package:get/get.dart';

part 'routes.dart';

class AppPages {
  static const HOME = _Paths.HOME;
  static const LOGIN = _Paths.LOGIN;
  static const CREATE = _Paths.CREATE;
  static const DETAIL = _Paths.DETAIL;
}

abstract class _Paths {
  static const HOME = '/';
  static const LOGIN = '/login';
  static const CREATE = '/create';
  static const DETAIL = '/detail';
}
