import 'package:papco_shop/src/application/feature/views/home_features/pages/home_view.dart';
import 'package:flutter/material.dart';

List<BottomNavigationBarItem> navItem = const [
  BottomNavigationBarItem(
      icon: Icon(Icons.home_filled),
      label: "صفحه اصلی",
      activeIcon: Icon(Icons.home)),
  BottomNavigationBarItem(
      icon: Icon(Icons.category_rounded), label: "دسته بندی ها"),
  BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "سبد خرید"),
  BottomNavigationBarItem(icon: Icon(Icons.settings), label: "پروفایل"),
];
final List<Widget> bodies = [
  const HomeView(),
  Container(),
  Container(),
  Container(),
  Container(),
];
