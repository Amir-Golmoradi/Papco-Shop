import 'package:papco_shop/src/components/my_texts.dart';
import 'package:papco_shop/src/config/sizes/my_custom_size.dart';
import 'package:papco_shop/src/config/sizes/responsive.dart';
import 'package:papco_shop/src/extension/extension.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class UnknownPage extends StatelessWidget {
  const UnknownPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/dontknow.png',
              width: Responsive.isTablet(context)
                  ? Adaptive.w(35.sp)
                  : Adaptive.w(32.sp),
              height: Responsive.isTablet(context)
                  ? Adaptive.h(16.sp)
                  : Adaptive.h(14.sp),
              errorBuilder: (context, error, stackTrace) => Container(
                width: Adaptive.w(23.sp),
              ),
            ),
            Gapped.md,
            MyCommonTexts(
              text: 'صفحه مورد نظر پیدا نشد!!',
              style: TextStyle(
                fontFamily: 'bold',
                fontSize: Responsive.isTablet(context) ? 23.sp : 20.sp,
                color: context.colorScheme.primary,
              ),
            ),
            Gapped.md,
            ElevatedButton(
              onPressed: () {},
              child: MyCommonTexts(
                text: 'تلاش مجدد',
                style: TextStyle(
                  color: context.colorScheme.primary,
                  fontSize: Responsive.isTablet(context) ? 18.sp : 16.sp,
                  fontFamily: 'normal',
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
