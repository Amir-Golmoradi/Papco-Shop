import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class Languages {
  Languages._();
  static const globalLanguages = [
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
  ];
  static const persianLanguage = Locale('fa');
}
