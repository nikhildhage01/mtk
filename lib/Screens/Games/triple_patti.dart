import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:game/Screens/wallet/wallet.dart';

import '../config.dart';

class TriplePatti extends StatefulWidget {

  @override
  _TriplePattiState createState() => _TriplePattiState();
}

class _TriplePattiState extends State<TriplePatti> {
  var digit = TextEditingController();
  var points = TextEditingController();
  bool list = false;
  List<Widget> betList = [];


  @override
  void initState() {
    super.initState();
    setState(() {
      if(betList.length>0)
        list = true;
    });
  }

  Widget _buildBet(String betDigit, String betPoints, String gameType){
    return Container(
      child: Row(
        children: [
          SizedBox(width: 55,),
          Text(betDigit),
          SizedBox(width: 55,),
          Text(betPoints),
          SizedBox(width: 55,),
          Text(gameType),
          SizedBox(width: 10,),
          IconButton(icon: Icon(Icons.delete), onPressed: (){
            setState(() {
              betList.removeAt(betList.length-1);
              print(betList.length);
            });
          })
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color_1,
        elevation: 20,
        title: const Text('Triple Patti'),
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
        padding: EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Triple Patti',
                    style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    width: 160,
                    child: TextField(
                      controller: digit,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          fillColor: Colors.grey[300],
                          filled: true,
                          border: InputBorder.none
                      ),
                    ),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    width: 50,
                    height: 80,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          for(int i=1;i<=9;i++)
                            Container(
                              height:32,
                              child: Column(
                                children: [
                                  GestureDetector(
                                    child: Text(i.toString()),
                                    onTap: (){
                                      setState(() {
                                        digit.text = i.toString();
                                      });
                                    },
                                  ),
                                ],
                              ),
                            )
                        ],
                      ),
                    ),
                  )

                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: 35 ,),
                  Text(
                    'Points',
                    style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(width: 30,),
                  Container(
                    width: 160,
                    child: TextField(
                      controller: points,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          fillColor: Colors.grey[300],
                          filled: true,
                          border: InputBorder.none,
                          hintText: 'Enter Points'
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 20,),
              Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints.tightFor(height: 40,width: 200),
                  child: ElevatedButton(
                    onPressed: (){
                      setState(() {
                        betList.add(_buildBet(digit.text, points.text, 'gameType'));
                        list = true;
                      });
                    },
                    child: Text('ADD'),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 350,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black,
                            offset: Offset(0.4,0.4),
                            spreadRadius: 1,
                            blurRadius: 1
                        )
                      ]
                  ),
                  child: Padding(padding: EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            SizedBox(width: 40,),
                            Text('Digit',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(width: 40,),
                            Text('Points',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(width: 40,),
                            Text('Game Type',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 5,),
                        Divider(thickness: 0.5,color: Colors.black,),
                        list ?
                        Expanded(
                          child: SingleChildScrollView(
                            child: Column(
                              children: betList,
                            ),
                          ),
                        ): Text('No Bettings')
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Center(
                child: ConstrainedBox(
                  constraints: BoxConstraints.tightFor(height: 40,width: 200),
                  child: ElevatedButton(
                    onPressed: (){},
                    child: Text('Submit'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

