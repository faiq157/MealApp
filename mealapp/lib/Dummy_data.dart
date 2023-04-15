// ignore: file_names
import 'package:flutter/material.dart';

import 'models/category.dart';
import 'models/meal.dart';

// ignore: constant_identifier_names
const List<category> DUMMY_CATEGORIES = [
  category(Id: 'c1', title: "Italian", color: Colors.purple),
  category(Id: 'c2', title: "Indian", color: Color.fromARGB(255, 207, 243, 2)),
  category(
      Id: 'c3', title: "Quick Easy", color: Color.fromARGB(255, 176, 55, 39)),
  category(Id: 'c4', title: "Saladie", color: Color.fromARGB(255, 39, 41, 176)),
  category(Id: 'c5', title: "burger", color: Color.fromARGB(255, 39, 176, 153)),
  category(Id: 'c6', title: "chapati", color: Color.fromARGB(255, 39, 48, 176)),
  category(
      Id: 'c7', title: "pakistani", color: Color.fromARGB(255, 103, 39, 176)),
  category(Id: 'c8', title: "rustami", color: Color.fromARGB(255, 82, 176, 39)),
  category(Id: 'c9', title: "mardani", color: Color.fromARGB(255, 176, 39, 39)),
  category(
      Id: 'c9', title: "mardani", color: Color.fromARGB(255, 208, 146, 219)),
  category(Id: 'c9', title: "mardani", color: Color.fromARGB(255, 177, 10, 10)),
  category(Id: 'c9', title: "mardani", color: Color.fromARGB(255, 214, 211, 9)),
  category(Id: 'c9', title: "mardani", color: Color.fromARGB(255, 1, 72, 179))
];
// ignore: constant_identifier_names
const Dummy_Meals = [
  Meal(
      Steps: ["mix it well", "cook on cooker"],
      affordibility: Affordibility.Affordible,
      categories: ["c1", "c2"],
      complexity: Complexity.Simple,
      duration: 20,
      id: 'm1',
      imageUrl:
          'https://img.freepik.com/free-photo/flat-lay-batch-cooking-composition_23-2148765597.jpg',
      ingredients: ["temato", "potato", "chilli", "salt"],
      isGlutenFree: true,
      isLactoseFree: false,
      isVegan: true,
      isVegetarian: true,
      title: 'spagati with tomato souces'),
  Meal(
      Steps: ["mix it well", "cook on cooker"],
      affordibility: Affordibility.Affordible,
      categories: ["c3"],
      complexity: Complexity.Simple,
      duration: 20,
      id: 'm2',
      imageUrl:
          'https://img.freepik.com/free-photo/flat-lay-batch-cooking-composition_23-2148765597.jpg',
      ingredients: ["temato", "potato", "chilli", "salt"],
      isGlutenFree: true,
      isLactoseFree: false,
      isVegan: true,
      isVegetarian: true,
      title: 'Rice baryani'),
  Meal(
      Steps: ["cook on cooker"],
      affordibility: Affordibility.Affordible,
      categories: ["c4"],
      complexity: Complexity.Simple,
      duration: 20,
      id: 'm3',
      imageUrl:
          'https://img.freepik.com/free-photo/flat-lay-batch-cooking-composition_23-2148765597.jpg',
      ingredients: ["temato", "potato", "chilli", "salt"],
      isGlutenFree: true,
      isLactoseFree: false,
      isVegan: true,
      isVegetarian: true,
      title: 'potato recipes')
];
