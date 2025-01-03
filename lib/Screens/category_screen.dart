import 'package:flutter/material.dart';
import 'package:news_app/model/category_model.dart';


// ignore: camel_case_types
class category_screen extends StatelessWidget {
  const category_screen({super.key, required this.category});
final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(category.categoryname),),
      body: CustomScrollView(
        slivers: [
          
        ],
      ),
    );
  }
}