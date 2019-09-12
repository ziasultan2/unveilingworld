import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Events extends StatefulWidget {
  @override
  _EventsState createState() => _EventsState();
}

class _EventsState extends State<Events> {


  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          title: const Text('EVENTS'),
          centerTitle: true,
          backgroundColor: Color(0xFF1A237E),
        ),
        body: Container(
          child:
          ListView(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(bottom: 20.0),
               child:
               Stack(
                 alignment: Alignment.center,
                 children: <Widget>[
                   Image.asset('images/events_bd.jpg', height: 200, fit: BoxFit.cover,),
                   Container(
                     child: Text('EVENTS', style: TextStyle(fontSize: 80.0, fontWeight: FontWeight.bold, color: Colors.white,), textAlign: TextAlign.center,),
                   )
                 ],
               ),
              ),

              Card(
                child: ListTile(
                  leading: Column(
                    children: <Widget>[
                      Text('SEP', style: TextStyle(fontSize: 16),),
                      Text('13', style: TextStyle(fontSize: 30),)
                    ],
                  ),
                  title: Text('Sister 2 Sister', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                  onTap: (){
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content:
                            Container(
                              height: 200,
                              child: Column(
                                children: <Widget>[
                                  Text('Sister 2 Sister', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold, height: 2),),
                                  Text('Women Only, Empowerment Session', style: TextStyle(fontSize: 16, height: 1.5), textAlign: TextAlign.center,),
                                  Text('7pm - 10pm', style: TextStyle(fontSize: 16, height: 1.5), textAlign: TextAlign.left,),
                                  InkWell(
                                    child:Text('37 Frank Cook Rd., Newnan Georgia', style: TextStyle(fontSize: 16, height: 1.5), textAlign: TextAlign.center,),
                                    onTap: _address,
                                  ),

                                ],
                              ),
                            ),
                            shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  style: BorderStyle.none,
                                ),
                                borderRadius: BorderRadius.circular(20)
                            ),
                          );
                        });
                  },
                ),
              ),
              Card(
                child: ListTile(
                  leading: Column(
                    children: <Widget>[
                      Text('SEP', style: TextStyle(fontSize: 16),),
                      Text('14', style: TextStyle(fontSize: 30),)
                    ],
                  ),
                  title: Text('Sister 2 Sister', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                  onTap: (){
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content:
                            Container(
                              height: 200,
                              child: Column(
                                children: <Widget>[
                                  Text('Sister 2 Sister', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold, height: 2),),
                                  Text('Women Only, Empowerment Session', style: TextStyle(fontSize: 16, height: 1.5), textAlign: TextAlign.center,),
                                  Text('9am - 4pm', style: TextStyle(fontSize: 16, height: 1.5), textAlign: TextAlign.left,),
                                  InkWell(
                                    child:Text('37 Frank Cook Rd., Newnan Georgia', style: TextStyle(fontSize: 16, height: 1.5), textAlign: TextAlign.center,),
                                    onTap: _address,
                                  ),
                                ],
                              ),
                            ),
                            shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  style: BorderStyle.none,
                                ),
                                borderRadius: BorderRadius.circular(20)
                            ),
                          );
                        });
                  },
                ),
              ),
              Card(
                child: ListTile(
                  leading: Column(
                    children: <Widget>[
                      Text('OCT', style: TextStyle(fontSize: 16),),
                      Text('18', style: TextStyle(fontSize: 30),)
                    ],
                  ),
                  title: Text('Holy Convocation', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                  onTap: (){
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content:
                            Container(
                              height: 200,
                              child: Column(
                                children: <Widget>[
                                  Text('Holy Convocation', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold, height: 2),),
                                  Text('Holy Convocation, Consecration, and Affirmation Service', style: TextStyle(fontSize: 16, height: 1.5), textAlign: TextAlign.center,),
                                  Text('7pm - 10pm & 9am-5pm', style: TextStyle(fontSize: 16, height: 1.5), textAlign: TextAlign.left,),
                                  InkWell(
                                    child:Text('37 Frank Cook Rd., Newnan Georgia', style: TextStyle(fontSize: 16, height: 1.5), textAlign: TextAlign.center,),
                                    onTap: _address,
                                  ),
                                ],
                              ),
                            ),
                            shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  style: BorderStyle.none,
                                ),
                                borderRadius: BorderRadius.circular(20)
                            ),
                          );
                        });
                  },
                ),
              ),
              Card(
                child: ListTile(
                  leading: Column(
                    children: <Widget>[
                      Text('OCT', style: TextStyle(fontSize: 16),),
                      Text('19', style: TextStyle(fontSize: 30),)
                    ],
                  ),
                  title: Text('Holy Convocation', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                  onTap: (){
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content:
                            Container(
                              height: 200,
                              child: Column(
                                children: <Widget>[
                                  Text('Holy Convocation', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold, height: 2),),
                                  Text('Holy Convocation, Consecration, and Affirmation Service', style: TextStyle(fontSize: 16, height: 1.5), textAlign: TextAlign.center,),
                                  Text('7pm - 10pm & 9am-5pm', style: TextStyle(fontSize: 16, height: 1.5), textAlign: TextAlign.left,),
                                  InkWell(
                                    child:Text('37 Frank Cook Rd., Newnan Georgia', style: TextStyle(fontSize: 16, height: 1.5), textAlign: TextAlign.center,),
                                    onTap: _address,
                                  ),
                                ],
                              ),
                            ),
                            shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  style: BorderStyle.none,
                                ),
                                borderRadius: BorderRadius.circular(20)
                            ),
                          );
                        });
                  },
                ),
              ),
              Card(
                child: ListTile(
                  leading: Column(
                    children: <Widget>[
                      Text('DEC', style: TextStyle(fontSize: 16),),
                      Text('04', style: TextStyle(fontSize: 30),)
                    ],
                  ),
                  title: Text('Bishop Marvin Sapp', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                  onTap: (){
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content:
                            Container(
                              height: 200,
                              child: Column(
                                children: <Widget>[
                                  Text('Bishop Marvin Sapp', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold, ),),
                                  Text('Come Join Us, and Be Revived', style: TextStyle(fontSize: 16, height: 1.5), textAlign: TextAlign.center,),
                                  Text('7pm - 10pm', style: TextStyle(fontSize: 16, height: 1.5), textAlign: TextAlign.left,),
                                  InkWell(
                                    child:Text('37 Frank Cook Rd., Newnan Georgia', style: TextStyle(fontSize: 16, height: 1.5), textAlign: TextAlign.center,),
                                    onTap: _address,
                                  ),
                                ],
                              ),
                            ),
                            shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  style: BorderStyle.none,
                                ),
                                borderRadius: BorderRadius.circular(20)
                            ),
                          );
                        });
                  },
                ),
              ),
              Card(
                child: ListTile(
                  leading: Column(
                    children: <Widget>[
                      Text('DEC', style: TextStyle(fontSize: 16),),
                      Text('08', style: TextStyle(fontSize: 30),)
                    ],
                  ),
                  title: Text('Apostle Tilden Colton', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),),
                  onTap: (){
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            content:
                            Container(
                              height: 200,
                              child: Column(
                                children: <Widget>[
                                  Text('Apostle Tilden Colton', style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold, ),),

                                  InkWell(
                                    child:Text('37 Frank Cook Rd., Newnan Georgia', style: TextStyle(fontSize: 16, height: 1.5), textAlign: TextAlign.center,),
                                    onTap: _address,
                                  ),
                                ],
                              ),
                            ),
                            shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  style: BorderStyle.none,
                                ),
                                borderRadius: BorderRadius.circular(20)
                            ),
                          );
                        });
                  },
                ),
              ),
            ],
          ),

        ),
      );
  }


  void _address() {
    launch('https://www.google.com/maps/place/37+Frank+Cook+Rd,+Newnan,+GA+30263,+USA/data=!4m2!3m1!1s0x88f4c5ed3f081a97:0xed10503b9e01e1c2?sa=X&ved=2ahUKEwi3mbuu7MbkAhVdH48KHYRoBj8Q8gEwAHoECAoQAQ');

  }
}

