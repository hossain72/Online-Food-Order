import 'package:flutter/material.dart';
import 'package:flutter_food_app/src/home_screeen.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Food Delivery App",
      theme: ThemeData(primaryColor: Colors.blueAccent),
      home: HomeScreen(),
    );
  }
}
