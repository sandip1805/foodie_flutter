import 'package:flutter/material.dart';
import 'package:foodie_flutter_app/services/spoonacular_service.dart';
import 'dart:convert' as convert;
import 'package:foodie_flutter_app/widgets/circle_recipe_card.dart';
import 'package:foodie_flutter_app/widgets/square_recipe_card.dart';

class Home extends StatelessWidget {

  var _spoonacularService = SpoonacularService();

  @override
  Widget build(BuildContext context) {
    _spoonacularService.getRandomRecipes();
    var recipeDataFuture = DefaultAssetBundle.of(context).loadStructuredData('assets/data/recipe_data.json', (s) async {
      return convert.jsonDecode(s);
    });
    return SafeArea(
      child: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Container(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Recipe',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 36,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                SizedBox(
                  height: 250,
                  child: FutureBuilder(
                    builder: (context, recipeSnap) {
                      if(recipeSnap.hasData) {
                        return ListView.builder(
                          itemCount: recipeSnap.data.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            var recipe = recipeSnap.data[index];
                            return SquareRecipeCard(recipe: recipe);
                          },
                        );
                      } else if(recipeSnap.hasError) {
                        return Center(
                          child: Text('Something wrong happened while loading data'),
                        );
                      } else {
                        return Center(child: CircularProgressIndicator());
                      }
                    },
                    future: recipeDataFuture,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Trending now',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 350,
                  child: FutureBuilder(
                    future: recipeDataFuture,
                    builder: (context, recipeSnap) {
                      if(recipeSnap.hasData) {
                        return ListView.builder(
                          itemCount: recipeSnap.data.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            var recipe = recipeSnap.data[index];
                            return CircleRecipeCard(recipe: recipe);
                          },
                        );
                      } else if(recipeSnap.hasError) {
                        return Center(
                          child: Text('Something wrong happened while loading data'),
                        );
                      } else {
                        return Center(child: CircularProgressIndicator());
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}




