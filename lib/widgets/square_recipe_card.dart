import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:foodie_flutter_app/models/recipe_model.dart';
import 'package:foodie_flutter_app/screens/recipe_detail/recipe_detail_screen.dart';
import 'package:cached_network_image/cached_network_image.dart';

class SquareRecipeCard extends StatelessWidget {
  const SquareRecipeCard({
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
        margin: const EdgeInsets.only(right: 20),
        width: 250,
        child: Card(
          elevation: 5.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 3,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  child: Hero(
                    tag: 'recipeImage' + recipe['id'].toString(),
                    child: Image(
                      width: 250,
                      image: recipe['image'] == null
                          ? AssetImage(
                              'assets/images/pexels-surabhi-siddaiah-1051399.jpg')
                          : CachedNetworkImageProvider(
                              recipe['image'],
                            ),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    left: 16,
                  ),
                  child: Text(
                    recipe['title'],
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 12,
                    bottom: 10,
                  ),
                  child: Text(
                    recipe['summary'],
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
