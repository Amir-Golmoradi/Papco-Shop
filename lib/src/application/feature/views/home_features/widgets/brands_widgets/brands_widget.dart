import 'package:papco_shop/src/application/feature/views/home_features/model/home_model.dart';
import 'package:papco_shop/src/application/feature/views/home_features/widgets/widgets.dart';
import 'package:papco_shop/src/config/config.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class BrandsWidget extends StatelessWidget {
  const BrandsWidget({Key? key, required this.homeModel}) : super(key: key);
  final HomeModel homeModel;
  @override
  Widget build(BuildContext context) {
    return homeModel.brands == null
        ? const SizedBox.shrink()
        : Center(
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: Adaptive.h(0.2),
              ),
              width: Adaptive.w(41.sp),
              height: Adaptive.h(21.sp),
              child: GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: Responsive.isTablet(context) ? 5 : 4,
                  childAspectRatio: 1,
                  crossAxisSpacing: 36,
                  mainAxisSpacing: 15,
                ),
                itemCount: homeModel.brands!.length,
                itemBuilder: (context, index) =>
                    BrandsItemWidget(homeModel: homeModel, index: index),
              ),
            ),
          );
  }
}
