import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'donate_web.dart';
class Donate extends StatefulWidget {
  @override
  _DonateState createState() => _DonateState();
}

class _DonateState extends State<Donate> with SingleTickerProviderStateMixin {

  Animation animation, delayedAnimation, muchDelayedAnimation, cashapp, givelify, tithely;
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
            curve: Interval(0.7, 1.0, curve: Curves.fastLinearToSlowEaseIn)));

    cashapp = Tween(begin: 1.0, end: 0.0).animate(
        CurvedAnimation(parent: animationController,
            curve: Interval(0.6, 1.0, curve: Curves.fastLinearToSlowEaseIn)));

    givelify = Tween(begin: -1.0, end: 0.0).animate(
        CurvedAnimation(parent: animationController,
            curve: Interval(0.7, 1.0, curve: Curves.fastLinearToSlowEaseIn)));

    tithely = Tween(begin: 1.0, end: 0.0).animate(
        CurvedAnimation(parent: animationController,
            curve: Interval(0.7, 1.0, curve: Curves.fastLinearToSlowEaseIn)));


  }


  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    animationController.forward();
    return AnimatedBuilder(animation: animationController,
    builder: (BuildContext context, Widget child){
    return Scaffold(

      appBar: AppBar(
        title: Text('GIVE'),
        centerTitle: true,
        backgroundColor: Color(0xFF1A237E),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/donate.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            Transform(
              transform: Matrix4.translationValues(animation.value * width, 0.0, 0.0),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Center(
                      child: Text('UNVEILING WORLD', style: TextStyle(fontSize: 20, color: Colors.white, height: 2), ),
                    ),
                    Center(
                        child:RichText(
                          text: TextSpan(
                              text: 'GIVE ',
                              children: <TextSpan>[
                                TextSpan(text: 'ONLINE', style: TextStyle(fontWeight: FontWeight.bold)),
                              ],
                              style: TextStyle(fontSize: 45)
                          ),
                        )),
                  ],
                ),
              ),
            ),

            Transform(
              transform: Matrix4.translationValues(delayedAnimation.value * width, 0.0, 0.0),
              child: Container(
                margin: EdgeInsets.only(top: 30),
                child: Text('Giving is the greatest art of grace', style: TextStyle(fontSize: 25, color: Colors.white),),
              ),
            ),

            Transform(
              transform: Matrix4.translationValues(cashapp.value * width, 0.0, 0.0),
              child: Container(
                  margin: EdgeInsets.only(top: 30),
                  child:
                  InkWell(
                    onTap: () async {
                      const url = "https://cash.app/\$ApostleDeborah";

                      if (await canLaunch(url))
                      {

                        await launch(url, forceSafariVC: true);
                      }
                      else{
                        throw 'Could not launch $url';
                      }
                    },
                    child:  Container(

                      child: Text('Cashapp', style: TextStyle(fontSize: 17, color: Colors.white),),
                      decoration: new BoxDecoration(
                        color: Colors.black,
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 40, right: 40),
                    ),
                  )


              ),
            ),
            Transform(
              transform: Matrix4.translationValues(givelify.value * width, 0.0, 0.0),
              child: Container(
                  margin: EdgeInsets.only(top: 30),
                  child:
                  InkWell(
                    onTap: () async{
                      const url = "https://www.givelify.com/givenow/1.0/NDA4MzM=/selection";

                      if (await canLaunch(url))
                      {
                        await launch(url, forceSafariVC: true);
                      }
                      else{
                        throw 'Could not launch $url';
                      }

                    },
                    child:  Container(

                      child: Text('Givelify', style: TextStyle(fontSize: 17, color: Colors.white),),
                      decoration: new BoxDecoration(
                        color: Colors.black,
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 40, right: 40),
                    ),
                  )


              ),
            ),
            Transform(
              transform: Matrix4.translationValues(tithely.value * width, 0.0, 0.0),
              child: Container(
                  margin: EdgeInsets.only(top: 30),
                  child:
                  InkWell(
                    onTap: () async{
                      const url = "https://tithe.ly/give?c=483858";

                      if (await canLaunch(url))
                      {
                        await launch(url, forceSafariVC: true);
                      }
                      else{
                        throw 'Could not launch $url';
                      }

                    },
                    child:  Container(

                      child: Text('Tithe.ly', style: TextStyle(fontSize: 17, color: Colors.white),),
                      decoration: new BoxDecoration(
                        color: Colors.black,
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                      padding: const EdgeInsets.only(top: 10, bottom: 10, left: 40, right: 40),
                    ),
                  )


              ),
            ),

          ],
        ),

      ),
    );});
  }
  @override
  void dispose(){
    animationController.dispose();
    super.dispose();
  }
}
