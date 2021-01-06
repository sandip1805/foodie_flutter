import 'package:flutter/material.dart';
import 'package:foodie_flutter_app/screens/sign_up/components/body.dart';

class SignUpScreen extends StatelessWidget {
  static const ID = '/sign_up';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Sign Up'),
      ),
      body: Body(),
    );
  }
}
