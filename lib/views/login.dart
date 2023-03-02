import 'package:flutter/material.dart';
import 'package:reclamei_mobile/components/custom_widgets/default_button.dart';
import 'package:reclamei_mobile/components/custom_widgets/default_entry_field.dart';
import 'package:reclamei_mobile/themes/theme_colors.dart';
import 'package:reclamei_mobile/views/home.dart';

class Login extends StatefulWidget {  @override
_LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<Login> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(
              color: ThemeColors.fontColor
          ),
          title: const Text(
            "Login",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: ThemeColors.fontColor
            ),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 20, bottom: 40, left: 20, right: 20),
          child: Column(
            children: [
              Expanded(
                child: ListView(
                  children: [
                    Text(
                      "Entre com o seu e-mail e senha para acessar sua conta",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: ThemeColors.fontColor
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 75, bottom: 70),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            DefaultEntryField(title: "E-mail", isPassword: false),
                            DefaultEntryField(title: "Senha", isPassword: true)
                          ],
                        )
                    ),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: DefaultButton(text: "Entrar", onPress: () => _onPressEntrar(context))
              )
            ],
          ),
        ),

    );
  }

  void _onPressEntrar(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
  }

}
