import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'Register.dart';
import '../widgets/Buttonwiz.dart';
import 'Login.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 90,
            ),
            CachedNetworkImage(
                height: 300,
                imageUrl:
                    'https://blush.design/api/download?shareUri=T8NRq-rr2&s=0.1%7EFF8282-0.2%7EB75858&w=800&h=800&fm=png'),
            Text(
              'WELCOME!',
              style: TextStyle(color: Color(0xff001386), fontSize: 50),
            ),
            Text(
              'to the world of News and Updates...',
              style: TextStyle(color: Color(0xff7A83C0), fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Buttonwiz(
              text: 'Login',
              col: Color(0xff001386),
              onpress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Login();
                    },
                  ),
                );
              },
            ),
            SizedBox(
              height: 20,
            ),
            Buttonwiz(
              text: 'Register',
              col: Color(0xff001386),
              onpress: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return Register();
                    },
                  ),
                );
              },
            ),
            Expanded(
              child: CachedNetworkImage(
                  imageUrl:
                      'https://blush.design/api/download?shareUri=zZ5hym3Cl&w=800&h=800&fm=png'),
            )
          ],
        ),
      ),
    );
  }
}
