import 'package:flutter/material.dart';
import 'package:foodie_flutter_app/screens/sign_in/components/body.dart';

class SignInScreen extends StatelessWidget {
  static const ID = '/sign_in';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Sign In',
          textAlign: TextAlign.center,
        ),
      ),
      body: Body(),
    );
  }
}
