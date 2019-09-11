import 'package:church/UI/menu/donate.dart';
import 'package:church/UI/menu/events.dart';
import 'package:church/UI/menu/screens/note_list.dart';
import 'package:flutter/material.dart';

import '../welcome.dart';
import 'home.dart';
import 'menu.dart';


class Homes extends StatefulWidget {
  @override
  _HomesState createState() => _HomesState();
}

class _HomesState extends State<Homes> with SingleTickerProviderStateMixin{

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

    muchDelayedAnimation = Tween(begin: 1.0, end: -1.0).animate(
        CurvedAnimation(parent: animationController,
            curve: Interval(0.9, 1.0, curve: Curves.fastLinearToSlowEaseIn)));

  }
  

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var container_height = (MediaQuery.of(context).size.height-250)/3;
    animationController.forward();
    return
    AnimatedBuilder(animation: animationController,
        builder: (BuildContext context, Widget child){
        return Scaffold(
            appBar: AppBar(
              titleSpacing: 0.0,
              title: Container(
                margin: const EdgeInsets.all(15.0),
                padding: const EdgeInsets.all(3.0),
                child: Text('WELCOME'),
              ),
              centerTitle: true,
              backgroundColor: Color(0xFF1A237E),
            ),

            body:
            Container(
                decoration: BoxDecoration(color: Color(0xFF212121)),
                child: Column(

                  children: <Widget>[
                    Transform(
                      transform: Matrix4.translationValues(0.0, animation.value* width, 5.0),
                      child: SizedBox(
                          height: container_height,
                          width: double.infinity,
                          child: Image.asset('images/1.jpeg', fit: BoxFit.cover,)
                      ),
                    ),

                    Padding(padding: EdgeInsets.only(top: 3.0),),

                    Transform(
                      transform: Matrix4.translationValues(animation.value * width, 0.0, 0.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                              flex: 1,
                              child:
                              Column(
                                children: <Widget>[
                                  InkWell(
                                    onTap: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => Welcome()),
                                      );
                                    },
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: <Widget>[
                                        Container(
                                          padding:EdgeInsets.only(left:10.0, top: 10, bottom: 10, right: 5.0),
                                          child: Image.asset('images/welcome.png', fit: BoxFit.cover, height: container_height, width: double.infinity,),
                                        ),

                                        Container(
                                          width: double.infinity,
                                          margin: const EdgeInsets.all(15.0),
                                          padding: const EdgeInsets.all(10.0),
                                          decoration: new BoxDecoration(
                                              border: new Border.all(color: Colors.white)
                                          ),
                                          child: Text('WELCOME', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white,), textAlign: TextAlign.center,),
                                        )


                                      ],
                                    ),
                                  ),

                                  Container(
                                      margin: EdgeInsets.only(top: 5.0),
                                      child:Text('WELCOME', textAlign: TextAlign.left, style: TextStyle(color: Colors.white),)
                                  )
                                ],)

                          ),

                          Padding(padding: EdgeInsets.only(left: 10.0),),

                          Expanded(
                              flex: 1,
                              child:
                              Column(
                                children: <Widget>[
                                  InkWell(
                                    onTap: (){
                                      Navigator.push(context,
                                          MaterialPageRoute(
                                            builder: (context) => Donate(),
                                          )
                                      );
                                    },
                                    child:  Stack(
                                      alignment: Alignment.center,
                                      children: <Widget>[
                                        Container(
                                          padding:EdgeInsets.only(left:5, right: 10, top: 10, bottom: 10),
                                          child: Image.asset('images/give.jpg', fit: BoxFit.cover, height: container_height, width: double.infinity,),
                                        ),


                                        Container(
                                          width: double.infinity,
                                          margin: const EdgeInsets.all(15.0),
                                          padding: const EdgeInsets.all(10.0),
                                          decoration: new BoxDecoration(
                                              border: new Border.all(color: Colors.white)
                                          ),
                                          child: Text('GIVE', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white,), textAlign: TextAlign.center,),
                                        )


                                      ],
                                    ),
                                  ),

                                  Container(
                                      margin: EdgeInsets.only(top: 5.0),
                                      child:Text('GIVE', style: TextStyle(color: Colors.white),)
                                  )
                                ],)

                          ),

                        ],
                      ),
                    ),

                    Padding(padding:EdgeInsets.only(top:10.0)),

                    Transform(
                      transform: Matrix4.translationValues(delayedAnimation.value*width, 0.0, 0.0),

                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                              flex: 1,
                              child:
                              Column(
                                children: <Widget>[
                                  InkWell(
                                    onTap: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => Events()),
                                      );
                                    },
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: <Widget>[
                                        Container(
                                          padding:EdgeInsets.only(left:10.0, top: 10, bottom: 10, right: 5.0),
                                          child: Image.asset('images/events.jpg', fit: BoxFit.cover, height: container_height, width: double.infinity,),
                                        ),

                                        Container(
                                          width: double.infinity,
                                          margin: const EdgeInsets.all(15.0),
                                          padding: const EdgeInsets.all(10.0),
                                          decoration: new BoxDecoration(
                                              border: new Border.all(color: Colors.white)
                                          ),
                                          child: Text('EVENTS', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white,), textAlign: TextAlign.center,),
                                        )


                                      ],
                                    ),
                                  ),

                                  Container(
                                    //margin: EdgeInsets.only(top: 5.0),
                                      child:Text('EVENTS',  textAlign: TextAlign.left, style: TextStyle(color: Colors.white),)
                                  )
                                ],)

                          ),

                          Padding(padding: EdgeInsets.only(left: 10.0),),

                          Expanded(
                              flex: 1,
                              child:
                              Column(
                                children: <Widget>[
                                  InkWell(
                                    onTap: (){
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => NoteList()),
                                      );
                                    },
                                    child: Stack(
                                      alignment: Alignment.center,
                                      children: <Widget>[
                                        Container(
                                          padding:EdgeInsets.only(left:5, right: 10, top: 10, bottom: 10),
                                          child: Image.asset('images/notes.jpg', fit: BoxFit.cover, height: container_height, width: double.infinity,),
                                        ),


                                        Container(
                                          width: double.infinity,
                                          margin: const EdgeInsets.all(15.0),
                                          padding: const EdgeInsets.all(10.0),
                                          decoration: new BoxDecoration(
                                              border: new Border.all(color: Colors.white)
                                          ),
                                          child: Text('NOTES', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white,), textAlign: TextAlign.center,),
                                        )


                                      ],
                                    ),
                                  ),
                                  Container(
                                    // margin: EdgeInsets.only(top: 5.0),
                                      child:Text('NOTES', style: TextStyle(color: Colors.white), textAlign: TextAlign.center,)
                                  )
                                ],)

                          ),

                        ],
                      ),
                    ),
                  ],
                )
            ),

            drawer: Menu(),

          );
        });

  }
}
