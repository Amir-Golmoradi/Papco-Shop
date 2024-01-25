import 'package:papco_shop/src/application/feature/views/home_features/model/home_model.dart';
import 'package:papco_shop/src/components/component.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TopBannerWidget extends StatelessWidget {
  const TopBannerWidget({super.key, required this.homeModel});
  final HomeModel homeModel;
  @override
  Widget build(BuildContext context) {
    return homeModel.topBanner == null
        ? const SizedBox.shrink()
        : Padding(
            padding: EdgeInsets.all(9.sp),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12.sp),
              child: MyFadeInImage(
                image: NetworkImage(homeModel.topBanner!.image!),
                placeholder: const AssetImage(
                  'assets/images/logo.png',
                ),
                width: double.infinity,
                height: Adaptive.h(9.sp),
                fit: BoxFit.cover,
                placeholderFit: BoxFit.fitHeight,
              ),
            ),
          );
  }
}
