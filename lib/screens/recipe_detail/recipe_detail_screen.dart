import 'package:flutter/material.dart';
import 'package:foodie_flutter_app/screens/recipe_detail/components/body.dart';

class RecipeDetails extends StatelessWidget {
  static const ID = '/recipe_details';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}
