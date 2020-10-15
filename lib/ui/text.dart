import 'package:flutter/material.dart';
import 'theme.dart';

class Header1 extends StatelessWidget {
  final String text;

  Header1(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            fontSize: 25.0, fontWeight: FontWeight.w300, color: primaryColor));
  }
}

class Header2 extends StatelessWidget {
  final String text;

  Header2(this.text);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: TextStyle(
            fontSize: 20.0, fontWeight: FontWeight.w300, color: primaryColor));
  }
}