import 'package:flutter/material.dart';
// import '../dummy_data.dart';
import '../widget/meal_item.dart';
import '../model/meal.dart';


class CategoryMealScreen extends StatefulWidget{
	static const routeName = '/category-meal';

	final List<Meal> availableMeals;


	CategoryMealScreen(this.availableMeals);
	// final String categoryId;
	// final String categoryTitle;

	// CategoryMealScreen(this.categoryId, this.categoryTitle);
	@override
	_CategoryMealScreenState createState() => _CategoryMealScreenState();
}
class _CategoryMealScreenState extends State<CategoryMealScreen> {
	
	String categoryTitle;
	List<Meal> displayedMeal;
	var _loadedInitData = false;

	@override
	void initState(){
		super.initState();
	}


	@override
	void didChangeDependencies(){
		if(!_loadedInitData){
			final routeArgs = 
			ModalRoute.of(context).settings.arguments 
			as Map<String,String>;
			categoryTitle = routeArgs["title"];
			final categoryId = routeArgs["id"];
			displayedMeal = 
			widget.availableMeals.where((meal){
				return meal.categories.contains(categoryId);
			},
			).toList();
			_loadedInitData = true;
		}
		super.didChangeDependencies();
	}


	void _removeMeal(String mealId){
		setState((){
			displayedMeal.removeWhere((meal) => meal.id == mealId);
		});
	}

	@override
	Widget build(context){
		
		return Scaffold(
			appBar: AppBar(title: Text(categoryTitle)),
			body:
			ListView.builder(
				itemBuilder: (ctx , index){
					return MealItem(
						id: displayedMeal[index].id,
						title: displayedMeal[index].title, 
						imageUrl: displayedMeal[index].imageUrl,
						duration: displayedMeal[index].duration,
						affordability: displayedMeal[index].affordability,
						complexity: displayedMeal[index].complexity,
					);
				},
				itemCount: displayedMeal.length,	
			),
		);
	}
}

