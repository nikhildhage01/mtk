import 'package:flutter/material.dart';

class AddressDetails extends StatefulWidget {

  @override
  _AddressDetailsState createState() => _AddressDetailsState();
}

class _AddressDetailsState extends State<AddressDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Address Details'),
        automaticallyImplyLeading: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Center(
              child: Image.asset('assets/images/location.png',
                height: 100,
                width: 200,
              ),
            ),
            SizedBox(height: 10,),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Address'
              ),
            ),
            SizedBox(height: 10,),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'City'
              ),
            ),
            SizedBox(height: 10,),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: 'Pincode'
              ),
            ),
            SizedBox(height: 25,),
            ElevatedButton(onPressed: (){},
                child: Text('Add Address Details')
            )
          ],
        ),
      ),
    );
  }
}
