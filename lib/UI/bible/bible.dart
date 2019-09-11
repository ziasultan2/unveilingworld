import 'dart:async';

import 'package:church/UI/home/menu.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Bible extends StatefulWidget {
  @override
  _BibleState createState() => _BibleState();
}

class _BibleState extends State<Bible> with TickerProviderStateMixin{

  AnimationController _animationController;
  AnimationController _animationController1;
  Animation _animation;
  Animation animation;

  void myListener(status){
    if(status == AnimationStatus.completed){
      _animationController.removeStatusListener(myListener);

      _animationController1.forward();
    }
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(
        vsync: this,
        duration: Duration(seconds: 2));

    _animationController1 = AnimationController(
        vsync: this,
        duration: Duration(seconds: 2));
    _animation = Tween(begin: -1.0, end: 0.0).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.fastOutSlowIn,))..addStatusListener(myListener);

    animation = Tween(begin: 1.0, end: 0.0).animate(CurvedAnimation(
      parent: _animationController1,
      //curve: Curves.fastOutSlowIn,))..addStatusListener(myListener);
      curve: Curves.fastOutSlowIn,));
    _animationController.forward();
  }


  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color(0xFF1A237E),
        title: const Text('BIBLE', textAlign: TextAlign.center,),
        centerTitle: true,
      ),
      body:

      WebView(
        initialUrl: 'https://www.bible.com/bible/111/GEN.1.NIV',
        javascriptMode: JavascriptMode.unrestricted,
      ),


      drawer: Menu(),
    );
  }
}



