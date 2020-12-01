import 'package:flutter/material.dart';
import '../views/category_news.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CategoryTile extends StatelessWidget {
  CategoryTile({this.imageurl, this.categoryname});
  final imageurl;
  final categoryname;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return Category_news(categoryname.toString().toLowerCase());
            },
          ),
        );
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Container(
          margin: EdgeInsets.only(right: 15, top: 20),
          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: CachedNetworkImage(
                  imageUrl: imageurl,
                  width: 120,
                  height: 80,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                alignment: Alignment.center,
                color: Colors.black26,
                width: 120,
                height: 80,
                child: Text(
                  categoryname,
                  style: TextStyle(
                      fontSize: 13,
                      letterSpacing: 2,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
