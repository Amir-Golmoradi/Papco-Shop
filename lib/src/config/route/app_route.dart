import 'package:papco_shop/src/application/feature/views/home_features/pages/home_view.dart';
import 'package:papco_shop/src/application/feature/views/intro_feature/pages/intro_view.dart';
import 'package:papco_shop/src/application/feature/views/intro_feature/pages/splash_view.dart';
import 'package:papco_shop/src/application/feature/views/public_feature/pages/bottom_nav_bar.dart';
import 'package:papco_shop/src/config/route/routes.dart';
import 'package:go_router/go_router.dart';

final GoRouter appRoute = GoRouter(
  routes: [
    GoRoute(
      name: 'splash-screen',
      path: RouterLocation.splash,
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      name: 'bottom-nav-screen',
      path: RouterLocation.bottomNavbar,
      builder: (context, state) => const BottomNavigation(),
    ),
    GoRoute(
      name: 'intro-screen',
      path: RouterLocation.intro,
      builder: (context, state) => const IntroScreen(),
    ),
    GoRoute(
      name: 'home-screen',
      path: RouterLocation.home,
      builder: (context, state) => const HomeView(),
    ),
    // GoRoute(
    //   name: 'unknown-screen',
    //   path: RouterLocation.unknown,
    //   builder: (context, state) => const UnknownPage(),
    // ),
  ],
);
