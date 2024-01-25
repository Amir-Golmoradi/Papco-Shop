import 'package:papco_shop/src/application/feature/views/home_features/model/home_model.dart';
import 'package:papco_shop/src/components/component.dart';
import 'package:papco_shop/src/config/config.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:url_launcher/url_launcher_string.dart';

class TwoBannersWidget extends StatelessWidget {
  const TwoBannersWidget({
    super.key,
    required this.homeModel,
  });
  final HomeModel homeModel;
  @override
  Widget build(BuildContext context) {
    return homeModel.twoBanners == null
        ? const SizedBox.shrink()
        : ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            scrollDirection: Axis.vertical,
            itemCount: homeModel.twoBanners!.length,
            itemBuilder: (ctx, i) {
              return GestureDetector(
                onTap: () async {
                  final url = homeModel.twoBanners![i].link;
                  if (await canLaunchUrlString(url!)) {
                    launchUrlString(url);
                  }
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: Adaptive.mm(6.sp),
                      vertical: Adaptive.mm(3.5.sp)),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(13.sp),
                    child: MyFadeInImage(
                      height: Responsive.isTablet(context)
                          ? Adaptive.h(19.sp)
                          : Adaptive.h(15.sp),
                      image: NetworkImage(
                        homeModel.twoBanners![i].image!,
                      ),
                      placeholder: const AssetImage(
                        'assets/images/logo.png',
                      ),
                      fit: BoxFit.cover,
                      placeholderFit: BoxFit.cover,
                    ),
                  ),
                ),
              );
            },
          );
  }
}
