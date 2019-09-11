
import 'package:church/UI/bible/bible.dart';
import 'package:church/UI/menu/flyers.dart';
import 'package:church/UI/menu/live.dart';
import 'package:flutter/material.dart';
import 'homes.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  Widget callPage(int currentIndex) {
    switch(currentIndex)
    {
      case 0: return Homes();
      case 1: return Live();
      case 2: return Bible();
      case 3: return Flyers();
      default: return Homes();
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Driver App',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: callPage(_currentIndex),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
//          unselectedItemColor: Colors.black,
          backgroundColor: Color(0xFF303030),
          currentIndex: _currentIndex,
          onTap: (value) {
            _currentIndex = value;
            setState(() {

            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.church, color: Color(0xFF757575),),
              title: Text('HOME', style: TextStyle(color: Color(0xFF757575),),),
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.live_tv, color: Color(0xFF757575),),
              title: Text('LIVE STREAM', style: TextStyle(color: Color(0xFF757575), fontSize: 12),),
            ),

            BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.bible, color: Color(0xFF757575),),
              title: Text('BIBLE', style: TextStyle(color: Color(0xFF757575),),),
            ),

            BottomNavigationBarItem(
              icon: Icon(Icons.library_books, color: Color(0xFF757575),),
              title: Text('FLYERS', style: TextStyle(color: Color(0xFF757575),),),
            ),
          ],
        ),
      ),
    );
  }
}
