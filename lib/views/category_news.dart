import 'package:flutter/material.dart';
import '../helper/article.dart';
import '../models/CategoryModel.dart';
import '../models/ArticleModel.dart';
import '../helper/data.dart';
import '../widgets/Blogtile.dart';

class Category_news extends StatefulWidget {
  String catname;
  Category_news(this.catname);
  @override
  _Category_newsState createState() => _Category_newsState();
}

class _Category_newsState extends State<Category_news> {
  List<CategoryModel> categories = new List<CategoryModel>();
  List<ArticleModel> article = new List<ArticleModel>();
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    categories = getCategory();
    getCategoryNews(widget.catname);
  }

  getCategoryNews(name) async {
    CategoryNews newsClass = CategoryNews();
    await newsClass.getCategoryNews(widget.catname);
    article = newsClass.news;
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.catname.toUpperCase(),
              style: TextStyle(color: Colors.red),
            ),
            Opacity(
              opacity: 0,
              child: Icon(
                Icons.save,
                size: 45,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.black87,
          child: Column(
            children: [
              ListView.builder(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: article.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: BlogTile(
                      imageurl: article[index].urlToimage,
                      desc: article[index].decription,
                      title: article[index].title,
                      url: article[index].url,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
