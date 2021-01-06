import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:foodie_flutter_app/models/recipe_model.dart';
import 'package:foodie_flutter_app/screens/recipe_detail/recipe_detail_screen.dart';

class CircleRecipeCard extends StatelessWidget {
  const CircleRecipeCard({
    Key key,
    @required this.recipe,
  }) : super(key: key);

  final recipe;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<RecipeModel>().setRecipe(recipe);
        Navigator.pushNamed(context, RecipeDetails.ID);
      },
      child: Container(
        width: 200,
        margin: const EdgeInsets.only(right: 5),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Positioned(
              bottom: 50,
              child: Card(
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Container(
                  height: 200,
                  width: 180,
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: 15.0),
                      Text(
                        recipe['title'],
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black54,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(Icons.timelapse_rounded, color: Colors.grey),
                          Text(
                            recipe['readyInMinutes'].toString() + ' min',
                            style: TextStyle(
                              color: Colors.lightGreen,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            CircleAvatar(
              radius: 80.0,
              backgroundImage: recipe['image'] == null
                  ? AssetImage(
                      'assets/images/pexels-surabhi-siddaiah-1051399.jpg')
                  : CachedNetworkImageProvider(
                      recipe['image'],
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
