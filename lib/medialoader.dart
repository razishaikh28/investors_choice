import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Medialoader extends StatefulWidget {

  final String url;

  Medialoader({required this.url});

  @override
  _MedialoaderState createState() => _MedialoaderState();
}

class _MedialoaderState extends State<Medialoader> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: WebView(
          initialUrl: widget.url,
          javascriptMode: JavascriptMode.unrestricted,
        ),
      ),
    );
  }
}