import 'package:flutter/material.dart';

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
		return Scaffold(
			appBar: AppBar(title: Text(categoryTitle)),
			body:
				Center(
			child: 
				Text("The Recipes For the Catergory"),
			),
		);
	}
}
