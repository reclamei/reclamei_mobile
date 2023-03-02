import 'package:flutter/material.dart';
import 'package:reclamei_mobile/components/custom_widgets/default_button.dart';
import 'package:reclamei_mobile/themes/theme_colors.dart';
import 'package:reclamei_mobile/views/login.dart';
import 'package:reclamei_mobile/views/register.dart';

class FirstLogin extends StatelessWidget {
  final _backgroundImage = Image.asset('assets/images/first_login_background.jpg', fit: BoxFit.cover);

  final _scaffoldKey = GlobalKey<ScaffoldState>();
  final _containerCenterWidth = 350.0;
  final _containerCenterHeight = 410.0;
  final _defaultBorderRadius = 8.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Stack(
        children: [
          SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: _backgroundImage
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  width: _containerCenterWidth,
                  height: _containerCenterHeight,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(_defaultBorderRadius),
                    color: ThemeColors.transparentCustom,
                  ),
                  child: ListView(
                    padding: EdgeInsets.only(top: 75, bottom: 70, left: 20, right: 20),
                    children: [
                      Text(
                        "Bem-vinde ao Reclamei",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: ThemeColors.fontColor
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 30),
                        child: Text(
                          "Entre com sua conta ou crie uma nova para acessar o conteúdo",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 16,
                              color: ThemeColors.fontColor
                          ),
                        ),
                      ),
                      DefaultButton(text: "Acessar conta", onPress: () => _onPressLogin(context)),
                      DefaultButton(text: "Criar nova conta", onPress: () => _onPressRegister(context)),
                    ],
                  ),
                )
              )
            ],
            ),
        ],
      )
    );
  }

  void _onPressLogin(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
  }

  void _onPressRegister(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Register()));
  }

}
