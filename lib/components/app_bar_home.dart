import 'package:flutter/material.dart';
import 'package:reclamei_mobile/components/custom_widgets/default_button.dart';
import 'package:reclamei_mobile/components/custom_widgets/default_entry_field.dart';
import 'package:reclamei_mobile/themes/theme_colors.dart';
import 'package:reclamei_mobile/views/first_login.dart';
import 'package:reclamei_mobile/views/home.dart';

class CustomAppBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(color: ThemeColors.fontColor),
      actionsIconTheme: IconThemeData(color: ThemeColors.fontColor),
      actions: [
        IconButton(icon: Icon(Icons.search), onPressed: (){}),
        IconButton(icon: Icon(Icons.account_circle), onPressed: (){}),
        IconButton(icon: Icon(Icons.help), onPressed: (){}),
        IconButton(icon: Icon(Icons.logout_rounded), onPressed: () => _logout(context),),
      ],
    );
  }

  void _logout(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => FirstLogin()));
  }

}
