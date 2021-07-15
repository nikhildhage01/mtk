import 'package:flutter/material.dart';
import 'package:game/Screens/config.dart';

class FundRequestHistory extends StatelessWidget {
  const FundRequestHistory({Key? key}) : super(key: key);

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
            title: "WITHDRAW-REQUEST-HISTORY",
            onTap: () {},
          ),
          CustomContainer(
            title: "DEPOSIT-REQUEST-HISTORY",
            onTap: () {},
          ),
        ])));
  }
}
