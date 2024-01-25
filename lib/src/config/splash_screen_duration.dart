import 'dart:async';

import 'package:papco_shop/src/application/feature/views/intro_feature/preference/shared_preference.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void splashDuration(BuildContext context) {
  Timer(
    const Duration(milliseconds: 2500),
    () async {
      if (await SharedPrefrence().getIntroState()) {
        // ignore: use_build_context_synchronously
        context.go('/navbar');
      } else {
        // ignore: use_build_context_synchronously
        context.go('/intro');
      }
    },
  );
}
