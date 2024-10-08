import 'package:flutter/material.dart';
import 'package:meals/widgets/meal_prepare_info_widget.dart';

import '../models/meal.dart';

class MealDetailPage extends StatelessWidget {
  final Meal meal;

  const MealDetailPage(
    this.meal, {
    super.key,
  });
//lib + pubspec.yaml
  @override
  State<MealDetailPage> createState() => _MealDetailPageState();

  class _MealDetailPage extends State<MealDetailPage> //{}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          meal.title,
        ),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          widget.meal.isFavorite = !widget.meal.isFavorite;
        },
        child: const Icon(Icons.star),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              meal.imageUrl,
            ),
            MealPrepareInfoWidget(
              title: 'Ingredientes',
              children: meal.ingredients.map((text) => Text(text)).toList(),
            ),
            MealPrepareInfoWidget(
              title: 'Passos',
              children: meal.steps.map((text) => Text(text)).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
