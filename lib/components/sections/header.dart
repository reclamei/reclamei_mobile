import 'package:flutter/material.dart';
import 'package:reclamei_mobile/themes/theme_colors.dart';

class Header extends StatelessWidget {
  final String userName = "Lívia";
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(top: 20, bottom: 20, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  "Olá ${userName}",
                  textAlign: TextAlign.start,
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                "Registre aqui as suas reclamações quanto a infraestrutura pública observada e nos ajude a fazer desta, uma região ainda melhor.",
                textAlign: TextAlign.start,
                style: TextStyle(
                    fontSize: 16,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
