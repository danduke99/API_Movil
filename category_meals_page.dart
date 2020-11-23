import 'package:flutter/material.dart';
import 'package:my_recipes/src/models/meal.dart';
import 'package:my_recipes/src/widgets/meal_item.dart';

class CategoryMealsPage extends StatelessWidget {
  final List<Meal> _mealsList;
  CategoryMealsPage(this._mealsList);
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(25),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        childAspectRatio: 3 / 2,
      ),
      children: _mealsList
          .map(
            (meal) => MealItem(meal, null),
          )
          .toList(),
    );
  }
}
