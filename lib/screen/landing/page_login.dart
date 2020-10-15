import 'package:flutter/material.dart';

import 'pageviewer.dart';
import 'package:proof_of_concept/ui/theme.dart';
import 'package:proof_of_concept/ui/text.dart';
import 'package:proof_of_concept/ui/button.dart';
import 'package:proof_of_concept/ui/textfield.dart';

import 'package:proof_of_concept/screen/home/home.dart';

//Page for logging in with existing account
class PageLogin extends StatefulWidget {
  @override
  _PageLoginState createState() => _PageLoginState();
}

class _PageLoginState extends State<PageLogin> {
  var fieldEmail = TextFieldIcon('E-mailadres', TextInputType.emailAddress, TextInputAction.next, Icons.email);
  var fieldPassword = TextFieldIcon('Wachtwoord', TextInputType.visiblePassword, TextInputAction.done, Icons.lock);

  @override
  Widget build(BuildContext context) {
    fieldEmail.requestFocus();
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: Scaffold(
        backgroundColor: backgroundColor,
        resizeToAvoidBottomPadding: true,
        body: SafeArea(
          child: Center(
            child: Column(
              children: <Widget>[
                SizedBox(height: 10),
                Row(
                  children: <Widget>[
                    ButtonBack(_back),
                    Expanded(
                      child: Align(
                        alignment: Alignment.center,
                        child: Header1('Welkom terug!       '),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 50),
                fieldEmail,
                SizedBox(height: 8),
                fieldPassword,
                Spacer(),
                ButtonPrimary('Aanmelden', _login),
                SizedBox(height: 25),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _back() {
    fieldEmail.unFocus();
    fieldPassword.unFocus();
    viewNextPage();
  }

  void _login() {
    fieldEmail.unFocus();
    fieldPassword.unFocus();
    Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
  }

  Future<bool> _onBackPressed() {
    fieldEmail.unFocus();
    fieldPassword.unFocus();
    viewNextPage();
  }
}
