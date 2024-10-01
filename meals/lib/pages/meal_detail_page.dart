import 'package:flutter/material.dart';

import '../models/meal.dart'; //prof diego antunes

class MealDetailPage extends StatelessWidget {
  final Meal meal;
  const MealDetailPage(this.meal, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        foregroundColor: Colors.white,
        title: Text(
          meal.title,
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Image.network(meal.imageUrl, ),
        const Text('Ingredientes')
        ],
      )
    );
  }
}
