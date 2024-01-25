import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:papco_shop/src/application/feature/views/intro_feature/model/intro_image.dart';
import 'package:papco_shop/src/application/feature/views/intro_feature/preference/shared_preference.dart';
import 'package:papco_shop/src/application/feature/views/intro_feature/states/cubits/intro-cubit/intro_cubit.dart';
import 'package:papco_shop/src/components/my_button.dart';
import 'package:papco_shop/src/components/my_indicator.dart';
import 'package:papco_shop/src/config/config.dart';
import 'package:papco_shop/src/extension/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class IntroPageView extends StatefulWidget {
  const IntroPageView({super.key});

  @override
  State<IntroPageView> createState() => _IntroPageViewState();
}

class _IntroPageViewState extends State<IntroPageView> {
  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController(initialPage: 0);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: Adaptive.w(32.sp),
            height: Responsive.isTablet(context)
                ? Adaptive.h(24.sp)
                : Adaptive.h(27.5.sp),
            color: Colors.transparent,
            child: Expanded(
              child: PageView.builder(
                controller: pageController,
                itemCount: introInfo.length,
                itemBuilder: (context, index) => introInfo[index],
                onPageChanged: (value) =>
                    context.read<IntroCubit>().indexHandler(value),
              ),
            ),
          ),
          MyIndicator(
            controller: pageController,
            count: introInfo.length,
            dotWidth: 10.sp,
            dotHegiht: 10.sp,
            spacing: 5,
          ),
          Gap(16.sp),
          MyButton(
            onPressed: () async {
              if (context.read<IntroCubit>().currentIndex <
                  introInfo.length - 1) {
                pageController.nextPage(
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeOut,
                );
              } else {
                SharedPrefrence().setIntroStatus();
                final connectionStatus =
                    await Connectivity().checkConnectivity();

                if (connectionStatus == ConnectivityResult.wifi ||
                    connectionStatus == ConnectivityResult.mobile ||
                    connectionStatus == ConnectivityResult.vpn) {
                  // ignore: use_build_context_synchronously
                  context.go('/navbar');
                }
              }
            },
            style: ElevatedButton.styleFrom(
              fixedSize: Size(Adaptive.w(28.sp), Adaptive.h(9.5.sp)),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(13),
              ),
              backgroundColor: Colors.red[400],
            ),
            child: Text(
              context.read<IntroCubit>().currentIndex < introInfo.length
                  ? 'برو بعدی'
                  : 'بزن بریم',
              style: TextStyle(
                fontSize: 21,
                fontFamily: 'bold',
                color: context.colorScheme.primary,
              ),
            ),
          )
        ],
      ),
    );
  }
}
