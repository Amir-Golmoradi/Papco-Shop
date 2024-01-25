import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class MyIndicator extends StatelessWidget {
  const MyIndicator({
    super.key,
    required this.count,
    required this.dotWidth,
    required this.dotHegiht,
    required this.spacing,
    required this.controller,
  });

  final int count;
  final double dotWidth;
  final double dotHegiht;
  final double spacing;
  final PageController controller;
  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: controller,
      count: count,
      textDirection: TextDirection.rtl,
      effect: ExpandingDotsEffect(
        dotWidth: dotWidth,
        dotHeight: dotHegiht,
        spacing: spacing,
        activeDotColor: Colors.red[400]!,
      ),
    );
  }
}
