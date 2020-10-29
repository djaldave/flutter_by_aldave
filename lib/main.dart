import "package:flutter/material.dart";
import 'screen/categories_screen.dart';
import 'screen/category_meal_screen.dart';
import 'screen/meal_detail_screen.dart';
import 'screen/tab_screen.dart';
import 'screen/filter_screen.dart';
import 'dummy_data.dart';
import 'model/meal.dart';




void main() => runApp(MyApp());


class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Map<String, bool> _filters = {
    "gluten": false,
    "lactose":false,
    "vegan":false,
    "vegetarian":false,
  };

  List<Meal> _availableMeals = DUMMY_MEALS;

  void _setFilters(Map<String, bool> filterData){
    setState((){
      _filters = filterData;
      _availableMeals  = DUMMY_MEALS.where((meal){
        if(_filters['gluten'] && !meal.isGlutenFree){
          return false;
        }
         if(_filters['lactose'] && !meal.isLactoseFree){
          return false;
        }
         if(_filters['vegan'] && !meal.isVegan){
          return false;
        }
         if(_filters['vegetarian'] && !meal.isVegetarian){
          return false;
        }
        return true;
      }).toList();
    });
  }

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
        CategoryMealScreen.routeName: (ctx) => CategoryMealScreen(_availableMeals),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
        FilterScreen.routeName: (ctx) => FilterScreen(_filters,_setFilters),
      },
      // onGenerateRoute: (settings){
      //   print(settings.arguments);
      //   },
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

