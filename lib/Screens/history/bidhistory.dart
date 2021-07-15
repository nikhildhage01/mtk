import 'package:flutter/material.dart';
import 'package:game/Screens/config.dart';
//import 'package:game/widgets/customContainer.dart';

class BidHistory extends StatelessWidget {
  const BidHistory({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.deepOrange,
        elevation: 20,
      ),
      
      body:SingleChildScrollView(
        child:Column(
          children:<Widget>[
            CustomContainer(title: "DUMMY-HISTORY",onTap: (){},),
            CustomContainer(title: "DUMMY-HISTORY",onTap: (){},),
            CustomContainer(title: "DUMMY-HISTORY",onTap: (){},),
            CustomContainer(title: "DUMMY-HISTORY",onTap: (){},),
            CustomContainer(title: "DUMMY-HISTORY",onTap: (){},),
            CustomContainer(title: "DUMMY-HISTORY",onTap: (){},),
            CustomContainer(title: "DUMMY-HISTORY",onTap: (){},),
            CustomContainer(title: "DUMMY-HISTORY",onTap: (){},),
            CustomContainer(title: "DUMMY-HISTORY",onTap: (){},),
            CustomContainer(title: "DUMMY-HISTORY",onTap: (){},),
            CustomContainer(title: "DUMMY-HISTORY",onTap: (){},),
            CustomContainer(title: "DUMMY-HISTORY",onTap: (){},),
            CustomContainer(title: "DUMMY-HISTORY",onTap: (){},),
            CustomContainer(title: "DUMMY-HISTORY",onTap: (){},),
            CustomContainer(title: "DUMMY-HISTORY",onTap: (){},),
            CustomContainer(title: "DUMMY-HISTORY",onTap: (){},),
          ]
        )
      )
   
      
    );
  }
}
