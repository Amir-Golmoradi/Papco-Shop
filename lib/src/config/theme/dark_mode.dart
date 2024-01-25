import 'package:papco_shop/src/config/theme/colors.dart';
import 'package:flutter/material.dart';

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.transparent,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.grey[200]!),
  ),
  colorScheme: ColorScheme.dark(
    background: Colors.grey[400]!,
    onBackground: Colors.grey[500]!,
    primary: Colors.grey[900]!, // Task Cards
    onPrimary: Colors.grey[300]!, // On Task Cards
    secondary: const Color(0xFF2B2B2B), // Floating Button
    onSecondary: DarkMode.darkJet,
    surface: DarkMode.removeColor,
  ),
);
