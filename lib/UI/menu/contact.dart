import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatefulWidget {
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> with SingleTickerProviderStateMixin {

  Animation image, address, phone, serviceTime, service1, service2, service3, service4, service5, service6, service7, follow, social;
  AnimationController animationController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(
        vsync: this,
        duration: Duration(seconds: 3));

    image = Tween(begin: -1.0, end: 0.0).animate(
        CurvedAnimation(parent: animationController,
            curve: Curves.fastOutSlowIn));

    address = Tween(begin: 1.0, end: 0.0).animate(
        CurvedAnimation(parent: animationController,
            curve: Interval(0.5, 1.0, curve: Curves.fastOutSlowIn)));

    serviceTime = Tween(begin: 1.0, end: 0.0).animate(
        CurvedAnimation(parent: animationController,
            curve: Interval(0.40, 1.0, curve: Curves.fastLinearToSlowEaseIn)));

    service1 = Tween(begin: 1.0, end: 0.0).animate(
        CurvedAnimation(parent: animationController,
            curve: Interval(0.45, 1.0, curve: Curves.fastLinearToSlowEaseIn)));

    service2 = Tween(begin: -1.0, end: 0.0).animate(
        CurvedAnimation(parent: animationController,
            curve: Interval(0.50, 1.0, curve: Curves.fastLinearToSlowEaseIn)));

    service3 = Tween(begin: 1.0, end: 0.0).animate(
        CurvedAnimation(parent: animationController,
            curve: Interval(0.55, 1.0, curve: Curves.fastLinearToSlowEaseIn)));

    service4 = Tween(begin: -1.0, end: 0.0).animate(
        CurvedAnimation(parent: animationController,
            curve: Interval(0.60, 1.0, curve: Curves.fastLinearToSlowEaseIn)));

    service5 = Tween(begin: 1.0, end: 0.0).animate(
        CurvedAnimation(parent: animationController,
            curve: Interval(0.65, 1.0, curve: Curves.fastLinearToSlowEaseIn)));

    service6 = Tween(begin: -1.0, end: 0.0).animate(
        CurvedAnimation(parent: animationController,
            curve: Interval(0.70, 1.0, curve: Curves.fastLinearToSlowEaseIn)));

    service7 = Tween(begin: 1.0, end: 0.0).animate(
        CurvedAnimation(parent: animationController,
            curve: Interval(0.75, 1.0, curve: Curves.fastLinearToSlowEaseIn)));

    follow = Tween(begin: -1.0, end: 0.0).animate(
        CurvedAnimation(parent: animationController,
            curve: Interval(0.1, 1.0, curve: Curves.fastLinearToSlowEaseIn)));

    social = Tween(begin: 1.0, end: 0.0).animate(
        CurvedAnimation(parent: animationController,
            curve: Interval(0.3, 1.0, curve: Curves.fastLinearToSlowEaseIn)));

    phone = Tween(begin: 1.0, end: 0.0).animate(
        CurvedAnimation(parent: animationController,
            curve: Interval(0.3, 1.0, curve: Curves.fastLinearToSlowEaseIn)));
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    animationController.forward();
    return AnimatedBuilder(animation: animationController,
        builder: (BuildContext context, Widget child){
      return Scaffold(
        appBar: AppBar(
          title: const Text('CONTACT US'),
          centerTitle: true,
          backgroundColor: Color(0xFF1A237E),
        ),
        body: Container(
          margin: EdgeInsets.only(top: 20, left: 10, right: 10),
          child: ListView(
            children: <Widget>[
              Column(
                children: <Widget>[

                  Transform(
          transform: Matrix4.translationValues(image.value * width, 0.0, 0.0),
                    child: Container(
                      margin: EdgeInsets.only(bottom: 25),
                      child: Image.asset('images/5.jpeg',),
                    ),
                  ),

                  Transform(
                    transform: Matrix4.translationValues(address.value * width, 0.0, 0.0),
                    child: ListTile(
                      leading: Icon(FontAwesomeIcons.mapMarkerAlt, color: Color(0xFF54467B)),
                      title: Text('37 Frank Cook RdNewnan, Georgia 30263', style: TextStyle(fontSize: 20, color: Color(0xFF54467B)), textAlign: TextAlign.left,),
                    ),
                  ),

                  Transform(
                    transform: Matrix4.translationValues(phone.value * width, 0.0, 0.0),
                    child:
                    InkWell(
                      onTap: () async{
                        const url = "tel:+1 (404) 379-1879";

                        if (await canLaunch(url))
                        {
                          await launch(url);
                        }
                        else{
                          throw 'Could not launch $url';
                        }
                      },
                      child:ListTile(
                        leading: Icon(FontAwesomeIcons.tabletAlt, color: Color(0xFF54467B),),
                        title:
                        Text('+1 (404) 379-1879', style: TextStyle(fontSize: 20, color: Color(0xFF54467B)), textAlign: TextAlign.left,),
                      ),
                    ),

                  ),

                  Transform(
                    transform: Matrix4.translationValues(service1.value * width, 0.0, 0.0),
                    child: Container(
                      margin: EdgeInsets.only(top: 10, bottom: 15),
                      child: Text('Service Times', textAlign: TextAlign.center, style: TextStyle(fontSize: 25, color: Color(0xFF54467B), decoration: TextDecoration.underline),),
                    ),
                  ),

                  Transform(
                    transform: Matrix4.translationValues(service2.value * width, 0.0, 0.0),
                    child: ListTile(
                        leading:
                        Column(
                          children: <Widget>[
                            Text('TUE', style: TextStyle(fontSize: 17, color: Color(0xFF54467B)),),
                            Text('5:00pm - 8:00pm', style: TextStyle(fontSize: 16, color: Color(0xFF54467B)),),
                          ],
                        ),
                        title:
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Container(
                            padding: EdgeInsets.only(top: 15, bottom: 15, left: 20),
                            color: Color(0xFFFCF3ED),
                            child: Text('Leadership Studies', style: TextStyle(fontSize: 17, color: Color(0xFF54467B)),),
                          ),
                        )

                    ),
                  ),

                  Transform(
                    transform: Matrix4.translationValues(service3.value * width, 0.0, 0.0),
                    child: ListTile(
                        leading: Column(
                          children: <Widget>[
                            Text('WED', style: TextStyle(fontSize: 17, color: Color(0xFF54467B)),),
                            Text('6:00pm - 7:30pm', style: TextStyle(fontSize: 16, color: Color(0xFF54467B)),),
                          ],
                        ),
                        title:
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Container(
                            padding: EdgeInsets.only(top: 15, bottom: 15, left: 20),
                            color: Color(0xFFF2EBFE),
                            child: Text('Bible Studies', style: TextStyle(fontSize: 17, color: Color(0xFF54467B)),),
                          ),
                        )

                    ),
                  ),

                  Transform(
                    transform: Matrix4.translationValues(service4.value * width, 0.0, 0.0),
                    child: ListTile(
                        leading: Column(
                          children: <Widget>[
                            Text('SUN', style: TextStyle(fontSize: 17, color: Color(0xFF54467B)),),
                            Text('8:00am', style: TextStyle(fontSize: 16, color: Color(0xFF54467B)),),
                          ],
                        ),
                        title:
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Container(
                            padding: EdgeInsets.only(top: 15, bottom: 15, left: 20),
                            color: Color(0xFFE9F8FE),
                            child: Text('Corporate Prayer', style: TextStyle(fontSize: 17, color: Color(0xFF54467B)),),
                          ),
                        )

                    ),
                  ),

                  Transform(
                    transform: Matrix4.translationValues(service5.value * width, 0.0, 0.0),
                    child: ListTile(
                        leading: Column(
                          children: <Widget>[
                            Text('SUN', style: TextStyle(fontSize: 17, color: Color(0xFF54467B)),),
                            Text('9:00am', style: TextStyle(fontSize: 16, color: Color(0xFF54467B)),),
                          ],
                        ),
                        title:
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Container(
                            padding: EdgeInsets.only(top: 15, bottom: 15, left: 20),
                            color: Color(0xFFFCEEEE),
                            child: Text('Student lead Teachings', style: TextStyle(fontSize: 17, color: Color(0xFF54467B)),),
                          ),
                        )

                    ),
                  ),

                  Transform(
                    transform: Matrix4.translationValues(service6.value * width, 0.0, 0.0),
                    child: ListTile(
                        leading: Column(
                          children: <Widget>[
                            Text('SUN', style: TextStyle(fontSize: 17, color: Color(0xFF54467B)),),
                            Text('10:00am', style: TextStyle(fontSize: 16, color: Color(0xFF54467B)),),
                          ],
                        ),
                        title:
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Container(
                            padding: EdgeInsets.only(top: 15, bottom: 15, left: 20),
                            color: Color(0xFFECFCF9),
                            child: Text('Early Morning Teach By Apostle Wayne Sheppard', style: TextStyle(fontSize: 17, color: Color(0xFF54467B)),),
                          ),
                        )

                    ),
                  ),

                  Transform(
                    transform: Matrix4.translationValues(service7.value * width, 0.0, 0.0),
                    child: ListTile(
                        leading: Column(
                          children: <Widget>[
                            Text('SUN', style: TextStyle(fontSize: 17, color: Color(0xFF54467B)),),
                            Text('10:30', style: TextStyle(fontSize: 16, color: Color(0xFF54467B)),),
                          ],
                        ),
                        title:
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Container(
                            padding: EdgeInsets.only(top: 15, bottom: 15, left: 20),
                            color: Color(0xFFF6F7FB),
                            child: Text('Leadership teaching by Church Leaders', style: TextStyle(fontSize: 17, color: Color(0xFF54467B)),),
                          ),
                        )

                    ),
                  ),

                  Transform(
                    transform: Matrix4.translationValues(service1.value * width, 0.0, 0.0),
                    child: ListTile(
                        leading: Column(
                          children: <Widget>[
                            Text('SUN', style: TextStyle(fontSize: 17, color: Color(0xFF54467B)),),
                            Text('11:00am', style: TextStyle(fontSize: 16, color: Color(0xFF54467B)),),
                          ],
                        ),
                        title:
                        ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Container(
                            padding: EdgeInsets.only(top: 15, bottom: 15, left: 20),
                            color: Color(0xFFFCF3ED),
                            child: Text('Service by Apostle Deborah Sheppard', style: TextStyle(fontSize: 17, color: Color(0xFF54467B)),),
                          ),
                        )

                    ),
                  ),

                  Container(
                    height: 20,
                  ),



                ],
              )
            ],
          ),
        ),
      );
    });
  }
  @override
  void dispose(){
    animationController.dispose();
    super.dispose();
  }
}
