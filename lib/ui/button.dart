import 'package:flutter/material.dart';

import 'theme.dart';

class ButtonPrimary extends StatelessWidget {
  final String text;
  final VoidCallback function;

  ButtonPrimary(this.text, this.function);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 22, left: 22),
      width: 500,
      child: FlatButton(
        color: primaryColor,
        height: 45,
        textColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
        onPressed: function,
        child: Text(text,
            style: TextStyle(fontSize: 16.5, fontWeight: FontWeight.w400)),
      ),
    );
  }
}

class ButtonText extends StatelessWidget {
  final String text;
  final VoidCallback function;

  ButtonText(this.text, this.function);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 30, left: 30),
      width: 300,
      child: FlatButton(
        color: Color(0x00000000),
        height: 40,
        textColor: primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
          side: BorderSide(
              color: Color(0x00000000), //globals.backgroundColor,
              width: 1,
              style: BorderStyle.solid),
        ),
        onPressed: function,
        child: Text(text,
            style: TextStyle(
                fontSize: 16.0, fontWeight: FontWeight.w400)),
      ),
    );
  }
}

class ButtonBack extends StatelessWidget {
  final VoidCallback function;

  ButtonBack(this.function);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      color: primaryColor,
      onPressed: function,
    );
  }
}