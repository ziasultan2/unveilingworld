
import 'package:church/UI/home/menu.dart';
import 'package:flutter/material.dart';


class Flyers extends StatefulWidget {
  @override
  _FlyersState createState() => _FlyersState();
}

class _FlyersState extends State<Flyers> {
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          titleSpacing: 0.0,
          title: Container(
            margin: const EdgeInsets.all(15.0),
            padding: const EdgeInsets.all(3.0),
            child: Text('FLYERS'),
          ),
          centerTitle: true,
          backgroundColor: Color(0xFF1A237E),
        ),
        body: ListView(
          children: <Widget>[

            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 20),
              child: Image.asset('images/flyers1.jpg', fit: BoxFit.contain),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 20),
              child: Image.asset('images/flyers2.jpg', fit: BoxFit.contain),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 20),
              child: Image.asset('images/flyers3.jpg', fit: BoxFit.contain),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 20),
              child: Image.asset('images/flyers4.jpg', fit: BoxFit.contain),
            ),

            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 20),
              child: Image.asset('images/2.jpeg', fit: BoxFit.contain),
            ),

            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 20),
              child: Image.asset('images/3.jpeg', fit: BoxFit.contain),
            ),

            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 20),
              child: Image.asset('images/4.jpeg', fit: BoxFit.contain),
            ),


          ],
        ),

        drawer: Menu(),
      );

  }
}
