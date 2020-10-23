import "package:flutter/material.dart";

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(context){
    return MaterialApp(
      title: 'Meal App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(context)  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meal App"),
      ),
      body: Center(
        child: Text("Navigation time"),
      ),
    );
  }
}
