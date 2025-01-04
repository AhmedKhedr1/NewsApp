import 'package:dio/dio.dart';
import 'package:news_app/model/article_model.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);
  Future <List<ArticleModel>> getnews() async {
    try {
  final Response = await dio.get(
      'https://newsapi.org/v2/everything?q=bitcoin&apiKey=3d4631608aae468faf81d1d776b0583c');
  Map<String, dynamic> josndata = Response.data;
  
  List<dynamic> articles = josndata['articles'];
  
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

}
return [];
  }
}
