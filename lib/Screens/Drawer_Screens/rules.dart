import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class Rules extends StatefulWidget {

  @override
  _RulesState createState() => _RulesState();
}

class _RulesState extends State<Rules> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notice Board/ Rules'),
        automaticallyImplyLeading: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Center(
              child: Flexible(
                child: Text(
                  'This is a premium category application please cooperate. Minimum '
                      'Deposit Amount is 1000 and withdrawal amount is 1000',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child: Text('Withdrawal',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child: Flexible(
                child: Text(
                  'Withdrawal will be accepted from 24 hour and will be credited between'
                      ' 24 hours. Withdrawals are accepted from Monday to Friday. Withdrawal'
                      ' is not available on Sunday and on Bank Holidays. For Withdrawal query contact',
                  style: TextStyle(
                      fontSize: 16
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                SizedBox(width: 100,),
                Icon(LineIcons.whatSApp),
                SizedBox(width: 15,),
                Text('+911234567890', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),)
              ],
            ),
            SizedBox(height: 20,),
            Center(
              child: Text('Notice',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            SizedBox(height: 20,),
            Center(
              child: Flexible(
                child: Text(
                  'All customers are requested to update their bank account with IFSC code in'
                      ' your profile before remittance. It\'s mandatory. Kindly cooperate',
                  style: TextStyle(
                      fontSize: 16
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
