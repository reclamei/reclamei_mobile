import 'package:flutter/material.dart';
import 'package:reclamei_mobile/themes/main_theme.dart';
import 'package:reclamei_mobile/views/first_login.dart';
import 'package:reclamei_mobile/views/home.dart';

void main() {
  runApp(const ReclameiApp());
}

class ReclameiApp extends StatelessWidget {
  const ReclameiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reclamei',
      theme: MainTheme,
      home: FirstLogin(),
      // home: Home(),
    );
  }
}
