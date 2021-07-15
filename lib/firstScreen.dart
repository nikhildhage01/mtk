import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:game/Screens/add_funds.dart';
import 'package:game/Screens/refer_and_earn.dart';
import 'package:game/inner%20screens/dashboard.dart';
import 'package:game/notifications.dart';
import 'package:line_icons/line_icons.dart';

class FirstScreen extends StatelessWidget {
  String time;
  String bidName;
  int bidnumber;
  String notification;
  FirstScreen(
      {Key? key,
      required this.time,
      required this.bidName,
      required this.bidnumber,
      required this.notification})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
        body: Column(
          children: [
            Container(
              height: 150,
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(20),
                  /*boxShadow: [
                    BoxShadow(
                        color: Colors.black45,
                        blurRadius: 16.0,
                        spreadRadius: 0.5,
                        offset: Offset(0.7, 0.7)
                    )
                  ]*/
              ),
              child: Column(

                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text('Earn While Playing',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text('Games, Play It, Win It and Feel It',
                        style: TextStyle(
                            fontSize: 18
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      SizedBox(width: 80,),
                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>AddFunds()));
                      },
                          style: ElevatedButton.styleFrom(
                              primary: Colors.blue
                          ),
                          child: Text('Add Funds')
                      ),
                      SizedBox(width: 10,),
                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ReferAndEarn()));
                      },
                          style: ElevatedButton.styleFrom(
                              primary: Colors.blue
                          ),
                          child: Text('Refer & Earn'),
                      ),
                    ],
                  ),
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 40,top: 3),
                            child: GestureDetector(
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Notifications()));
                              },
                              child: Text('Notifications',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 80,),
                          FaIcon(FontAwesomeIcons.whatsapp,color: Colors.green,),
                          SizedBox(width: 3,),
                          Text('7682829790',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>DashboardPage()));
                        },
                        child: Game(title: 'TIME', id: '450-99-360', status: 'Betting is Closed for all')),
                    Game(title: 'KALYAN', id: '268-8-****', status: 'Betting is Running for all',),
                    Game(title: 'MILAN DAY', id: '268-27-115', status: 'Betting is Closed for all',),
                    Game(title: 'KALYAN MORNING', id: '268-27-115', status: 'Betting is Running for all'),

                  ],
                ),
              ),
            )
          ],
        ),
    );
  }
}


class Game extends StatelessWidget {
  final String title;
  final String id;
  final String status;
  const Game({required this.title,required this.id,required this.status}) ;

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 150,
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white,
          // border: Border.all(),
          borderRadius: BorderRadius.circular(40),
          /*boxShadow: [
            BoxShadow(
                color: Colors.black45,
                blurRadius: 16.0,
                spreadRadius: 0.3,
                offset: Offset(0.5, 0.5)
            )
          ]*/
      ),
      child: Row(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Image.asset('assets/images/crown.png',height: 100,width: 80,)
            ),
          ),
          SizedBox(width: 20,),
          Column(
            children: [
              SizedBox(height: 30,),
              Align(alignment: Alignment.centerLeft,child: Text(title,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18
                ),
              )),
              SizedBox(height: 10),
              Text(id),
              SizedBox(height: 10,),
              Text(status)
            ],
          ),
          SizedBox(width: 25,),
        ],
      ),
    );
  }
}
