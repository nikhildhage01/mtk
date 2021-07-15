import 'package:flutter/material.dart';
import 'package:game/Screens/config.dart';

class TransctionHistory extends StatelessWidget {
  const TransctionHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Tranction History'),
          backgroundColor: Colors.deepOrange,
          elevation: 20,
        ),
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          CustomContainer(
            title: "WITHDRAW-HISTORY",
            onTap: () {},
          ),
          CustomContainer(
            title: "DEPOSIT-HISTORY",
            onTap: () {},
          ),
        ])));
  }
}
