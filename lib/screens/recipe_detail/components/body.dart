import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:foodie_flutter_app/models/recipe_model.dart';
import 'package:provider/provider.dart';
import 'package:foodie_flutter_app/services/spoonacular_service.dart';

class Body extends StatelessWidget {
  final SpoonacularService _spoonacularService = SpoonacularService();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    var recipe = context.watch<RecipeModel>().recipe;
    _spoonacularService.getRecipeDetails(recipe['id']);
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: size.width,
              height: size.height * 0.3,
              child: Hero(
                tag: 'recipeImage' + recipe['id'].toString(),
                child: Image(
                  image: CachedNetworkImageProvider(
                    recipe['image'],
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    recipe['title'],
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Cooking Time',
                              style: TextStyle(
                                color: Colors.lightGreen,
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              recipe['readyInMinutes'].toString() + ' min',
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Servings',
                              style: TextStyle(
                                color: Colors.lightGreen,
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              recipe['servings'].toString(),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Ingredients',
                              style: TextStyle(
                                color: Colors.lightGreen,
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              recipe['extendedIngredients'].length.toString(),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Html(
                    data: recipe['summary'],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Ingredients',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Container(
                    child: Column(
                      children: List.generate(
                        recipe['extendedIngredients'].length,
                        (index) {
                          var ingredient = recipe['extendedIngredients'][index];
                          return ListTile(
                            contentPadding: const EdgeInsets.only(
                              left: 8.0,
                              right: 8.0,
                              bottom: 5.0,
                            ),
                            leading: Container(
                              width: 75,
                              height: 50,
                              child: Image(
                                image: CachedNetworkImageProvider(
                                  'https://spoonacular.com/cdn/ingredients_100x100/${ingredient['image']}',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            title: Text(
                              ingredient['name'],
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            subtitle: Text(
                              ingredient['original'],
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                            trailing: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(ingredient['amount'].toString()),
                                Text(
                                  ingredient['unit'],
                                  style: TextStyle(
                                    color: Colors.lightGreen,
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Cooking Steps',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.black54,
                        ),
                      ),
                      Text(
                          recipe['analyzedInstructions'][0]['steps']
                                  .length
                                  .toString() +
                              ' steps',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 14,
                          ))
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                      recipe['analyzedInstructions'][0]['steps'].length,
                      (index) {
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Step ' + (index + 1).toString(),
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                ),
                              ),
                              Text(recipe['analyzedInstructions'][0]['steps']
                                  [index]['step']),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
