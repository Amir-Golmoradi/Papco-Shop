import 'package:animate_do/animate_do.dart';
import 'package:papco_shop/src/components/component.dart';
import 'package:papco_shop/src/components/my_common_icon.dart';
import 'package:papco_shop/src/config/config.dart';
import 'package:papco_shop/src/extension/theme_extension.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SplashScreen extends StatefulWidget {
  static SplashScreen builder(
    BuildContext context,
    GoRouterState state,
  ) =>
      const SplashScreen();
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    splashDuration(context);
  }

  @override
  Widget build(BuildContext context) {
    final primaryColor = context.colorScheme.primary;
    return Scaffold(
      backgroundColor: Colors.red[400],
      body: FadeInDown(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: MyCommonIcon(
                icon: Icons.shopping_bag,
                size: 90,
                color: primaryColor,
              ),
            ),
            const Gap(15),
            MyCommonTexts(
              //Todo:
              text: 'P A P C O S H O P',
              style: GoogleFonts.cabin(
                color: primaryColor,
                fontSize: 27,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Gap(40),
            MyCommonTexts(
              // Todo:
              text: "🐦 Made By Flutter",
              style: GoogleFonts.cabin(
                color: primaryColor,
                fontSize: 19.sp,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
