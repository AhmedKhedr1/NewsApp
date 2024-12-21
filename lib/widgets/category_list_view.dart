import 'package:flutter/material.dart';
import 'package:news_app/model/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class category_list_view extends StatelessWidget {
  const category_list_view({
    super.key,
  });

  final List<CategoryModel> categories = const [
    CategoryModel(categoryname: 'sports', image: 'assets/sports.avif'),
    CategoryModel(categoryname: 'business', image: 'assets/business.avif'),
    CategoryModel(categoryname: 'entertaiment', image: 'assets/entertaiment.avif'),
    CategoryModel(categoryname: 'general', image: 'assets/general.avif'),
    CategoryModel(categoryname: 'health', image: 'assets/health.avif'),
    CategoryModel(categoryname: 'science', image: 'assets/science.avif'),
    CategoryModel(categoryname: 'technology', image: 'assets/technology.jpeg')
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return catecory_card(
            category: categories[index],
          );
        },
      ),
    );
  }
}
