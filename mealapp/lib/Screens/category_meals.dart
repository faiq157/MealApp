import 'package:flutter/material.dart';
import 'package:mealapp/models/category.dart';
import '../Dummy_data.dart';

class CategoryMeals extends StatelessWidget {
  const CategoryMeals({super.key});
  static const routName = '/categories-meals';
  // final String categoryId;
  // final String categorytitle;
  // const CategoryMeals(
  //     {super.key, required this.categoryId, required this.categorytitle});

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryid = routeArgs['id'];
    final categoryMeals = Dummy_Meals.where((meal) {
      return meal.categories.contains(categoryid);
    }).toList();
    return Scaffold(
        appBar: AppBar(
          title: Text(categoryTitle!),
        ),
        body: ListView.builder(
          itemBuilder: (ctx, index) {
            return Text(categoryMeals[index].title);
          },
          itemCount: categoryMeals.length,
        ));
  }
}
