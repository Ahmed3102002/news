import 'dart:developer';
import 'package:intl/intl.dart';
import 'package:dio/dio.dart';
import 'package:news/models/article_model.dart';

class NewsService {
  final Dio dio=Dio();

  NewsService();

  final String startDate = DateFormat('yyyy-MM-dd')
      .format(DateTime.now().subtract(const Duration(days: 1),),);
  final String endDate = DateFormat('yyyy-MM-dd').format(DateTime.now(),);

  Future<List<ArticleModel>> getTopHeadlines({required String category}) async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/everything?apiKey=5fa97cd7b65d49229b11b54a94c1dbf7&from=$startDate&to=$endDate&q=$category');

      Map<String, dynamic> jsonData = response.data;
      log('${jsonData["totalResults"]}');

      List<dynamic> articles = jsonData['articles'];

      List<ArticleModel> articlesList = [];

      for (var article in articles) {
        /*ArticleModel newArticleModel = ArticleModel(
            image: article['urlToImage'],
            title: article['title'],
            description: article['description'],
            urlSource: article['url']);
        log('title: ${newArticleModel.title}');
        log('sub:${newArticleModel.description}');
        log('image:${newArticleModel.image}');
        log('image:${newArticleModel.urlSource}');*/
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articlesList.add(articleModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}

