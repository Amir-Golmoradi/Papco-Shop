import 'package:papco_shop/src/application/feature/views/home_features/model/home_model.dart';
import 'package:papco_shop/src/application/feature/views/home_features/widgets/widgets.dart';
import 'package:papco_shop/src/config/sizes/responsive.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AmazingWidget extends StatelessWidget {
  const AmazingWidget({Key? key, required this.homeModel}) : super(key: key);

  final HomeModel homeModel;

  @override
  Widget build(BuildContext context) {
    return homeModel.amazing == null
        ? const SizedBox.shrink()
        : Container(
            width: double.maxFinite,
            height: Responsive.isTablet(context)
                ? Adaptive.h(26.sp)
                : Adaptive.h(26.sp),
            decoration: ShapeDecoration(
              color: Colors.red[500]!,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  amazingBoxIMG(context),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: homeModel.amazing!.length,
                    itemBuilder: (context, index) {
                      final helper = homeModel.amazing![index];
                      return AmazingViewItems(
                        homeModel: homeModel,
                        helper: helper,
                      );
                    },
                  )
                ],
              ),
            ),
          );
  }
}
