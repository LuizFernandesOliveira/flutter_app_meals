import '../models/meal.dart';

import 'package:flutter/material.dart';

class MealDetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context)?.settings.arguments as Meal;

    return Scaffold(
      appBar: AppBar(
        title: Text('Detalhes da refeição'),
      ),
      body: Center(
        child: Text(meal.title),
      ),
    );
  }
}
