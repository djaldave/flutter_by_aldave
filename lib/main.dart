import "package:flutter/material.dart";
import 'screen/categories_screen.dart';
import 'screen/category_meal_screen.dart';
import 'screen/meal_detail_screen.dart';
import 'screen/tab_screen.dart';




void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(context){
    return MaterialApp(
      title: 'Meal App',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor:Colors.amber,
        canvasColor: Color.fromRGBO(255,254,229,1),
        fontFamily: "Raleway",
        textTheme: ThemeData.light().textTheme.copyWith(
          bodyText1: TextStyle(color: Color.fromRGBO(20,51,51,1),),
          bodyText2: TextStyle(color: Color.fromRGBO(20,51,51,1),),
          headline6: TextStyle(
            fontSize: 20,
            fontFamily: "RobotoCondensed",
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      // home: CategoriesScreen(),
      initialRoute: '/',
      routes: {
        '/':(ctx) => TabScreen(),
        CategoryMealScreen.routeName: (ctx) => CategoryMealScreen(),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
      },
      // onGenerateRoute: (settings){
      //   print(settings.arguments);
      //   if(settings.name == "./someth"){
      //     return ..;
      //   }
      //   return MaterialPageRoute(
      //     builder: (ctx) => CategoriesScreen()
      //   );
      // },
      //separed functions just show you 
      onUnknownRoute:(settings){
        return MaterialPageRoute(
          builder: (ctx) => CategoriesScreen()
        );
      },
    );
  }
}
