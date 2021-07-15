import 'package:flutter/material.dart';
import 'package:game/Screens/config.dart';
//import 'package:game/Screens/login.dart';
import 'package:game/widgets/customContainer.dart';
import 'package:line_icons/line_icons.dart';

class Wallet extends StatelessWidget {
  const Wallet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Tranction History'),
          backgroundColor: color_1,
          elevation: 20,
        ),
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          CustomIconTab(
            title: "Withdraw Fund",
            icon: Icon(
              Icons.wallet_travel,
              color: iconcolor,
              size: 36,
            ),
            onTap: () {
              // Navigator.push(
              //     context, MaterialPageRoute(builder: (context) => Login()));
            },
          ),
          CustomIconTab(
              title: "Add Fund",
              icon: Icon(
                Icons.money,
                color: iconcolor,
                size: 36,
              ),
              onTap: () {}),
          CustomIconTab(
              title: "Fund Request History",
              icon: Icon(
                Icons.monetization_on,
                color: iconcolor,
                size: 36,
              ),
              onTap: () {}),
          CustomIconTab(
              title: "Winning History",
              icon: Icon(
                LineIcons.moneyBill,
                color: iconcolor,
                size: 36,
              ),
              onTap: () {}),
        ])));
  }
}
