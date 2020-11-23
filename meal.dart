import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

enum Complexity {
  Simple,
  Challenging,
  Hard,
}

enum Affordability {
  Affordable,
  Pricey,
  Luxurious,
}

class Meal {
  String id;
  List<String> categories;
  String title;
  String imageUrl;
  List<String> ingredients;
  List<String> steps;
  int duration;
  Complexity complexity;
  Affordability affordability;
  bool isGlutenFree;
  bool isLactoseFree;
  bool isVegan;
  bool isVegetarian;

  Meal({
    @required this.id,
    @required this.categories,
    @required this.title,
    @required this.imageUrl,
    @required this.ingredients,
    @required this.steps,
    @required this.duration,
    @required this.complexity,
    @required this.affordability,
    @required this.isGlutenFree,
    @required this.isLactoseFree,
    @required this.isVegan,
    @required this.isVegetarian,
  });

  Meal.fromJson(Map<dynamic, dynamic> json) {
    id = json['id'].toString();
    categories = json['categories'];
    title = json['title'];
    imageUrl = json['imageURL'];
    ingredients = json['ingredients'];
    steps = json['steps'];
    duration = json['duration'];
    complexity = json['complexity'];
    affordability = json['affordability'];
    isGlutenFree = json['gluten'];
    isLactoseFree = json['lactose'];
    isVegan = json['isVegan'];
    isVegetarian = json['isVegetarian'];
  }
}
