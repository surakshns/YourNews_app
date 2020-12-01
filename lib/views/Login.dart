import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'Register.dart';
import '../widgets/Buttonwiz.dart';
import 'home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              CachedNetworkImage(
                  height: 350,
                  imageUrl:
                      'https://blush.design/api/download?shareUri=XPevQrK3-&s=0.4%7EFF8282&w=800&h=800&fm=png'),
              TextBlocks(fieldname: 'Name'),
              SizedBox(
                height: 20,
              ),
              TextBlocks(fieldname: 'Password'),
              SizedBox(
                height: 30,
              ),
              Buttonwiz(
                text: 'Login',
                col: Color(0xff001386),
                onpress: () {
                  Navigator.pushNamed(context, Home.id);
                },
              ),
              SizedBox(
                height: 40,
              ),
              FlatButton(
                onPressed: () {},
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(color: Colors.black),
                ),
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
    );
  }
}
