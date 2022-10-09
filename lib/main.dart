import 'package:flutter/material.dart';
import 'screens/category_list_screen.dart';
import 'screens/meal_list_screen.dart';

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
      home: CategoryListScreen(),
      routes: {
        '/meals': (ctx) => MealListScreen(),
      },
    );
  }
}
