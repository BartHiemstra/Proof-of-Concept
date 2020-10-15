import 'package:flutter/material.dart';

import 'pageviewer.dart';
import 'package:proof_of_concept/ui/theme.dart';
import 'package:proof_of_concept/ui/text.dart';
import 'package:proof_of_concept/ui/button.dart';
import 'package:proof_of_concept/ui/textfield.dart';

import 'package:proof_of_concept/model/registration.dart';

//Page for registering full name
class PageRegisterName extends StatefulWidget {
  @override
  _PageRegisterNameState createState() => _PageRegisterNameState();
}

class _PageRegisterNameState extends State<PageRegisterName> {
  var fieldFirstName = TextFieldStandard('Voornaam', TextInputType.name, TextInputAction.next);
  var fieldLastName = TextFieldStandard('Achternaam', TextInputType.name, TextInputAction.done);

  @override
  Widget build(BuildContext context) {
    fieldFirstName.setText(Registration.firstName);
    fieldLastName.setText(Registration.lastName);
    fieldFirstName.requestFocus();
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
                        child: Header1('Wat is je naam?      '),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                fieldFirstName,
                SizedBox(height: 8),
                fieldLastName,
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

  void _back() {
    Registration.firstName = fieldFirstName.getText();
    Registration.lastName = fieldLastName.getText();
    fieldFirstName.unFocus();
    fieldLastName.unFocus();
    viewPreviousPage();
  }

  void _continue() {
    Registration.firstName = fieldFirstName.getText();
    Registration.lastName = fieldLastName.getText();
    fieldFirstName.unFocus();
    fieldLastName.unFocus();
    viewNextPage();
  }

  Future<bool> _onBackPressed() {
    fieldFirstName.unFocus();
    fieldLastName.unFocus();
    viewPreviousPage();
  }
}
