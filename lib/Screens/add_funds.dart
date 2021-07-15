import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:game/Screens/wallet/wallet.dart';

import 'config.dart';

class AddFunds extends StatefulWidget {

  @override
  _AddFundsState createState() => _AddFundsState();
}

class _AddFundsState extends State<AddFunds> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color_1,
        elevation: 20,
        title: const Text('VR ONLINE'),
        actions: [
          Padding(
            padding: EdgeInsets.only(bottom: 7, top: 7, right: 15),
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color:color_2,
                ),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                       '500 ₹',
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                      ),
                    ),

                    IconButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return Wallet();
                          },
                        ));
                      },
                      icon: Image.asset('assets/images/wallet.png'),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                  ],
                )),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 40,right: 40,top: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/images/money.png',height: 300,width: 300,),
              SizedBox(height: 40,),
              Center(
                child: Text(
                  'For Add funds related queries call or whatsapp',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.call,size: 30,),
                  SizedBox(width: 5,),
                  Text('1234567890',style: TextStyle(fontSize: 20),)
                ],
              ),
              SizedBox(height: 10,),
              Divider(thickness: 1,color: Colors.black,),
              SizedBox(height: 20,),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter Amount',
                  fillColor: Colors.grey[200],
                  filled: true,
                  border: InputBorder.none
                ),
              ),
              SizedBox(height: 20,),
              ConstrainedBox(
                constraints: BoxConstraints.tightFor(height: 40,width: 180),
                child: ElevatedButton(onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue
                    ),
                    child: Text('Add Funds',
                      style: TextStyle(
                        fontSize: 18
                      ),
                    )
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
