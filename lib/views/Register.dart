import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/views/home.dart';
import 'Login.dart';
import '../widgets/Buttonwiz.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Register',
                      style: TextStyle(fontSize: 40, color: Color(0xff041788)),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                          child: CachedNetworkImage(
                              height: 250,
                              imageUrl:
                                  'https://blush.design/api/download?shareUri=eGbNX0UGd&s=0%7EFF8282&w=800&h=800&fm=png'),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Expanded(
                          child: CachedNetworkImage(
                              height: 250,
                              imageUrl:
                                  'https://blush.design/api/download?shareUri=ELpETUS-p&w=800&h=800&fm=png'),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xff7A83C0),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60),
                        topRight: Radius.circular(60)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: <Widget>[
                        TextBlocks(fieldname: 'Name', colour: Colors.white),
                        SizedBox(
                          height: 20,
                        ),
                        TextBlocks(
                          fieldname: 'E-mail',
                          colour: Colors.white,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextBlocks(fieldname: 'Password', colour: Colors.white),
                        SizedBox(
                          height: 30,
                        ),
                        Buttonwiz(
                          onpress: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return Home();
                                },
                              ),
                            );
                          },
                          text: 'Register',
                          col: Color(0xff001386),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Already have an account??',
                              style: TextStyle(color: Colors.white),
                            ),
                            FlatButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return Login();
                                    },
                                  ),
                                );
                              },
                              child: Text(
                                'Log-in',
                                style: TextStyle(
                                    color: Color(0xffFF0057), fontSize: 20),
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: CachedNetworkImage(
                              imageUrl:
                                  'https://blush.design/api/download?shareUri=Yc9z0kozC&w=800&h=800&fm=png'),
                        ),
                      ],
                    ),
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

class TextBlocks extends StatelessWidget {
  TextBlocks({Key key, @required this.fieldname, this.colour})
      : super(key: key);
  final String fieldname;
  final Color colour;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
      child: Container(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.white))),
        child: TextField(
          decoration: InputDecoration(
            hintText: fieldname,
            hintStyle: TextStyle(
                color: colour, fontSize: 30, fontWeight: FontWeight.w300),
          ),
        ),
      ),
    );
  }
}
