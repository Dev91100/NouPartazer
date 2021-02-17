import 'package:flutter/material.dart';
import 'package:NouPartazer_App/Koomalai/src/widget/foodCard.dart';

import '../data/categoryData.dart';
import '../models/categoryModel.dart';
import 'foodCardStories.dart';


class FoodCategoryStories extends StatelessWidget{
  final List<Category> _categories = categories;

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 250.0,

      child: ListView.builder(
        scrollDirection:Axis.horizontal,
        itemCount: _categories.length,
        itemBuilder: (BuildContext context ,int index )
        {
          return FoodCardStories(
            categoryName: _categories[index].categoryName,
            imagePath: _categories[index].imagePath,
            noOfItem: _categories[index].noOfItem,
            
          );
        },
      ),
    );

  }

}