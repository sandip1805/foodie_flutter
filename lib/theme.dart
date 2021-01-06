import 'package:flutter/material.dart';
import 'package:foodie_flutter_app/constants.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData theme() {
  return ThemeData(
    fontFamily: GoogleFonts.nunito().fontFamily,
    appBarTheme: appBarTheme(),
    textTheme: textTheme(),
    scaffoldBackgroundColor: Colors.white,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
}

TextTheme textTheme() {
  return TextTheme(
    bodyText1: TextStyle(
      color: kTextColor
    ),
    bodyText2: TextStyle(
      color: kTextColor
    )
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    elevation: 0,
    color: Colors.white,
    brightness: Brightness.light,
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
    textTheme: TextTheme(
      headline6: TextStyle(
        color: Colors.black54,
        fontSize: 20,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}
