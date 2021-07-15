import 'package:flutter/material.dart';

class GameRate extends StatefulWidget {

  @override
  _GameRateState createState() => _GameRateState();
}

class _GameRateState extends State<GameRate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Game Rate'),
        automaticallyImplyLeading: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('* Single Digit(1:9.5)',style: TextStyle(fontWeight:
            FontWeight.bold, fontSize: 18),),
            SizedBox(height: 7),
            Text('* Jodi Digit(1:95)',style: TextStyle(fontWeight:
            FontWeight.bold, fontSize: 18),),
            SizedBox(height: 7),
            Text('* Single Panna(1:150)',style: TextStyle(fontWeight:
            FontWeight.bold, fontSize: 18),),
            SizedBox(height: 7),
            Text('* Double Panna(1:300)',style: TextStyle(fontWeight:
            FontWeight.bold, fontSize: 18),),
            SizedBox(height: 7),
            Text('* Triple Panna(1:800)',style: TextStyle(fontWeight:
            FontWeight.bold, fontSize: 18),),
            SizedBox(height: 7),
            Text('* Half Sangam Digits(1:1200)',style: TextStyle(fontWeight:
            FontWeight.bold, fontSize: 18),),
            SizedBox(height: 7),
            Text('* Full Sangam Digits(1:13000)',style: TextStyle(fontWeight:
            FontWeight.bold, fontSize: 18),),
            SizedBox(height: 7),
            Text('* Real Brackets(1:95)',style: TextStyle(fontWeight:
            FontWeight.bold, fontSize: 18),),
          ],
        ),
      ),
    );
  }
}
