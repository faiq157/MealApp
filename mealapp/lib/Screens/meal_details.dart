import 'package:flutter/material.dart';
import 'package:mealapp/models/meal.dart';
import '../Dummy_data.dart';

class MealDetail extends StatelessWidget {
  static const routName = '/meal-details';
  const MealDetail({super.key});
  Widget buildSectionTitle(BuildContext context, String text) {
    return Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        child: Text(
          text,
          style: Theme.of(context).textTheme.titleLarge,
        ));
  }

  Widget BuildContainer(Widget child) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      height: 200,
      width: 300,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)!.settings.arguments as String;
    final selectedMeal = Dummy_Meals.firstWhere((meal) => meal.id == mealId);
    return Scaffold(
        appBar: AppBar(
          title: Text('${selectedMeal.title}'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 300,
                width: double.infinity,
                child: Image.network(
                  selectedMeal.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              buildSectionTitle(context, 'ingredients'),
              BuildContainer(
                ListView.builder(
                  itemBuilder: (ctx, index) => Card(
                    color: Colors.amberAccent,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 10),
                      child: Text(selectedMeal.ingredients[index]),
                    ),
                  ),
                  itemCount: selectedMeal.ingredients.length,
                ),
              ),
              buildSectionTitle(context, "steps"),
              BuildContainer(ListView.builder(
                itemBuilder: ((context, index) => Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            child: Text("# ${(index + 1)}"),
                          ),
                          title: Text(
                            selectedMeal.Steps[index],
                          ),
                        ),
                        Divider(),
                      ],
                    )),
                itemCount: selectedMeal.Steps.length,
              )),
            ],
          ),
        ));
  }
}
