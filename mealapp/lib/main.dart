import 'package:flutter/material.dart';
import 'package:mealapp/Screens/category_meals.dart';
import 'package:mealapp/Screens/filters_screen.dart';
import 'package:mealapp/Screens/tab_screen.dart';
import './Screens/meal_details.dart';
import './screens/category_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meal App',
      theme: ThemeData(
          canvasColor: const Color.fromRGBO(225, 254, 229, 1),
          fontFamily: "alkatra",
          textTheme: ThemeData.light().textTheme.copyWith(
              bodyLarge: const TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              bodyMedium: const TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              titleLarge:
                  const TextStyle(fontSize: 24, fontFamily: "Handrawn")),
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.pink)
              .copyWith(secondary: Colors.amber)),
      home: TabScreen(),
      routes: {
        CategoryMeals.routName: (ctx) => const CategoryMeals(),
        MealDetail.routName: (ctx) => const MealDetail(),
        FilterScreen.routName: (ctx) => const FilterScreen(),
      },
    );
  }
}
