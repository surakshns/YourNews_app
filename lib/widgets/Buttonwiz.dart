import 'package:flutter/material.dart';

class Buttonwiz extends StatelessWidget {
  Buttonwiz({
    Key key,
    @required this.text,
    this.col,
    this.onpress,
  }) : super(key: key);
  final String text;
  final Color col;
  final Function onpress;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onpress,
      child: Container(
        height: 60,
        width: 700,
        decoration: BoxDecoration(
          color: col,
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
      ),
    );
  }
}
