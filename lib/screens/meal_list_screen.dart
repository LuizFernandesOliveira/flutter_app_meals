import 'package:flutter/material.dart';

class MealListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Receitas'),
      ),
      body: Center(
        child: Text('Receitas por Categoria'),
      ),
    );
  }
}
