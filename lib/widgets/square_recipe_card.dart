import 'dart:math';

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
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          buildLeftColumn(size),
          buildRightColumn(context, size),
        ],
      ),
    );
  }

  GestureDetector buildRightColumn(BuildContext context, Size size) {
    return GestureDetector(
      onTap: () {
        context.read<RecipeModel>().setRecipe(recipe);
        Navigator.pushNamed(context, RecipeDetails.ID);
      },
      child: Container(
        width: size.width * 0.65,
        height: 200,
        child: Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Hero(
                  tag: 'recipeImage' + recipe['id'].toString(),
                  child: Image(
                    width: size.width * 0.65,
                    height: 200,
                    image: recipe['image'] == null
                        ? AssetImage(
                            'assets/images/pexels-surabhi-siddaiah-1051399.jpg')
                        : CachedNetworkImageProvider(
                            recipe['image'],
                          ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                  left: 16,
                ),
                child: Text(
                  recipe['title'],
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Positioned(
                top: 34,
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
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildLeftColumn(Size size) {
    return Container(
      height: 200,
      width: size.width * 0.2,
      decoration: BoxDecoration(
        color: Color(0xff262523),
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: recipe['readyInMinutes'].toString(),
                style: TextStyle(
                  color: Color(0xffD97904),
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: '\nmin',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: recipe['servings'].toString(),
                style: TextStyle(
                  color: Color(0xffD97904),
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: '\nserve',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: (Random().nextInt(10) + 1).toString(),
                style: TextStyle(
                  color: Color(0xffD97904),
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
                children: [
                  TextSpan(
                    text: '\nsteps',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
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
