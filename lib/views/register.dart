import 'package:flutter/material.dart';
import 'package:reclamei_mobile/components/custom_widgets/default_button.dart';
import 'package:reclamei_mobile/components/custom_widgets/default_entry_field.dart';
import 'package:reclamei_mobile/themes/theme_colors.dart';
import 'package:reclamei_mobile/views/home.dart';

class Register extends StatefulWidget {  @override
_RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<Register> {
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
          "Cadastro",
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
                    "Cadastre-se agora mesmo no Reclamei",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: ThemeColors.fontColor
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.only(top: 20, bottom: 70),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DefaultEntryField(title: "Nome completo", isPassword: false),
                          DefaultMaskEntryField(title: "Data de Nascimento", mask: "##/##/####"),
                          DefaultMaskEntryField(title: "CPF", mask: "###.###.###-##"),
                          DefaultMaskEntryField(title: "Telefone", mask: "(##) #####-####"),
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
                child: DefaultButton(text: "Cadastrar", onPress: () => _onPressRegister(context))
            )
          ],
        ),
      ),

    );
  }

  void _onPressRegister(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
  }

}
