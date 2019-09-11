import 'package:church/UI/menu/contact.dart';
import 'package:church/UI/menu/donate.dart';
import 'package:church/UI/menu/store.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import 'home.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(

      child: Container(
        color: Color(0xFF151C5D),
        child: ListView(
          children: <Widget>[

            Container(
              child: Image.asset('images/5.jpeg', fit: BoxFit.cover,),
              // decoration: BoxDecoration(),
            ),

            Container(
              child: Column(
                children: <Widget>[

                  ListTile(
                    leading: Icon(FontAwesomeIcons.home, color: Colors.white, ),
                    title: Text('Home', style: TextStyle(color: Colors.white, fontSize: 17),),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(
                            builder: (context) => Home(),
                          )
                      );
                    },
                  ),
                  Divider(
                    color: Colors.white,
                    height: 15.0,
                  ),


                  // Cart
                  ListTile(
                    leading: Icon(FontAwesomeIcons.store, color: Colors.white, ),
                    title: Text('Store', style: TextStyle(color: Colors.white, fontSize: 17),),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(
                            builder: (context) => Store(),
                          )
                      );
                    },
                  ),
                  Divider(
                    color: Colors.white,
                    height: 15.0,
                  ),



                  ListTile(
                    leading: Icon(FontAwesomeIcons.envelopeOpen, color: Colors.white, ),
                    title: Text('Contact', style: TextStyle(color: Colors.white, fontSize: 17),),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(
                            builder: (context) => Contact(),
                          )
                      );
                    },
                  ),
                  Divider(
                    height: 2.0,
                  ),


                  Container(
                    margin: EdgeInsets.only(bottom: 10, top: 15),
                    child: Text('Follow Unveiling World', style: TextStyle(fontSize: 17, color: Colors.white),),
                  ),
                  Container(
                    width: 200,
                    margin: EdgeInsets.only(bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        InkWell(
                          onTap: () async {
                            const url = "https://www.linkedin.com/in/deborah-shepard-a74207a7/";

                            if (await canLaunch(url))
                            {
                              await launch(url);
                            }
                            else{
                              throw 'Could not launch $url';
                            }
                          },
                          child: Icon(FontAwesomeIcons.linkedin, color: Colors.white, size: 25,),
                        ),
                        InkWell(
                          onTap: () async {
                            const url = "https://www.facebook.com/Unveiling-Word-Global-Ministry-185742032122347/?ref=bookmarks";

                            if (await canLaunch(url))
                            {
                              await launch(url);
                            }
                            else{
                              throw 'Could not launch $url';
                            }
                          },
                          child: Icon(FontAwesomeIcons.facebookSquare, color: Colors.white, size: 25,),
                        ),
                        InkWell(
                          onTap: () async {
                            const url = "https://www.instagram.com/apostlesheppard/";

                            if (await canLaunch(url))
                            {
                              await launch(url);
                            }
                            else{
                              throw 'Could not launch $url';
                            }
                          },
                          child: Icon(FontAwesomeIcons.instagram, color: Colors.white, size: 25,),
                        ),
                        InkWell(
                          onTap: () async {
                            const url = "https://www.pinterest.com/unveilingword2008/";

                            if (await canLaunch(url))
                            {
                              await launch(url);
                            }
                            else{
                              throw 'Could not launch $url';
                            }
                          },
                          child: Icon(FontAwesomeIcons.pinterest, size: 25,color: Colors.white,),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
