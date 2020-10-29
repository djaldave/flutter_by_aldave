import 'package:flutter/material.dart';
import '../widget/main_drawer.dart';

class FilterScreen extends StatelessWidget {

	static const routeName = "/Filters";

	@override
	Widget build(context){
		return Scaffold(
			appBar: AppBar(
				title: Text("Your Filters"),
			),
			drawer: MainDrawer(),
			body:
			Center(
				child:
				Text("Filters"),
			),		
		);
	}	
}

