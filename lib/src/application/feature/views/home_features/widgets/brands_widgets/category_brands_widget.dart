import 'package:papco_shop/src/components/component.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:url_launcher/url_launcher_string.dart';

import '../../model/models.dart';

class CategoryBrandsWidget extends StatelessWidget {
  const CategoryBrandsWidget({super.key, required this.homeModel});
  final HomeModel homeModel;
  @override
  Widget build(BuildContext context) {
    return homeModel.categoryBanner == null
        ? const SizedBox.shrink()
        : Container(
            padding: EdgeInsets.symmetric(horizontal: 12.sp),
            width: double.maxFinite,
            height: Adaptive.cm(12.sp),
            child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.3,
                mainAxisSpacing: 10.sp,
                crossAxisSpacing: 10.sp,
              ),
              itemCount: homeModel.categoryBanner!.length,
              itemBuilder: (context, i) => GestureDetector(
                onTap: () async {
                  final url = homeModel.categoryBanner![i].link;
                  if (await canLaunchUrlString(url!)) {
                    launchUrlString(url);
                  }
                },
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.sp),
                  child: MyFadeInImage(
                    image: NetworkImage(
                      homeModel.categoryBanner![i].image!,
                    ),
                    placeholder: const AssetImage(
                      'assets/images/logo.png',
                    ),
                    fit: BoxFit.cover,
                    placeholderFit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          );
  }
}
