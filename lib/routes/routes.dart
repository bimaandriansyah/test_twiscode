// ignore_for_file: constant_identifier_names, prefer_const_constructors

part of 'pages.dart';

class AppRoutes {
  static const INITIAL = AppPages.LOGIN;
  static const HOME = AppPages.HOME;

  static final pages = [
    GetPage(name: _Paths.HOME, page: () => HomePage()),
    GetPage(name: _Paths.LOGIN, page: () => LoginPage()),
    GetPage(name: _Paths.CREATE, page: () => CreatePage()),
    GetPage(name: _Paths.DETAIL, page: () => DetailPage()),
  ];
}
