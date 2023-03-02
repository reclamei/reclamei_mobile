import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reclamei_mobile/components/box_card.dart';
import 'package:reclamei_mobile/themes/theme_colors.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final Function onPress;
  const DefaultButton({super.key, required this.text, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: ElevatedButton(
        onPressed: () => onPress(),
        style: ElevatedButton.styleFrom(
          textStyle: const TextStyle(
              fontSize: 16,
              fontFamily: 'Quicksand',
              fontWeight: FontWeight.bold,
              color: Colors.white
          ),
          padding: EdgeInsets.all(15)
        ),
        child: Text(text),
      ),
    );
  }
}
