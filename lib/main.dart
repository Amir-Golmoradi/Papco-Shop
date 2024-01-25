import 'dart:io';

import 'package:papco_shop/src/application/feature/views/home_features/repository/home_repository.dart';
import 'package:papco_shop/src/application/feature/views/home_features/states/blocs/home-bloc/home_bloc.dart';
import 'package:papco_shop/src/application/feature/views/home_features/states/cubits/home-cubit/home_cubit.dart';
import 'package:papco_shop/src/application/feature/views/intro_feature/states/cubits/intro-cubit/intro_cubit.dart';
import 'package:papco_shop/src/application/feature/views/public_feature/states/cubits/navbar-cubit/bottom_nav_cubit.dart';
import 'package:papco_shop/src/config/internet_access.dart';
import 'package:papco_shop/src/config/locale/persian_language.dart';
import 'package:papco_shop/src/config/route/routes.dart';
import 'package:papco_shop/src/config/theme/light_mode.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(
    ResponsiveSizer(
      maxMobileWidth: 600,
      maxTabletWidth: 900,
      builder: (context, orientation, screenType) => MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => IntroCubit()),
          BlocProvider(create: (context) => BottomNavCubit()),
          BlocProvider(
            create: (context) => HomeBloc(HomeRepository()),
          ),
          BlocProvider(
            create: (context) => HomeCubit(),
          ),
        ],
        child: MaterialApp.router(
          localizationsDelegates: Languages.globalLanguages,
          supportedLocales: const [
            Languages.persianLanguage,
          ],
          theme: lightMode,
          routerConfig: appRoute,
          debugShowCheckedModeBanner: false,
        ),
      ),
    ),
  );
}
