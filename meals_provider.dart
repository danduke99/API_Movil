import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:my_recipes/src/models/meal.dart';

class MealsProvider {
  String _url = 'myrecipesapi.azurewebsites.net';

  Future<List<Meal>> getCategories() async {
    final url = Uri.https(_url, 'api/Meals');

    final resp = await http.get(url);
    final decodedData = json.decode(resp.body);
    List<Meal> meals = new List();

    for (var item in decodedData as List<dynamic>) {
      final meals = new Meal.fromJson(item);
      add(null, meals);
    }

    print(meals);
    return meals;
  }

  void add(List<Meal> meals, Meal meal) => meals.add(meal);
}
