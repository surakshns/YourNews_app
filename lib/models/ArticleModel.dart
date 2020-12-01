import 'package:flutter/cupertino.dart';

class ArticleModel {
  String author;
  String title;
  String decription;
  String url;
  String urlToimage;
  String content;
  ArticleModel(
      {@required this.author,
      @required this.title,
      @required this.content,
      @required this.decription,
      @required this.url,
      @required this.urlToimage});
}
