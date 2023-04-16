import 'package:flutter/material.dart';
import 'package:mealapp/widgets/main_drawer.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});
  static const routName = "/filters";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Your Filters"),
      ),
      drawer: MainDrawer(),
      body: const Center(child: Text("this is Filtter Page")),
    );
  }
}
