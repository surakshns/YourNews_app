import 'package:flutter/material.dart';
import 'package:news_app/helper/data.dart';
import 'package:news_app/models/ArticleModel.dart';
import 'package:news_app/models/CategoryModel.dart';
import '../helper/article.dart';
import 'package:shimmer/shimmer.dart';
import '../widgets/Shimmertile.dart';
import '../widgets/Blogtile.dart';
import '../widgets/Categorytile.dart';

class Home extends StatefulWidget {
  Home();
  static final id = 'homepage';
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<CategoryModel> categories = new List<CategoryModel>();
  List<ArticleModel> article = new List<ArticleModel>();
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    categories = getCategory();
    getnews();
  }

  getnews() async {
    News newsClass = News();
    await newsClass.getNews();
    article = newsClass.news;
    setState(() {
      _loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        elevation: 1000.0,
        centerTitle: true,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Your',
              style: TextStyle(color: Colors.blue),
            ),
            Text(
              'News',
              style: TextStyle(color: Colors.red),
            ),
          ],
        ),
      ),
      body: _loading
          ? Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 16,
              ),
              child: Shimmer.fromColors(
                baseColor: Colors.grey[300],
                highlightColor: Colors.grey[100],
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Shimmertile(),
                      Shimmertile(),
                      Shimmertile(),
                    ],
                  ),
                ),
              ),
            )
          : SingleChildScrollView(
              child: Container(
                color: Colors.black87,
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      child: ListView.builder(
                        itemCount: categories.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return CategoryTile(
                            imageurl: categories[index].imageurl,
                            categoryname: categories[index].categoryName,
                          );
                        },
                      ),
                    ),
                    //Blog
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: ListView.builder(
                        physics: ClampingScrollPhysics(),
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
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
