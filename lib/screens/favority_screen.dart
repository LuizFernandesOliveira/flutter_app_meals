import 'package:app_meals/components/meal_item.dart';
import 'package:flutter/material.dart';

import '../models/meal.dart';

class FavorityScreen extends StatelessWidget {
  final List<Meal> favoriteMeals;

  const FavorityScreen({
    required this.favoriteMeals,
  });

  @override
  Widget build(BuildContext context) {
    if (favoriteMeals.isEmpty) {
      return Center(
        child: Text('Nenhuma Refeições foi marcada como Favoritas'),
      );
    }

    return ListView.builder(
      itemCount: favoriteMeals.length,
      itemBuilder: (ctx, index) {
        return MealItem(
          meal: favoriteMeals[index],
        );
      },
    );
  }
}
