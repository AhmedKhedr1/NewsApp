import 'package:flutter/material.dart';
import 'package:news_app/model/article_model.dart';

class news_tile extends StatelessWidget {
  const news_tile({
    super.key, required this.articlemodel,
  });

final ArticleModel articlemodel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:5 ,right:10 ,left:10 ,top:5 ),
      child: Column(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(5),
            child: Image.network(articlemodel.image??'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQVua1higrnAKxEJ8ufI9iIJ8Y3_-DGUBEoA&s')
          ),
           Text(
            articlemodel.title! ,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style:const TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w800),
          ),
           Text(
            articlemodel.subtitle??"subtitle is not available ..... please try again ",
          maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style:const TextStyle(
                color: Colors.grey,
                fontSize: 12,
                fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
