import 'package:carousel_slider/carousel_slider.dart';
import 'package:papco_shop/src/application/feature/views/home_features/model/home_model.dart';
import 'package:papco_shop/src/application/feature/views/home_features/states/cubits/home-cubit/home_cubit.dart';
import 'package:papco_shop/src/application/feature/views/home_features/widgets/widgets.dart';
import 'package:papco_shop/src/components/component.dart';
import 'package:papco_shop/src/config/config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:url_launcher/url_launcher_string.dart';

class CarouselSliderWidget extends StatelessWidget {
  const CarouselSliderWidget({super.key, required this.homeModel});
  final HomeModel homeModel;
  @override
  Widget build(BuildContext context) {
    return homeModel.sliders == null
        ? const SizedBox.shrink()
        : BlocBuilder<HomeCubit, int>(
            builder: (context, state) {
              return Column(
                children: [
                  CarouselSlider.builder(
                    itemCount: homeModel.sliders!.length,
                    itemBuilder: (context, index, realIndex) {
                      return GestureDetector(
                        onTap: () async {
                          final url = homeModel.sliders![index].link;
                          if (await canLaunchUrlString(url!)) {
                            await launchUrlString(
                              url,
                              mode: LaunchMode.externalApplication,
                            );
                          }
                        },
                        child: Container(
                          width: Adaptive.w(43.sp),
                          margin: EdgeInsets.all(10.sp),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(14),
                            child: MyFadeInImage(
                              image: NetworkImage(
                                homeModel.sliders![index].image!,
                              ),
                              placeholder: const AssetImage(
                                'assets/images/logo.png',
                              ),
                              fit: BoxFit.fill,
                              imageErrorBuilder: (
                                context,
                                error,
                                stackTrace,
                              ) =>
                                  Image.asset(
                                'assets/images/logo.png',
                              ),
                              placeholderErrorBuilder: (
                                context,
                                error,
                                stackTrace,
                              ) =>
                                  Container(),
                            ),
                          ),
                        ),
                      );
                    },
                    options: CarouselOptions(
                      height: Responsive.isTablet(context)
                          ? Adaptive.h(25)
                          : Adaptive.h(18.sp),
                      viewportFraction: 0.95,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: const Duration(seconds: 5),
                      scrollDirection: Axis.horizontal,
                      onPageChanged: (index, reason) {
                        BlocProvider.of<HomeCubit>(context)
                            .changeActiveIndex(index);
                      },
                    ),
                  ),
                  CarouselViewIndicator(homeModel: homeModel)
                ],
              );
            },
          );
  }
}
