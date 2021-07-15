import 'package:flutter/material.dart';
import 'package:game/Screens/config.dart';
import 'package:game/Screens/history/Transctionhistory.dart';
import 'package:game/Screens/history/bidhistory.dart';
import 'package:game/Screens/history/fund_request_history.dart';
// import 'package:game/widgets/customContainer.dart';
import 'package:line_icons/line_icons.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';

class History extends StatefulWidget {
  History({Key? key}) : super(key: key);

  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return BidHistory();
              },
            ));
          },
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: shadow,
                    offset: const Offset(
                      2.0,
                      2.0,
                    ),
                    blurRadius: 3.0,
                    spreadRadius: 1.0,
                  ),
                ],
                color: color_2,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(
                    EvaIcons.clockOutline,
                    color: color_3,
                    size: 30,
                  ),
                  Text(
                    'Bid History',
                    style: TextStyle(
                        fontSize: 24,
                        color: color_1,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return TransctionHistory();
              },
            ));
          },
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: shadow,
                    offset: const Offset(
                      2.0,
                      2.0,
                    ),
                    blurRadius: 3.0,
                    spreadRadius: 1.0,
                  ),
                ],
                color: color_2,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(
                    Icons.transfer_within_a_station,
                    color: color_3,
                    size: 30,
                  ),
                  Text(
                    'Transction History',
                    style: TextStyle(
                        fontSize: 24,
                        color: color_1,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return FundRequestHistory();
              },
            ));
          },
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [BoxShadow(
                color: shadow,
                offset: const Offset(
                  2.0,
                  2.0,
                ),
                blurRadius: 3.0,
                spreadRadius: 1.0,
              ), ],
                  color: color_2,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(
                    LineIcons.history,
                    color: color_3,
                    size: 30,
                  ),
                  Text(
                    'Fund Request History',
                    style: TextStyle(
                        fontSize: 24,
                        color: color_1,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
