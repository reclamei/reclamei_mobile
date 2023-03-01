import 'package:flutter/material.dart';

class ThemeColors {
  static const MaterialColor primaryColor = MaterialColor(
    0xffbd00ff,
    <int, Color>{
      50: Color(0xffdb73ff),
      100: Color(0xffd766ff),
      200: Color(0xffd14dff),
      300: Color(0xffca33ff),
      400: Color(0xffc419ff),
      500: Color(0xffbd00ff),
      600: Color(0xffaa00e5),
      700: Color(0xff9700cc),
      800: Color(0xff8400b2),
      900: Color(0xff710099),
    },
  );
  static const List<Color> headerGradient = [
    Color.fromRGBO(103, 99, 234, 1.0),
    Color.fromRGBO(155, 105, 254, 1.0),
    Color.fromRGBO(195, 104, 255, 1.0),
  ];
  static const recentActivity = {
    'spent': Color.fromRGBO(255, 175, 29, 1.0),
    'income': Color.fromRGBO(191, 69, 198, 1.0),
  };
  static const division = Color.fromRGBO(166, 166, 166, 1.0);
  static const transparentCustom = Color.fromRGBO(255, 255, 255, 88.0);
  static const fontColor = Color.fromRGBO(51, 51, 51, 1.0);
  static const buttonColor = Color.fromRGBO(189, 0, 255, 1.0);
}
