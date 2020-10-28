import 'package:flutter/material.dart';

class CategoryMealScreen extends StatelessWidget{

	@override
	Widget build(context){
		return Scaffold(
			appBar: AppBar(title: Text("The Recipes")),
			body:
				Center(
			child: 
				Text("The Recipes For the Catergory"),
			),
		);
	}
}
