import 'package:flutter/material.dart';

import 'package:proof_of_concept/ui/theme.dart';
import 'package:proof_of_concept/ui/card.dart';
import 'package:proof_of_concept/ui/button.dart';

import 'package:proof_of_concept/service/jobprovider.dart';

JobProvider jobProvider = new JobProvider();

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Image.asset('assets/img/branding/swiper_logo_primary.png', height: 30),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  JobCard(jobProvider.getCurrentJob()),
                ],
              ),
            ),
            Spacer(),
            ButtonPrimary('Volgende', _next),
            SizedBox(height: 25),
          ],
        ),
      ),
    );
  }

  void _next() {
    setState(() {
      jobProvider.getNextJob();
    });
  }
}
