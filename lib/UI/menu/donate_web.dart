import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DonateWeb extends StatefulWidget {
  @override
  _DonateWebState createState() => _DonateWebState();
}

class _DonateWebState extends State<DonateWeb> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(0xFF1A237E),
        title: const Text('CASHAPP', textAlign: TextAlign.center,),
        centerTitle: true,
      ),
      body:  WebView(
        initialUrl: 'https://cash.app/\$Apostledeborah',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
