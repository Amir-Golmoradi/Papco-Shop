import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Responsive extends StatelessWidget {
  const Responsive(
      {super.key, required this.mobile, this.tablet, this.desktop});

  final Widget mobile;
  final Widget? tablet;
  final Widget? desktop;

  static bool isMobile(BuildContext context) => Device.width < 600;
  static bool isTablet(BuildContext context) =>
      Device.width < 1100 && Device.width >= 600;
  static bool isDesktop(BuildContext context) => Device.width >= 1100;
  @override
  Widget build(BuildContext context) {
    if (Device.width >= 1100 && desktop != null) {
      return desktop!;
    } else if (Device.width >= 600 && tablet != null) {
      return tablet!;
    } else {
      return mobile;
    }
  }
}
