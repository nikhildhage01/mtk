import 'package:flutter/material.dart';

class PaytmDetails extends StatefulWidget {

  @override
  _PaytmDetailsState createState() => _PaytmDetailsState();
}

class _PaytmDetailsState extends State<PaytmDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Paytm Details'),
        automaticallyImplyLeading: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Center(
              child: Image.asset('assets/images/paytm.png',
                height: 100,
                width: 200,
              ),
            ),
            SizedBox(height: 10,),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: 'Number'
              ),
            ),
            SizedBox(height: 25,),
            ElevatedButton(onPressed: (){},
                child: Text('Add Paytm')
            )
          ],
        ),
      ),
    );
  }
}
