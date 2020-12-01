import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Article_view extends StatefulWidget {
  static const String id = 'Article_view';
  final String url;
  Article_view(this.url);
  @override
  _Article_viewState createState() => _Article_viewState();
}

class _Article_viewState extends State<Article_view> {
  final Completer<WebViewController> _completer =
      Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0.0,
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
            Opacity(
              opacity: 0, child: Icon(Icons.save,size: 45,),),
          ],
        ),
      ),
      body: Container(
        child: WebView(
          initialUrl: widget.url,
          onWebViewCreated: ((WebViewController webViewController) {
            _completer.complete(webViewController);
          }),
        ),
      ),
    );
  }
}
