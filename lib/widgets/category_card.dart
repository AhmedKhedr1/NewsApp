import 'package:flutter/material.dart';
import 'package:news_app/Screens/category_screen.dart';
import 'package:news_app/model/category_model.dart';

class catecory_card extends StatelessWidget {
  const catecory_card({
    super.key,
    required this.category,
  });
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return category_screen(category: category);
            },
          ));
        },
        child: Container(
          width: 165,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(category.image), fit: BoxFit.cover),
              borderRadius: BorderRadius.circular(16)),
          child: Center(
              child: Text(
            category.categoryname,
            style: TextStyle(color: Colors.white),
          )),
        ),
      ),
    );
  }
}
