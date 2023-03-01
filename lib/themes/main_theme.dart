import 'package:flutter/material.dart';
import 'package:reclamei_mobile/themes/theme_colors.dart';

ThemeData MainTheme = ThemeData(
  primarySwatch: ThemeColors.primaryColor,
  primaryColor: ThemeColors.primaryColor,
  brightness: Brightness.light,
  fontFamily: 'Quicksand',
  textTheme: TextTheme(
    bodyMedium: TextStyle(fontSize: 16),
    bodyLarge: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    titleMedium: TextStyle(fontSize: 20, fontWeight: FontWeight.normal)
  ),
);
