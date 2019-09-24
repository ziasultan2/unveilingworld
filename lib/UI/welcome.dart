import 'package:flutter/material.dart';
class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> with SingleTickerProviderStateMixin {

  Animation animation, delayedAnimation, muchDelayedAnimation;
  AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(
        vsync: this,
        duration: Duration(seconds: 3));
    animation = Tween(begin: -1.0, end: 0.0).animate(
        CurvedAnimation(parent: animationController,
            curve: Curves.fastOutSlowIn));
    delayedAnimation = Tween(begin: 1.0, end: 0.0).animate(
        CurvedAnimation(parent: animationController,
            curve: Interval(0.5, 1.0, curve: Curves.fastOutSlowIn)));

    muchDelayedAnimation = Tween(begin: 1.0, end: 0.0).animate(
        CurvedAnimation(parent: animationController,
            curve: Interval(0.5, 1.0, curve: Curves.fastLinearToSlowEaseIn)));

  }


  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    animationController.forward();

    return

      AnimatedBuilder(animation: animationController,
    builder: (BuildContext context, Widget child){
        return Scaffold(
        appBar: AppBar(
          title: Text('WELCOME'),
          centerTitle: true,
          backgroundColor: Color(0xFF1A237E),
        ),
        body: Container(
          child: ListView(
            children: <Widget>[

              Transform(
                  transform: Matrix4.translationValues(animation.value * width, 0.0, 0.0),
                  child: Image.asset('images/welcome.jpg', fit: BoxFit.fitHeight,)),

              Transform(
                transform: Matrix4.translationValues(delayedAnimation.value * width, 0.0, 0.0),
                child: Container(
                  margin: EdgeInsets.all(20),
                  child: Text('WELCOME', textAlign: TextAlign.center, style: TextStyle(fontSize: 40, fontFamily: 'FontleroyBrownNF', fontWeight: FontWeight.bold),),),
              ),

              Transform(
                transform: Matrix4.translationValues(muchDelayedAnimation.value * width, 0.0, 0.0),
                child: Container(
                  margin: EdgeInsets.only(top: 10, left: 10, right: 10),
                  child: Column(
                    children: <Widget>[
                      Text('Apostle Wayne & Deborah Sheppard are the Senior Leaders of Unveiling Word Global Ministries, here in the Great City of Newnan.  We are so excited to share our experience and love with you about The Risen Savior.  It is a pleasure to come in your space to make a announcement that Jesus Christ is Lord. Our Church Family is dedicated to the Good News of the Gospel of Jesus Christ, and we want to share it with you. Come and Join our Podcast, our Facebook lives, and our Church Services each Sunday, and Bible studies on Wednesday Nights, we would love to have you.', style: TextStyle(fontSize: 30, fontFamily: 'FontleroyBrownNF',), textAlign: TextAlign.justify,),


                    ],

                  ),

                ),
              ),


              Container(
                height: 30,
              )
            ],
          ),
        )
    );}
      );
  }
  @override
  @override
  void dispose(){
    animationController.dispose();
    super.dispose();
  }
}
