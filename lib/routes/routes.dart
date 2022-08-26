// ignore_for_file: constant_identifier_names, prefer_const_constructors

part of 'pages.dart';

class AppRoutes {
  static const HOME = AppPages.HOME;

  static final pages = [
    GetPage(name: _Paths.HOME, page: () => HomePage()),
    GetPage(name: _Paths.CART, page: () => CartPage()),
  ];
}
