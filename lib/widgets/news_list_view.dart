import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/model/article_model.dart';
import 'package:news_app/widgets/News_Service.dart';
import 'package:news_app/widgets/news_tile.dart';

class news_list_view extends StatefulWidget {
  news_list_view({super.key});

  @override
  State<news_list_view> createState() => _news_list_viewState();
}

class _news_list_viewState extends State<news_list_view> {
  List<ArticleModel> articles = [];
  bool islaoding = true;
  @override
  void initState() {
    getgeneralNews();
  }

  Future<void> getgeneralNews() async {
    articles = await NewsService(Dio()).getnews();
    islaoding = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return islaoding
        ? SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()))
        : SliverList(
            delegate: SliverChildBuilderDelegate(
            childCount: articles.length,
            (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: news_tile(
                  articleModel: articles[index],
                ),
              );
            },
          ));
  }
}
