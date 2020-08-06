import 'package:first/category.dart';
import 'package:flutter/material.dart';
class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<Category> names = [
    Category('Ahmed' , '30'),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: names.map( //map method used for cycling throw the list and display widget in the screen from the list
          (listItem) => Text(listItem.name)
          ).toList(), //here you need to convert widget to list after cycling , as children property needs list of widgets
      ),
    );
  }
}
