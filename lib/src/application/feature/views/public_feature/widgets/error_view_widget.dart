import 'package:animate_do/animate_do.dart';
import 'package:papco_shop/src/config/config.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ErrorViewWidget extends StatelessWidget {
  const ErrorViewWidget(
      {super.key, required this.errorMsg, required this.function});

  final String errorMsg;
  final Function function;

  @override
  Widget build(BuildContext context) {
    return FadeInDown(
      child: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/dontknow.png',
            width: Adaptive.w(45),
          ),
          SizedBox(height: 7.5.sp),
          Text(
            errorMsg,
            style: TextStyle(
              fontFamily: 'bold',
              fontSize: 18.sp,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 15.sp),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize: Size(
                Adaptive.w(40),
                Responsive.isTablet(context) ? 60 : 45,
              ),
            ),
            onPressed: () => function(),
            child: Text(
              'تلاش مجدد',
              style: TextStyle(
                fontFamily: 'bold',
                fontSize: 16.sp,
              ),
            ),
          )
        ],
      )),
    );
  }
}
