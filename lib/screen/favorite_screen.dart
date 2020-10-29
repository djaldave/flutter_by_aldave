import 'package:flutter/material.dart';
import '../model/meal.dart';
import '../widget/meal_item.dart';


class FavoriteScreen extends StatelessWidget {

	final List <Meal> favoriteMeals;

	FavoriteScreen(this.favoriteMeals);

	@override
	Widget build(context){
		if(favoriteMeals.isEmpty){
			return Center(
				child: Text("You have no favorite yet- start adding some!"),
			);
		}else{
			return ListView.builder(
				itemBuilder: (ctx , index){
					return MealItem(
						id: favoriteMeals[index].id,
						title: favoriteMeals[index].title, 
						imageUrl: favoriteMeals[index].imageUrl,
						duration: favoriteMeals[index].duration,
						affordability: favoriteMeals[index].affordability,
						complexity: favoriteMeals[index].complexity,
					);
				},
				itemCount: favoriteMeals.length,	
			);
		}
	}
}

