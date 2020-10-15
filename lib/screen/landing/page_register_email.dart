import 'package:flutter/material.dart';

import 'pageviewer.dart';
import 'package:proof_of_concept/ui/theme.dart';
import 'package:proof_of_concept/ui/text.dart';
import 'package:proof_of_concept/ui/button.dart';
import 'package:proof_of_concept/ui/textfield.dart';

import 'package:proof_of_concept/model/registration.dart';

//Page for registering email-address
class PageRegisterEmail extends StatefulWidget {
  @override
  _PageRegisterEmailState createState() => _PageRegisterEmailState();
}

class _PageRegisterEmailState extends State<PageRegisterEmail> {
  var fieldEmail = TextFieldStandard('E-mailadres', TextInputType.emailAddress, TextInputAction.done);

  @override
  Widget build(BuildContext context) {
    fieldEmail.setText(Registration.emailAddress);
    fieldEmail.requestFocus();
    return WillPopScope(
      onWillPop: _onBackPressed,
      child: new Scaffold(
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
                        child: Header1('Wat is je e-mailadres?      '),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                fieldEmail,
                SizedBox(height: 10),
                ButtonText('Registreren via telefoonnummer', _switch),
                Spacer(),
                ButtonPrimary('Verder', _continue),
                SizedBox(height: 25),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _switch() {
    //TODO: Switch to authentication through SMS.
  }

  void _back() {
    Registration.emailAddress = fieldEmail.getText();
    fieldEmail.unFocus();
    viewPreviousPage();
  }

  void _continue() {
    Registration.emailAddress = fieldEmail.getText();
    fieldEmail.unFocus();
    viewNextPage();
  }

  Future<bool> _onBackPressed() {
    fieldEmail.unFocus();
    viewPreviousPage();
  }
}
