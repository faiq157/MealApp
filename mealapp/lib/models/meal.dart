import 'package:flutter/foundation.dart';

enum Complexity { Simple, Chllenging, Hard }

enum Affordibility { Affordible, Pricey, Luxurious }

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> Steps;
  final int duration;
  final Complexity complexity;
  final Affordibility affordibility;
  final bool isGlutenFree;
  final bool isLactoseFree;
  final bool isVegan;
  final bool isVegetarian;
  const Meal(
      {required this.id,
      required this.categories,
      required this.title,
      required this.imageUrl,
      required this.ingredients,
      required this.Steps,
      required this.duration,
      required this.complexity,
      required this.affordibility,
      required this.isGlutenFree,
      required this.isVegan,
      required this.isLactoseFree,
      required this.isVegetarian});
}
