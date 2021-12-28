import 'package:flutter/material.dart';
import 'package:flutter_food_app/src/widgets/bought_foods.dart';
import 'package:flutter_food_app/src/widgets/food_category.dart';
import 'package:flutter_food_app/src/widgets/home_top_info.dart';
import 'package:flutter_food_app/src/widgets/search_field.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.fromLTRB(10, 50, 10, 0),
        children: [
          HomeTopInfo(),
          FoodCategory(),
          SizedBox(
            height: 20,
          ),
          SearchField(),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Frequently Bought Foods",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
              GestureDetector(
                onTap: () {
                  print("View all food");
                },
                child: Text(
                  "View All",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      color: Colors.orangeAccent),
                ),
              )
            ],
          ),
          SizedBox(height: 20,),
          Container(
            child: BoughtFoods(),
          )
        ],
      ),
    );
  }
}
