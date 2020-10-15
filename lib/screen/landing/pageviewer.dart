import 'package:flutter/material.dart';

import 'page_splash.dart';
import 'page_login.dart';
import 'page_register_name.dart';
import 'page_register_birthday.dart';
import 'page_register_email.dart';
import 'page_authenticate.dart';

PageController _controller;

class View extends StatefulWidget {
  @override
  _ViewState createState() => _ViewState();
}

class _ViewState extends State<View> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: NeverScrollableScrollPhysics(), //Disable user manually scrolling
      controller: _controller,
      children: [
        PageLogin(),
        PageSplash(),
        PageRegisterName(),
        PageRegisterBirthday(),
        PageRegisterEmail(),
        PageAuthenticate(),
      ],
    );
  }
}

void init() {
  _controller = new PageController(initialPage: 1);
}

void viewNextPage() {
  _controller.animateToPage(
      _controller.page.toInt() + 1,
      duration: Duration(milliseconds: 220),
      curve: Curves.easeIn);
}

void viewPreviousPage() {
  _controller.animateToPage(
      _controller.page.toInt() - 1,
      duration: Duration(milliseconds: 220),
      curve: Curves.easeIn);
}
