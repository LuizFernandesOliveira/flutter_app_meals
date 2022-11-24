import 'package:app_meals/components/meal_item.dart';
import 'package:flutter/material.dart';
import '../models/category.dart';
import '../models/meal.dart';

class MealListScreen extends StatelessWidget {
  final List<Meal> meals;

  const MealListScreen({
    required this.meals,
  });

  @override
  Widget build(BuildContext context) {
    final category = ModalRoute.of(context)?.settings.arguments as Category;

    final mealsFiltered = meals.where((meal) {
      return meal.categories.contains(category.id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(category.title),
      ),
      body: ListView.builder(
        itemCount: mealsFiltered.length,
        itemBuilder: (ctx, index) {
          return MealItem(
            meal: mealsFiltered[index],
          );
        },
      ),
    );
  }
}
