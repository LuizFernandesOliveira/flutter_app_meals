import 'package:app_meals/screens/meal_detail_screen.dart';
import 'package:flutter/material.dart';
import 'screens/category_list_screen.dart';
import 'screens/meal_list_screen.dart';
import 'utils/app_routes.dart';
import 'screens/tabs_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
          fontFamily: 'Raleway',
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink)
              .copyWith(secondary: Colors.amber),
          textTheme: ThemeData.light().textTheme.copyWith(
                titleMedium: const TextStyle(
                  fontSize: 20,
                  fontFamily: 'RobotoCondensed',
                ),
              ),
          canvasColor: const Color.fromRGBO(255, 254, 229, 1)),
      routes: {
        AppRoutes.HOME: (ctx) => TabsScreen(),
        AppRoutes.MEALS: (ctx) => MealListScreen(),
        AppRoutes.MEALS_DETAIL: (ctx) => MealDetailScreen(),
      },
    );
  }
}
