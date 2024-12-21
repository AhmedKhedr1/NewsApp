import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/model/article_model.dart';
import 'package:news_app/services/News_Service.dart';
import 'package:news_app/widgets/loading_widget.dart';
import 'package:news_app/widgets/news_tile.dart';

class news_list_view extends StatelessWidget {
   news_list_view({
    super.key,required this.articles
  });

  @override
  List<ArticleModel> articles ;

  @override
  Widget build(BuildContext context) {
    return  SliverList(
            delegate: SliverChildBuilderDelegate(
            childCount: articles.length,
            (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: news_tile(articlemodel: articles[index]),
              );
            },
          ));
  }
}


