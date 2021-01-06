
import 'package:flutter/cupertino.dart';

class RecipeModel with ChangeNotifier {
  var _recipe;

  get recipe => _recipe;

  void setRecipe(var recipe) {
    _recipe = recipe;
  }
}