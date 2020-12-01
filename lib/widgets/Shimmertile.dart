import 'package:flutter/material.dart';

class Shimmertile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      width: MediaQuery.of(context).size.width,
      child: Container(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(6),
                  bottomLeft: Radius.circular(6))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Container(
                    height: 180,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white,
                  )),
              SizedBox(
                height: 8,
              ),
              Container(
                height: 18,
                width: MediaQuery.of(context).size.width * 0.9,
                color: Colors.white,
              ),
              SizedBox(
                height: 6,
              ),
              Container(
                height: 18,
                width: MediaQuery.of(context).size.width * 0.6,
                color: Colors.white,
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 14,
                width: MediaQuery.of(context).size.width * 0.9,
                color: Colors.white,
              ),
              SizedBox(
                height: 6,
              ),
              Container(
                height: 14,
                width: MediaQuery.of(context).size.width * 0.5,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
