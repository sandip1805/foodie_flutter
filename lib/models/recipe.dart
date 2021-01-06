import 'package:foodie_flutter_app/models/course.dart';
import 'package:foodie_flutter_app/models/cuisine.dart';
import 'package:foodie_flutter_app/models/ingredient.dart';
import 'package:foodie_flutter_app/models/step.dart';

class Recipe {
  final String name;
  final String description;
  final List<Cuisine> cuisine;
  final Duration preparationTime;
  final Duration cookingTime;
  final int servings;
  final Course course;
  final List<Ingredient> ingredients;
  final List<Step> preparationSteps;
  final List<Step> cookingSteps;
  final List<String> imagePaths;
  final List<String> videoPaths;

  Recipe({
    this.imagePaths,
    this.videoPaths,
    this.cuisine,
    this.cookingTime,
    this.servings,
    this.cookingSteps,
    this.name,
    this.description,
    this.preparationTime,
    this.course,
    this.ingredients,
    this.preparationSteps,
  });
}
