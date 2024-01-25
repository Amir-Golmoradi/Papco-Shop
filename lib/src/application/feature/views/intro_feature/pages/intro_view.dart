import 'package:papco_shop/src/application/feature/views/intro_feature/widgets/intro_screen_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class IntroScreen extends StatefulWidget {
  static IntroScreen builder(
    BuildContext context,
    GoRouterState state,
  ) =>
      const IntroScreen();
  const IntroScreen({Key? key}) : super(key: key);

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ClipPath(
            clipper: WaveClipperOne(),
            child: Container(
              height: Adaptive.h(21),
              color: Colors.red[400],
            ),
          ),
          const IntroPageView()
        ],
      ),
    );
  }
}
