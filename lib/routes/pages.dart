// ignore_for_file: constant_identifier_names

import 'package:for_test/views/cart.dart';
import 'package:for_test/views/home.dart';
import 'package:get/get.dart';

part 'routes.dart';

class AppPages {
  static const HOME = _Paths.HOME;
  static const CART = _Paths.CART;
}

abstract class _Paths {
  static const HOME = '/';
  static const CART = '/cart';
}
