import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class DefaultEntryField extends StatelessWidget {
  final String title;
  final bool isPassword;
  const DefaultEntryField({super.key, required this.title, required this.isPassword});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 10),
      child: TextField(
        obscureText: isPassword,
        decoration: InputDecoration(
          labelText: title,
        ),
        style: TextStyle(
            fontSize: 16,
        ),
      )
    );
  }
}

class DefaultMaskEntryField extends StatelessWidget {
  final String title;
  final String mask;
  const DefaultMaskEntryField({super.key, required this.title, required this.mask});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(bottom: 10),
        child: TextField(
          decoration: InputDecoration(
            labelText: title,
          ),
          style: TextStyle(
            fontSize: 16,
          ),
          inputFormatters: [ MaskTextInputFormatter(mask: mask) ],
        )
    );
  }
}
