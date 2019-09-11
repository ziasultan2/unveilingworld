import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class Purchase extends StatefulWidget {
  const Purchase({Key key, this.url}):super(key: key);
  final String url;
  @override
  _PurchaseState createState() => _PurchaseState();
}

class _PurchaseState extends State<Purchase> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(0xFF1A237E),
        title: const Text('Purchase', textAlign: TextAlign.center,),
        centerTitle: true,
      ),

      body:  WebView(
        initialUrl: '${widget.url}',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
