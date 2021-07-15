import 'package:flutter/material.dart';

class ReferAndEarn extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Refer & Earn'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 200,left: 30,right: 30),
        child: Column(
          children: [
            Text(
              'Refer now & earn ₹ 1000',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 20,),
            Text(
              'Earn upto ₹ 1000 when your referred friend makes their first deposit. Enjoy',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 16,
              ),
            ),
            SizedBox(height: 20,),
            Text(
              'Referral Code',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(15)
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'ABCDEFG',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){},
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue
                ),
                child: Text('Refer Now')
            )
          ],
        ),
      ),
    );
  }
}
