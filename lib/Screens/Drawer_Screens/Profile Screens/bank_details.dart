import 'package:flutter/material.dart';

class BankDetails extends StatefulWidget {

  @override
  _BankDetailsState createState() => _BankDetailsState();
}

class _BankDetailsState extends State<BankDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bank Details'),
        automaticallyImplyLeading: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Center(
              child: Image.asset('assets/images/bank.png',
                height: 100,
                width: 200,
              ),
            ),
            SizedBox(height: 10,),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'Bank Name'
              ),
            ),
            SizedBox(height: 10,),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'IFSC Code'
              ),
            ),
            SizedBox(height: 10,),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: 'Account Number'
              ),
            ),
            SizedBox(height: 10,),
            TextFormField(
              decoration: InputDecoration(
                  labelText: 'Holder Name'
              ),
            ),
            SizedBox(height: 25,),
            ElevatedButton(onPressed: (){},
                child: Text('Add Bank Details')
            )
          ],
        ),
      ),
    );
  }
}
