import 'package:flutter/material.dart';
import '';
import '../models/categories.dart';
import 'category_card.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: GridView.count(
        mainAxisSpacing: 20.0,
        crossAxisSpacing: 20.0,
        crossAxisCount: 2,
        childAspectRatio: 3 / 2,
        children: kCategories
            .map(
              (category) => CategoryCard(category),
            )
            .toList(),
      ),
    );
  }
}
