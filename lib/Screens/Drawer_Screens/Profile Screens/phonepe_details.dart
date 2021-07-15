import 'package:flutter/material.dart';

class PhonepeDetails extends StatefulWidget {

  @override
  _PhonepeDetailsState createState() => _PhonepeDetailsState();
}

class _PhonepeDetailsState extends State<PhonepeDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PhonePe Details'),
        automaticallyImplyLeading: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Center(
              child: Image.asset('assets/images/phonepe.png',
                height: 100,
                width: 200,
              ),
            ),
            SizedBox(height: 25,),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: 'Number'
              ),
            ),
            SizedBox(height: 25,),
            ElevatedButton(onPressed: (){},
                child: Text('Add PhonePe')
            )
          ],
        ),
      ),
    );
  }
}
