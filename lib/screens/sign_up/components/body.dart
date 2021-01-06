import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:foodie_flutter_app/components/rounded_button.dart';
import 'package:foodie_flutter_app/components/social_media_button.dart';
import 'package:foodie_flutter_app/constants.dart';
import 'package:foodie_flutter_app/screens/home/home_screen.dart';
import 'package:foodie_flutter_app/screens/sign_in/sign_in_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  FirebaseAuth auth = FirebaseAuth.instance;
  final _signUpFormKey = GlobalKey<FormState>();
  String _email;
  String _password;
  bool _inAsyncCall = false;

  @override
  void dispose() {
    _inAsyncCall = false;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: ModalProgressHUD(
        inAsyncCall: _inAsyncCall,
        child: SingleChildScrollView(
          child: Container(
            width: size.width,
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.08),
            child: Column(
              children: [
                buildHeaderContainer(size),
                SizedBox(
                  height: size.height * 0.04,
                ),
                Container(
                  child: Form(
                    key: _signUpFormKey,
                    child: Column(
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: 'Enter your email',
                            labelText: 'Email',
                            suffixIcon: Icon(Icons.email),
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please enter email address';
                            }
                            return null;
                          },
                          onChanged: (value) => _email = value,
                          onSaved: (value) => _email = value,
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Enter your password',
                            labelText: 'Password',
                            suffixIcon: Icon(Icons.lock),
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please enter password';
                            }
                            return null;
                          },
                          onChanged: (value) => _password = value,
                          onSaved: (value) => _password = value,
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Repeat your password',
                            labelText: 'Repeat Password',
                            suffixIcon: Icon(Icons.lock),
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please enter repeat password';
                            } else if (value != _password) {
                              return 'Confirm Password doesn\'t match';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: size.height * 0.05,
                        ),
                        RoundedButton(
                          width: size.width * 0.95,
                          height: size.height * 0.08,
                          onPressed: () async {
                            setState(() {
                              _inAsyncCall = true;
                            });
                            if (_signUpFormKey.currentState.validate()) {
                              _signUpFormKey.currentState.save();
                              try {
                                UserCredential userCredential =
                                    await auth.createUserWithEmailAndPassword(
                                  email: _email,
                                  password: _password,
                                );
                                if (userCredential != null) {
                                  Navigator.pushNamed(context, HomeScreen.ID);
                                }
                              } catch (e) {
                                print('Exception while creating user $e');
                              }
                            } else {
                              print('Field have error');
                            }
                            setState(() {
                              _inAsyncCall = false;
                            });
                          },
                          label: 'Sign Up',
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.04,
                ),
                buildFooterContainer(size, context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column buildFooterContainer(Size size, BuildContext context) {
    return Column(
      children: [
        Divider(
          color: Colors.black45,
          thickness: 1.0,
        ),
        SizedBox(
          height: size.height * 0.03,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SocialMediaButton(
              size: 42,
              color: Colors.red,
              icon: Icon(
                FontAwesome.google,
                color: Colors.white,
              ),
            ),
          ],
        ),
        SizedBox(
          height: size.height * 0.03,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Already have an account yet? ',
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            GestureDetector(
              onTap: () => {
                Navigator.pushNamed(context, SignInScreen.ID),
              },
              child: Text(
                ' Sign In',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor,
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: size.height * 0.03,
        ),
      ],
    );
  }

  Container buildHeaderContainer(Size size) {
    return Container(
      child: Column(
        children: [
          Text(
            'Create Account',
            style: TextStyle(
              color: Colors.black87,
              fontWeight: FontWeight.bold,
              fontSize: 36,
            ),
          ),
          Text(
            'Create Account with you email and password or \n Continue with Social Channel',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
