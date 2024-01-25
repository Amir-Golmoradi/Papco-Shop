import 'package:papco_shop/src/components/my_little_shimmer.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../../extension/theme_extension.dart';

class ShimmerViewLoading extends StatelessWidget {
  const ShimmerViewLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Shimmer.fromColors(
        baseColor: context.colorScheme.onPrimary,
        highlightColor: context.colorScheme.background,
        child: Center(
          child: Column(
            children: [
              // top banner shimmer
              Container(
                margin: const EdgeInsets.only(top: 25),
                width: Adaptive.w(37.sp),
                height: Adaptive.h(9.sp),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              // brands shimmer
              Container(
                margin: const EdgeInsets.only(top: 15),
                width: Adaptive.w(37.sp),
                height: Adaptive.h(16.sp),
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              Gap(10.sp),
              const Wrap(
                children: [
                  MyLittleShimmer(),
                  MyLittleShimmer(),
                  MyLittleShimmer(),
                  MyLittleShimmer(),
                  MyLittleShimmer(),
                  MyLittleShimmer(),
                  MyLittleShimmer(),
                  MyLittleShimmer(),
                ],
              ),
              Gap(10.sp),
              // amazing shimmer
              Container(
                width: Adaptive.w(37.sp),
                height: Adaptive.h(20.sp),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              Gap(14.sp),

              Container(
                width: Adaptive.w(39.sp),
                height: Adaptive.h(11.2.sp),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              Gap(13.sp),
              Container(
                width: Adaptive.w(39.sp),
                height: Adaptive.h(11.2.sp),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
