import 'dart:convert';

import '../models/ArticleModel.dart';
import 'package:http/http.dart' as http;

class News {
  List<ArticleModel> news = [];

  Future<void> getNews() async {
    String url =
        'https://newsapi.org/v2/top-headlines?country=in&apiKey=b5a59e5119c14a26ab799b52846109e0';

    var responsive = await http.get(url);

    var jsonData = jsonDecode(responsive.body);
    if (jsonData['status'] == "ok") {
      jsonData['articles'].forEach((element) {
        if (element['urlToImage'] != null && element['description'] != null) {
          ArticleModel article = ArticleModel(
            author: element["author"],
            title: element['title'],
            content: element["content"],
            decription: element["description"],
            url: element["url"],
            urlToimage: element["urlToImage"],
          );
          news.add(article);
        }
      });
    }
  }
}

class CategoryNews {

  List<ArticleModel> news = [];

  Future<void> getCategoryNews(String category) async {
    String url =
        'https://newsapi.org/v2/top-headlines?category=$category&country=in&apiKey=b5a59e5119c14a26ab799b52846109e0';

    var responsive = await http.get(url);

    var jsonData = jsonDecode(responsive.body);
    if (jsonData['status'] == "ok") {
      jsonData['articles'].forEach((element) {
        if (element['urlToImage'] != null && element['description'] != null) {
          ArticleModel article = ArticleModel(
            author: element["author"],
            title: element['title'],
            content: element["content"],
            decription: element["description"],
            url: element["url"],
            urlToimage: element["urlToImage"],
          );
          news.add(article);
        }
      });
    }
  }
}
