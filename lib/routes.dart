import 'package:flutter/material.dart';
import 'package:foodie_flutter_app/screens/home/home_screen.dart';
import 'package:foodie_flutter_app/screens/recipe_detail/recipe_detail_screen.dart';
import 'package:foodie_flutter_app/screens/sign_in/sign_in_screen.dart';
import 'package:foodie_flutter_app/screens/sign_up/sign_up_screen.dart';
import 'package:foodie_flutter_app/screens/splash_screen/simple_splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SimpleSplashScreen.ID: (context) => SimpleSplashScreen(),
  SignInScreen.ID: (context) => SignInScreen(),
  SignUpScreen.ID: (context) => SignUpScreen(),
  HomeScreen.ID: (context) => HomeScreen(),
  RecipeDetails.ID: (context) => RecipeDetails(),
};
