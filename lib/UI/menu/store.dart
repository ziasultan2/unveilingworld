import 'package:church/UI/menu/purchase.dart';
import 'package:flutter/material.dart';

class Store extends StatefulWidget {
  @override
  _StoreState createState() => _StoreState();
}

class _StoreState extends State<Store> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('STORE'),
        centerTitle: true,
        backgroundColor: Color(0xFF1A237E),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 10, left: 10, right: 10),
        child: ListView(
          children: <Widget>[


            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              color: Color(0xFFF6F7FB),
              child:
                  Container(
                    padding: EdgeInsets.only(top: 10, bottom: 20, left: 10, right: 10),
                    child:Column(
                      children: <Widget>[
                        Container(
                          child: Text('THE ESSENCE OF SPIRITUAL DISCIPLINE', style: TextStyle(fontSize: 20), textAlign: TextAlign.center,),
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: InkWell(
                                child: Image.asset('images/book1.png', height: 300,),
                                onTap: (){

                                },
                              ),),
                            Container(width: 10,),
                            Expanded(
                              flex: 1,
                              child: InkWell(
                                child: Image.asset('images/book1back.png', height: 300,),
                                onTap: (){

                                },
                              ),),

                          ],
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 30, right: 30, top: 5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              SizedBox(width: double.infinity, child:  RaisedButton(child: Text('Amazon', style: TextStyle(color: Colors.white, fontSize: 20),), onPressed: (){
                                Navigator.push(context,
                                    MaterialPageRoute(
                                      builder: (context) => Purchase(url:'https://www.amazon.com/Essence-Spiritual-Discipline-Principles-Discipleship/dp/0999715941/ref=nodl_'),
                                    )
                                );
                              }, color: Color(0xFF2431af),  shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))), ),

                              SizedBox(width: double.infinity, child:  RaisedButton(child: Text('Barnes & Noble', style: TextStyle(color: Colors.white, fontSize: 20),), onPressed: (){
                                Navigator.push(context,
                                    MaterialPageRoute(
                                      builder: (context) => Purchase(url:'https://www.barnesandnoble.com/w/the-essence-of-spiritual-discipline-deborah-sheppard/1128666244'),
                                    )
                                );
                              }, color: Color(0xFF2431af),  shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))), ),

                              SizedBox(width: double.infinity, child:  RaisedButton(child: Text('Thrift Books', style: TextStyle(color: Colors.white, fontSize: 20),), onPressed: (){
                                Navigator.push(context,
                                    MaterialPageRoute(
                                      builder: (context) => Purchase(url:'https://www.thriftbooks.com/w/the-essence-of-spiritual-discipline-principles-of-successful-discipleship_deborah-sheppard/19754422/?mkwid=%7cdm&pcrid=381000924854&pkw=&pmt=&slid=&plc=&pgrid=76891812679&ptaid=pla-814373640385&gclid=EAIaIQobChMIzPKK1vu-5AIVwZ6zCh02yQG2EAQYASABEgI5FfD_BwE#isbn=0999715941&idiq=30116684'),
                                    )
                                );
                              }, color: Color(0xFF2431af),  shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))), ),

                              SizedBox(width: double.infinity, child:  RaisedButton(child: Text('Book Depository', style: TextStyle(color: Colors.white, fontSize: 20),), onPressed: (){
                                Navigator.push(context,
                                    MaterialPageRoute(
                                      builder: (context) => Purchase(url:'https://www.bookdepository.com/Essence-Spiritual-Discipline-Deborah-Sheppard/9780999715949'),
                                    )
                                );
                              }, color: Color(0xFF2431af),  shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))), ),
                            ],
                          ) ,
                        )

                      ],
                    ),
                  )

            ),

            Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Color(0xFFF6F7FB),
                child:
                Container(
                  padding: EdgeInsets.only(top: 10, bottom: 20, left: 10, right: 10),
                  child:Column(
                    children: <Widget>[
                      Container(
                        child: Text('JUNIA ARISE', style: TextStyle(fontSize: 20),),
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: InkWell(
                              child: Image.asset('images/book2.png', height: 300,),
                              onTap: (){

                              },
                            ),),
                          Container(width: 10,),
                          Expanded(
                            flex: 1,
                            child: InkWell(
                              child: Image.asset('images/book2back.png', height: 300,),
                              onTap: (){

                              },
                            ),),

                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 30, right: 30, top: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            SizedBox(width: double.infinity, child:  RaisedButton(child: Text('Amazon', style: TextStyle(color: Colors.white, fontSize: 20),), onPressed: (){
                              Navigator.push(context,
                                  MaterialPageRoute(
                                    builder: (context) => Purchase(url:'https://www.amazon.com/gp/aw/d/099971595X/ref=tmm_pap_title_sr?ie=UTF8&qid=&sr='),
                                  )
                              );
                            }, color: Color(0xFF2431af),  shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))), ),

                            SizedBox(width: double.infinity, child:  RaisedButton(child: Text('Barnes & Noble', style: TextStyle(color: Colors.white, fontSize: 20),), onPressed: (){
                              Navigator.push(context,
                                  MaterialPageRoute(
                                    builder: (context) => Purchase(url:'https://m.barnesandnoble.com/w/junia-arise-axel-sippach/1129136720'),
                                  )
                              );
                            }, color: Color(0xFF2431af),  shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))), ),

                          ],
                        ) ,
                      )

                    ],
                  ),
                )

            ),

            Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                color: Color(0xFFF6F7FB),
                child:
                Container(
                  padding: EdgeInsets.only(top: 10, bottom: 20, left: 10, right: 10),
                  child:Column(
                    children: <Widget>[
                      Container(
                        child: Text('ReBOUND', style: TextStyle(fontSize: 20),),
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: InkWell(
                              child: Image.asset('images/book3.jpeg', height: 300,),
                              onTap: (){

                              },
                            ),),

                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 30, right: 30, top: 5),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            SizedBox(width: double.infinity, child:  RaisedButton(child: Text('Comin Soon', style: TextStyle(color: Colors.white, fontSize: 20),), onPressed: (){}, color: Color(0xFF2431af),  shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0))), ),

                          ],
                        ) ,
                      )

                    ],
                  ),
                )

            ),

          ],
        ),
      ),
    );
  }
}
