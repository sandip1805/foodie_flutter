import 'package:flutter/material.dart';
import 'package:foodie_flutter_app/services/spoonacular_service.dart';
import 'dart:convert' as convert;
import 'package:foodie_flutter_app/widgets/square_recipe_card.dart';

class Home extends StatelessWidget {
  final _spoonacularService = SpoonacularService();

  @override
  Widget build(BuildContext context) {
    List<String> trendingImagePath = [
      'assets/images/pexels-francesco-paggiaro-1117862.jpg',
      'assets/images/pexels-kaboompics-com-5617.jpg',
      'assets/images/pexels-karolina-grabowska-4197447.jpg',
      'assets/images/pexels-min-an-1482803.jpg',
      'assets/images/pexels-surabhi-siddaiah-1051399.jpg'
    ];
    _spoonacularService.getRandomRecipes();
    var recipeDataFuture = DefaultAssetBundle.of(context)
        .loadStructuredData('assets/data/recipe_data.json', (s) async {
      return convert.jsonDecode(s);
    });
    return SafeArea(
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                  text: 'World of ',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text: 'Recipe',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                        color: Color(0xFFD97904),
                      ),
                    ),
                  ]),
            ),
            Container(
              height: 100,
              padding: const EdgeInsets.only(top: 16),
              child: buildTopCircularListView(trendingImagePath),
            ),
            buildRecipeCards(recipeDataFuture),
          ],
        ),
      ),
    );
  }

  Container buildRecipeCards(Future recipeDataFuture) {
    return Container(
      child: FutureBuilder(
        builder: (context, recipeSnap) {
          if (recipeSnap.hasData) {
            return Expanded(
              child: ListView.builder(
                itemCount: recipeSnap.data.length,
                itemBuilder: (context, index) {
                  return SquareRecipeCard(
                    recipe: recipeSnap.data[index],
                  );
                },
              ),
            );
          } else if (recipeSnap.hasError) {
            return Center(
              child: Text('Something wrong happened while loading data'),
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
        future: recipeDataFuture,
      ),
    );
  }

  ListView buildTopCircularListView(List<String> trendingImagePath) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: trendingImagePath.length,
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.only(bottom: 10, right: 6),
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Color(0xfff2b705), width: 3),
            image: DecorationImage(
              image: AssetImage(trendingImagePath[index]),
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}
