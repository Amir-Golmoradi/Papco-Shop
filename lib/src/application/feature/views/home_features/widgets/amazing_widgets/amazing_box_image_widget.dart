import 'package:papco_shop/src/components/component.dart';
import 'package:papco_shop/src/config/sizes/responsive.dart';
import 'package:papco_shop/src/extension/extension.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Widget amazingBoxIMG(BuildContext context) => Container(
      margin: EdgeInsets.symmetric(
        horizontal: Adaptive.w(6.sp),
        vertical: Adaptive.h(9.sp),
      ),
      child: Column(
        children: [
          MyCommonTexts(
            text: 'پیشنهادات ویژه',
            style: TextStyle(
              fontFamily: 'bold',
              fontSize: Responsive.isTablet(context) ? 23.sp : 20.sp,
              color: context.colorScheme.primary,
            ),
          ),
          MyFadeInImage(
            width: Adaptive.w(26.sp),
            height: Adaptive.h(19.sp),
            placeholderFit: BoxFit.cover,
            placeholder: const AssetImage('assets/images/logo.png'),
            image: const AssetImage(
              'assets/images/amazing/amazing_box.png',
            ),
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
