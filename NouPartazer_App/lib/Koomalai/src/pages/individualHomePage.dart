import 'package:NouPartazer_App/Koomalai/src/widget/foodCategory.dart';
import 'package:NouPartazer_App/Koomalai/src/widget/homeTopWidget.dart';
import 'package:flutter/material.dart';

import '../data/foodData.dart';
import '../models/foodModel.dart';

class IndividualHomePage extends StatefulWidget
{
  @override
  _IndividualHomePageState createState() => _IndividualHomePageState();
}

class _IndividualHomePageState extends State<IndividualHomePage>
{
  final List<FoodData> _foods = foods;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(left: 20.0, top: 50.0, right: 20.0),
        children: <Widget>[
          HomeTopWidget(),
          FoodCategory(),

        /* SizedBox(
            height: 15.0,
          ),
          SearchBar(),
          SizedBox(
            height: 15.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Frequently Bought Food",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "View All",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18.0,
                      color: Colors.orangeAccent),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          Column(
            children: _foods.map(buildFoodBought).toList(),
          )*/

        ],
      ),
    );
  }

  /*Widget buildFoodBought(FoodData food) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: BoughtFood(
        imagePath: food.imagePath,
        id: food.id,
        name: food.name,
        price: food.price,
        discount: food.discount,
        ratings: food.ratings,
        category: food.category,
      ),
    );
  }*/
}
