import 'package:flutter/material.dart';
import 'package:foodie_flutter_app/screens/splash_screen/components/body.dart';
import 'package:foodie_flutter_app/size_config.dart';

class SimpleSplashScreen extends StatelessWidget {
  static const ID = '/splash';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
