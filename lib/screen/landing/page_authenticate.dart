import 'package:flutter/material.dart';

import 'pageviewer.dart';
import 'package:proof_of_concept/ui/theme.dart';
import 'package:proof_of_concept/ui/text.dart';
import 'package:proof_of_concept/ui/button.dart';
import 'package:proof_of_concept/ui/textfield.dart';

import 'package:proof_of_concept/screen/home/home.dart';

//Page for authenticating through verification code
class PageAuthenticate extends StatefulWidget {
  @override
  _PageAuthenticateState createState() => _PageAuthenticateState();
}

class _PageAuthenticateState extends State<PageAuthenticate> {
  var fieldCode = TextFieldStandard('Verificatiecode', TextInputType.number, TextInputAction.done);

  @override
  Widget build(BuildContext context) {
    fieldCode.requestFocus();
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
                        child: Column(
                          children: <Widget>[
                            SizedBox(height: 10),
                            Header1(
                                'We hebben je een verificatiecode gestuurd!'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                fieldCode,
                SizedBox(height: 10),
                ButtonText('Ik heb geen code ontvangen', _retry),
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

  void _retry() {
    //TODO: Re-send verification code.
  }

  void _back() {
    fieldCode.unFocus();
    viewPreviousPage();
  }

  void _continue() {
    fieldCode.unFocus();
    Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
  }

  Future<bool> _onBackPressed() {
    viewPreviousPage();
  }
}
