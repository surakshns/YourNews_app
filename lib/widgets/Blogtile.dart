import 'package:flutter/material.dart';
import '../views/article_view.dart';
import 'package:cached_network_image/cached_network_image.dart';

class BlogTile extends StatelessWidget {
  final String imageurl;
  final String title;
  final String desc;
  final String url;
  BlogTile(
      {@required this.imageurl,
      @required this.desc,
      @required this.title,
      @required this.url});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return Article_view(url);
        }));
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          decoration: BoxDecoration(color: Colors.black),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: CachedNetworkImage(
                    imageUrl: imageurl,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  title,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  desc,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white38,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
