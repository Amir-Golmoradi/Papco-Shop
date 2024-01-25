import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyLittleShimmer extends StatelessWidget {
  const MyLittleShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Adaptive.w(16),
      height: Adaptive.h(8),
      margin: EdgeInsets.all(
        Adaptive.mm(3),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
