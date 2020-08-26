import 'package:flutter/material.dart';
import 'package:food/models/meal.dart';
import 'package:food/widgets/meal_item.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favoritesMeals;

  FavoritesScreen(this.favoritesMeals);

  @override
  Widget build(BuildContext context) {
    if (favoritesMeals.isEmpty) {
      return Center(
        child: Text('You have no favorites yet - start adding some!'),
      );
    } else {
      return ListView.builder(
          itemBuilder: (ctx, index) {
            return MealIteam(
                id: favoritesMeals[index].id,
                title: favoritesMeals[index].title,
                affordability: favoritesMeals[index].affordability,
                complexity: favoritesMeals[index].complexity,
                imageUrl: favoritesMeals[index].imageUrl,
                duration: favoritesMeals[index].duration);
          },
          itemCount: favoritesMeals.length);
    }
  }
}
