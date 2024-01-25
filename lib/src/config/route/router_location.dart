import 'package:flutter/material.dart';

@immutable
class RouterLocation {
  const RouterLocation._();

  static String get splash => '/';
  static String get bottomNavbar => '/navbar';
  static String get home => '/home';
  static String get intro => '/intro';
  static String get unknown => '/unknown';
}
