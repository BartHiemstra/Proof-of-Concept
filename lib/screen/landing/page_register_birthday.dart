import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'pageviewer.dart';
import 'package:proof_of_concept/ui/theme.dart';
import 'package:proof_of_concept/ui/text.dart';
import 'package:proof_of_concept/ui/button.dart';
import 'package:proof_of_concept/ui/textfield.dart';

import 'package:proof_of_concept/model/registration.dart';

//Page for registering birthday
class PageRegisterBirthday extends StatefulWidget {
  @override
  _PageRegisterBirthdayState createState() => _PageRegisterBirthdayState();
}

class _PageRegisterBirthdayState extends State<PageRegisterBirthday> {
  var fieldBirthDate = TextFieldStandard('Geboortedatum', TextInputType.datetime, TextInputAction.done);

  @override
  Widget build(BuildContext context) {
    if (Registration.birthDate != null)
      fieldBirthDate.setText(DateFormat('dd-mm-yyyy').format(Registration.birthDate));
    fieldBirthDate.requestFocus();
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
                        child: Header1('Wat is je geboortedatum?      '),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                fieldBirthDate,
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
    if (fieldBirthDate.getText != null && fieldBirthDate.getText() != "")
      Registration.birthDate =
          DateFormat("dd-mm-yyyy").parse(fieldBirthDate.getText());
    fieldBirthDate.unFocus();
    viewPreviousPage();
  }

  void _continue() {
    if (fieldBirthDate.getText != null && fieldBirthDate.getText() != "")
      Registration.birthDate =
          DateFormat("dd-mm-yyyy").parse(fieldBirthDate.getText());
    fieldBirthDate.unFocus();
    viewNextPage();
  }

  Future<bool> _onBackPressed() {
    fieldBirthDate.unFocus();
    viewPreviousPage();
  }
}
