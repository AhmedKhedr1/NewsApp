import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/services/News_Service.dart';
import 'package:news_app/widgets/loading_widget.dart';
import 'package:news_app/widgets/news_list_view.dart';

class newslistview_builder extends StatelessWidget {
  newslistview_builder({
    super.key, required this.category, 
  });
final String category;
 
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: NewsService(Dio()).getTopHHeadlines(category: category),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return news_list_view(articles: snapshot.data ?? []);
        } else if (snapshot.hasError) {
         return const SliverToBoxAdapter(
              child: Text('oops there was an error ..... please try again '));
        } else {
          return const loading_widget();
        }
       
      },
    );
  }
}
