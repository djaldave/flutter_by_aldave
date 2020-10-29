import 'package:flutter/material.dart';
import 'categories_screen.dart';
import 'favorite_screen.dart';

class TabScreen extends StatefulWidget {
	@override
	_TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
	@override
	Widget build(context){
		return DefaultTabController(
			length: 2,
			initialIndex: 0,
			child:
			Scaffold(
				appBar: AppBar(
					title: Text("Meal"),
					bottom: TabBar(
						tabs: [
							Tab(
								icon: Icon(
									Icons.category,
								),
								text: "Categories",
							),
							Tab(
								icon: Icon(
									Icons.star,
								),
								text: "Favorites",
							),
						],
					),
				),
				body: TabBarView(
					children:[
						CategoriesScreen(),
						FavoriteScreen(),

					],
				),
			),
		);
	}
}


