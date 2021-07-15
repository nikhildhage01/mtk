import 'package:flutter/material.dart';

class GooglePayDetails extends StatefulWidget {

  @override
  _GooglePayDetailsState createState() => _GooglePayDetailsState();
}

class _GooglePayDetailsState extends State<GooglePayDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Pay Details'),
        automaticallyImplyLeading: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Center(
              child: Image.asset('assets/images/gpay.png',
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
                child: Text('Add Google Pay')
            )
          ],
        ),
      ),
    );
  }
}
