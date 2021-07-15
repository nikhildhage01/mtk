import 'package:flutter/material.dart';
class GenerateMPIN1 extends StatefulWidget {

  @override
  _GenerateMPIN1State createState() => _GenerateMPIN1State();
}

class _GenerateMPIN1State extends State<GenerateMPIN1> {
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
              child: Image.asset('assets/images/mpin.png',
                height: 100,
                width: 200,
              ),
            ),
            SizedBox(height: 25,),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: 'Enter 4 digit MPIN'
              ),
            ),
            SizedBox(height: 25,),
            ElevatedButton(onPressed: (){},
                child: Text('Generate MPIN')
            )
          ],
        ),
      ),
    );
  }
}
