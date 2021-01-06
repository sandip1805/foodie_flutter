import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:foodie_flutter_app/components/rounded_button.dart';
import 'package:foodie_flutter_app/constants.dart';
import 'package:foodie_flutter_app/screens/home/home_screen.dart';
import 'package:foodie_flutter_app/screens/sign_up/sign_up_screen.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();
  final _signInFormKey = GlobalKey<FormState>();
  String _email;
  String _password;
  bool _inAsyncCall = false;

  @override
  void dispose() {
    _inAsyncCall = false;
    super.dispose();
  }

  Future<String> signInWithGoogle() async {
    final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
    final GoogleSignInAuthentication googleSignInAuthentication =
        await googleSignInAccount.authentication;

    final AuthCredential authCredential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken);

    final UserCredential userCredential =
        await _auth.signInWithCredential(authCredential);
    final User user = userCredential.user;

    if (user != null) {
      assert(!user.isAnonymous);
      assert(await user.getIdToken() != null);

      final User currentUser = _auth.currentUser;
      assert(user.uid == currentUser.uid);

      print('signInWithGoogle succeeded: $user');

      return '$user';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: ModalProgressHUD(
        inAsyncCall: _inAsyncCall,
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: size.width * 0.08),
              child: Column(
                children: [
                  SizedBox(
                    height: size.height * 0.02,
                  ),
                  Text(
                    'Welcome Back',
                    style: TextStyle(
                      color: Colors.black87,
                      fontWeight: FontWeight.bold,
                      fontSize: 36,
                    ),
                  ),
                  Text(
                    'Sign In with you email and password or \n Continue with Social Channel',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(
                    height: size.height * 0.04,
                  ),
                  Form(
                    key: _signInFormKey,
                    child: Column(
                      children: [
                        TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: 'Enter your email',
                            labelText: 'Email',
                            suffixIcon: Icon(Icons.email),
                          ),
                          onSaved: (value) => _email = value,
                          onChanged: (value) => _email = value,
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please enter email address';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: size.height * 0.02,
                        ),
                        TextFormField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Enter your password',
                            labelText: 'Password',
                            suffixIcon: Icon(Icons.lock),
                          ),
                          onSaved: (value) => _password = value,
                          onChanged: (value) => _password = value,
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'Please enter password';
                            }
                            return null;
                          },
                        ),
                        SizedBox(
                          height: size.height * 0.08,
                        ),
                        RoundedButton(
                          width: size.width * 0.95,
                          height: size.height * 0.08,
                          onPressed: () async {
                            setState(() {
                              _inAsyncCall = true;
                            });
                            if (_signInFormKey.currentState.validate()) {
                              try {
                                var signInWithEmailAndPassword =
                                    await _auth.signInWithEmailAndPassword(
                                        email: _email, password: _password);
                                if (signInWithEmailAndPassword
                                    .user.email.isNotEmpty) {
                                  Navigator.pushNamed(context, HomeScreen.ID);
                                }
                              } catch (e) {
                                print(
                                    'Exception while signing using email and password $e');
                              }
                            } else {
                              print('Error while validate of form');
                            }
                            setState(() {
                              _inAsyncCall = false;
                            });
                          },
                          label: 'Log In',
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Divider(
                    color: Colors.black45,
                    thickness: 1.0,
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Container(
                    child: SignInButton(
                      Buttons.Google,
                      onPressed: () {
                        print('Google');
                        signInWithGoogle().then((result) {
                          if (result != null) {
                            Navigator.pushNamed(context, HomeScreen.ID);
                          }
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account yet? ',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      GestureDetector(
                        onTap: () => {
                          Navigator.pushNamed(context, SignUpScreen.ID),
                        },
                        child: Text(
                          ' Sign Up',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: kPrimaryColor,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
