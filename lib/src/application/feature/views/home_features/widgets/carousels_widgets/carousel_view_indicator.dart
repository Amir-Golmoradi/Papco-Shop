import 'package:papco_shop/src/application/feature/views/home_features/model/home_model.dart';
import 'package:papco_shop/src/config/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../states/cubits/home-cubit/home_cubit.dart';

class CarouselViewIndicator extends StatelessWidget {
  const CarouselViewIndicator({super.key, required this.homeModel});

  final HomeModel homeModel;
  @override
  Widget build(BuildContext context) {
    return homeModel.sliders == null
        ? const SizedBox.shrink()
        : BlocBuilder<HomeCubit, int>(
            builder: (context, state) {
              return AnimatedSmoothIndicator(
                activeIndex: BlocProvider.of<HomeCubit>(context).activeIndex,
                count: homeModel.sliders!.length,
                effect: ExpandingDotsEffect(
                  dotHeight: Responsive.isTablet(context)
                      ? Adaptive.mm(9.sp)
                      : Adaptive.mm(6.sp),
                  dotWidth: Responsive.isTablet(context)
                      ? Adaptive.mm(9.sp)
                      : Adaptive.mm(6.sp),
                  spacing: 3,
                  activeDotColor: Colors.red[500]!,
                ),
              );
            },
          );
  }
}
