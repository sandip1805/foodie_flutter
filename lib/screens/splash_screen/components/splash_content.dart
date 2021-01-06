import 'package:flutter/material.dart';
import 'package:foodie_flutter_app/constants.dart';
import 'package:foodie_flutter_app/size_config.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: getProportionateScreenHeight(8),
        ),
        Text(
          "Foodie",
          style: GoogleFonts.nunito(
            fontSize: getProportionateScreenWidth(42),
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text,
          style: GoogleFonts.nunito(fontSize: 16),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: getProportionateScreenHeight(8),
        ),
        Image.asset(
          image,
          height: getProportionateScreenWidth(300),
          width: getProportionateScreenWidth(300),
        ),
      ],
    );
  }
}
