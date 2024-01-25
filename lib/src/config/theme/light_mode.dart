import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  appBarTheme: const AppBarTheme(
    elevation: 0,
  ),
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    background: Colors.grey.shade200,
    primary: Colors.grey.shade100,
    onPrimary: Colors.grey.shade400.withOpacity(0.7), // shimmer color
    inversePrimary: Colors.grey.shade800,
  ),
  textTheme: ThemeData.light().textTheme.apply(
        displayColor: Colors.black,
        bodyColor: Colors.grey.shade800,
      ),
);
