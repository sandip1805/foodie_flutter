import 'package:flutter/material.dart';
import 'package:foodie_flutter_app/models/recipe_model.dart';
import 'package:foodie_flutter_app/screens/splash_screen/simple_splash_screen.dart';
import 'package:foodie_flutter_app/routes.dart';
import 'package:foodie_flutter_app/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => RecipeModel()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Foodie Flutter App',
      theme: theme(),
      initialRoute: SimpleSplashScreen.ID,
      routes: routes,
    );
  }
}
