import 'package:flutter/material.dart';

import 'ui/theme.dart';
import 'screen/landing/landing.dart';

void main() {
  runApp(MaterialApp(
    title: 'Proof of Concept',
    theme: ThemeData(
      primaryColor: primaryColor,
      backgroundColor: backgroundColor,
      textSelectionHandleColor: primaryColor,
      textSelectionColor: secondaryColor.withAlpha(80),
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    home: Landing(),
  ));
}
