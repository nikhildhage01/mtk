import 'package:flutter/material.dart';
class HowToPlay extends StatefulWidget {

  @override
  _HowToPlayState createState() => _HowToPlayState();
}

class _HowToPlayState extends State<HowToPlay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('How To Play'),
        automaticallyImplyLeading: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Center(
              child: Text('How to Play RS OFFICIAL', style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20
              ),),
            ),
            SizedBox(height: 20,),
            Center(
              child: Flexible(
                child: Text(
                    'Simple Download our application from playstore. Register with your mobile number. Email ID and '
                        'Username  with RS OFFICIAL. Log into application using username and password. Select the main'
                        'type then the Game type select your favourite number and play the game',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
