import 'package:church/UI/home/home.dart';
import 'package:church/UI/home/menu.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Live extends StatefulWidget {
  @override
  _LiveState createState() => _LiveState();
}

class _LiveState extends State<Live> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3),() async{
        const url =
            'https://www.youtube.com/channel/UCZag9h_r2PdI6UzrrPORMrQ/featured';
        if (await canLaunch(url)) {
          await launch(url);
          print('success');
        } else {
          print('failed');
          throw 'Could not launch $url';
        }
          Navigator.push(context,
        MaterialPageRoute(
          builder: (context) => Home(),
        )
    );
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('LIVE'),
        centerTitle: true,
        backgroundColor: Color(0xFF1A237E),
      ),
      body: Center(
        child: CircularProgressIndicator(),
      ),
      drawer: Menu(),
    );
  }
}
