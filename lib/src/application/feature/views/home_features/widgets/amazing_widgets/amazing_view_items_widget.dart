import 'package:papco_shop/src/application/feature/views/home_features/model/amazing_model.dart';
import 'package:papco_shop/src/application/feature/views/home_features/model/home_model.dart';
import 'package:papco_shop/src/components/component.dart';
import 'package:papco_shop/src/config/config.dart';
import 'package:papco_shop/src/extension/extension.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../public_feature/functions/price_format.dart';

class AmazingViewItems extends StatelessWidget {
  const AmazingViewItems({
    Key? key,
    required this.helper,
    required this.homeModel,
  }) : super(key: key);

  final Amazing helper;
  final HomeModel homeModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.sp),
        ),
        color: Colors.white,
      ),
      padding: EdgeInsets.symmetric(horizontal: Adaptive.w(9.sp)),
      margin: EdgeInsets.symmetric(
        horizontal:
            Responsive.isTablet(context) ? Adaptive.w(4.sp) : Adaptive.w(4.sp),
        vertical:
            Responsive.isTablet(context) ? Adaptive.h(6.sp) : Adaptive.h(5.sp),
      ),
      width: Adaptive.w(28.sp),
      child: GestureDetector(
        onTap: () {
          //TODO must navigate to ProductDetailsScreen!
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.all(1.sp),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.sp),
                  child: MyFadeInImage(
                    width: Responsive.isTablet(context)
                        ? Adaptive.w(25)
                        : Adaptive.w(26.sp),
                    height: Responsive.isTablet(context)
                        ? Adaptive.h(25)
                        : Adaptive.h(19.sp),
                    image: NetworkImage(helper.image!),
                    placeholder: const AssetImage('assets/images/logo.png'),
                    fit: BoxFit.contain,
                    placeholderFit: BoxFit.contain,
                    imageErrorBuilder: (context, object, stacktrace) =>
                        Image.asset(
                      'assets/images/logo.png',
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: MyCommonTexts(
                text: helper.title!,
                style: TextStyle(
                  fontFamily: 'bold',
                  fontSize: Responsive.isTablet(context) ? 17.sp : 16.sp,
                  height: 0,
                  fontWeight: FontWeight.bold,
                ),
                maxLines: 2,
                textAlign: TextAlign.center,
              ),
            ),
            Gap(14.sp),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyCommonTexts(
                  text: getPriceFormat(helper.percentPrice.toString()),
                  style: TextStyle(
                    fontFamily: 'bold',
                    fontSize: Responsive.isTablet(context) ? 21.sp : 18.sp,
                  ),
                  maxLines: 1,
                  textAlign: TextAlign.end,
                ),
              ],
            ),
            Gap(7.sp),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: Adaptive.mm(13.sp),
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      color: Colors.red),
                  child: MyCommonTexts(
                    text: '${helper.percent!}%',
                    style: TextStyle(
                      color: context.colorScheme.primary,
                      fontFamily: 'normal',
                      fontSize: Responsive.isTablet(context) ? 19.sp : 17.sp,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                MyCommonTexts(
                  text: getPriceFormat(helper.defaultPrice!),
                  style: TextStyle(
                      color: Colors.grey[700],
                      fontFamily: 'normal',
                      fontSize: Responsive.isTablet(context) ? 21.sp : 17.sp,
                      decoration: TextDecoration.lineThrough),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
