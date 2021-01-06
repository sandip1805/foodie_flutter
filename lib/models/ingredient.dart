import 'package:foodie_flutter_app/models/how_much_type.dart';

class Ingredient {
  final String name;
  final String description;
  final String imagePath;
  final double howMuch;
  final HowMuchType howMuchType;

  Ingredient({
    this.name,
    this.description,
    this.imagePath,
    this.howMuch,
    this.howMuchType,
  });
}
