import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../widget/meal_item.dart';


class CategoryMealScreen extends StatelessWidget{
	static const routeName = '/category-meal';
	// final String categoryId;
	// final String categoryTitle;

	// CategoryMealScreen(this.categoryId, this.categoryTitle);

	@override
	Widget build(context){
		final routeArgs = 
		ModalRoute.of(context).settings.arguments 
		as Map<String,String>;
		final categoryTitle = routeArgs["title"];
		final categoryId = routeArgs["id"];
		final categoryMeal = 
		DUMMY_MEALS.where((meal){
			return meal.categories.contains(categoryId);
		},
		).toList();
		return Scaffold(
			appBar: AppBar(title: Text(categoryTitle)),
			body:
			ListView.builder(
				itemBuilder: (ctx , index){
					return MealItem(
						title: categoryMeal[index].title, 
						imageUrl: categoryMeal[index].imageUrl,
						duration: categoryMeal[index].duration,
						affordability: categoryMeal[index].affordability,
						complexity: categoryMeal[index].complexity);
				},
				itemCount: categoryMeal.length,	
			),
		);
	}
}
