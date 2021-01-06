import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

class SpoonacularService {
  final String _baseUrl = 'https://api.spoonacular.com';
  final String _apiKey = '<API_KEY>';

  Future getRandomRecipes() async {
    var response = await http.get(_baseUrl + '/recipes/random?apiKey=$_apiKey&number=2&tags=vegetarian,dessert');
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      print('Recipes : $jsonResponse.');
      return jsonResponse;
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  getRecipeDetails(int id) async {
    var response = await http.get(_baseUrl + '/recipes/$id/information?apiKey=$_apiKey&includeNutrition=true');
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      print('Recipe Details : $jsonResponse.');
      return jsonResponse;
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }
}