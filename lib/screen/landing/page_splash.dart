import 'package:flutter/material.dart';

import 'pageviewer.dart';
import 'package:proof_of_concept/ui/theme.dart';

//Splash page
class PageSplash extends StatefulWidget {
  @override
  _PageSplashState createState() => _PageSplashState();
}

class _PageSplashState extends State<PageSplash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              child: Image.asset('assets/img/branding/splash.png',
                  fit: BoxFit.cover,
                  height: double.infinity,
                  width: double.infinity,
                  alignment: Alignment.center),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  //SizedBox(height: 200),
                  Container(
                    margin: const EdgeInsets.only(right: 30, left: 30),
                    child: Image.asset(
                      'assets/img/branding/logo.png',
                    ),
                  ),
                  SizedBox(height: 100),
                  //Spacer(),
                  Container(
                    margin: const EdgeInsets.only(right: 30, left: 30),
                    width: 400,
                    child: FlatButton(
                      color: backgroundColor,
                      height: 45,
                      textColor: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      onPressed: () {
                        viewNextPage();
                        //Navigator.pop(context);
                      },
                      child: Text('Beginnen',
                          style: TextStyle(
                              fontSize: 16.5, fontWeight: FontWeight.w600)),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    margin: const EdgeInsets.only(right: 30, left: 30),
                    width: 300,
                    child: FlatButton(
                      color: Color(0x00000000),
                      height: 40,
                      textColor: backgroundColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                        side: BorderSide(
                            color: Color(0x00000000), //globals.backgroundColor,
                            width: 1,
                            style: BorderStyle.solid),
                      ),
                      onPressed: () {
                        viewPreviousPage();
                        //Navigator.pop(context);
                      },
                      child: Text('Inloggen met bestaand account',
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.w400)),
                    ),
                  ),
                  //SizedBox(height: 200),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
