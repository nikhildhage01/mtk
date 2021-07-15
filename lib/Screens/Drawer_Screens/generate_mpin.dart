import 'package:flutter/material.dart';
import 'package:game/Screens/Drawer_Screens/MPIN/generate_mpin.dart';

import '../config.dart';

class GenerateMPIN extends StatefulWidget {

  @override
  _GenerateMPINState createState() => _GenerateMPINState();
}

class _GenerateMPINState extends State<GenerateMPIN> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Generate MPIN'),
        automaticallyImplyLeading: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> GenerateMPIN1()));
          },
          child: Container(
            height: 60,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [boxs]
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image.asset('assets/images/mpin.png'),
                  SizedBox(width: 10,),
                  Text('Generate MPIN', style: TextStyle(fontWeight: FontWeight.bold))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
