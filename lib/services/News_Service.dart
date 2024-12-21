// ignore: file_names

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/model/article_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);

  // ignore: non_constant_identifier_names
  Future<List<ArticleModel>> getTopHHeadlines({required String category}) async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=3d4631608aae468faf81d1d776b0583c&category=$category');
     Map<String, dynamic> jsondata = response.data;
      List<dynamic> articles = jsondata['articles'];
      List<ArticleModel> articleslist = [];
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
            image: article['urlToImage'],
            title: article['title'],
            subtitle: article['description']);
        articleslist.add(articleModel);
      }
      return articleslist;
    } on Exception catch (e) {
      CircularProgressIndicator();
    }
    return[];
  }
}

