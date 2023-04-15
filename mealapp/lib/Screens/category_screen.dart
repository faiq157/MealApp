import 'package:flutter/material.dart';
import '../widgets/category_item.dart';
import '../Dummy_data.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(25),
      // ignore: sort_child_properties_last
      children: DUMMY_CATEGORIES
          .map(
            (catData) => CategoryItem(catData.title, catData.color, catData.Id),
          )
          .toList(),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20),
    );
  }
}
