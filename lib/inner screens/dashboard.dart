import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:game/Screens/config.dart';
import 'package:game/Screens/Games/game_screen.dart';
import 'package:game/Screens/wallet/wallet.dart';

class DashboardPage extends StatefulWidget {
  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {

  List<String> pages = [
    'Single Ank','Jodi','Single Patti','Double Patti','Triple Patti','Half Sangam',
    'Full Sangam','SP DP TP','SP Motor','DP Motor'
  ];

List<Image> images = [
  Image.asset('assets/images/single_dice.png',),
  Image.asset('assets/images/double_dice.png'),
  Image.asset('assets/images/single_patti.png'),
  Image.asset('assets/images/double_patti.png'),
  Image.asset('assets/images/triple_patti.png'),
  Image.asset('assets/images/half_sangam.png'),
  Image.asset('assets/images/full_sangam.png'),
  Image.asset('assets/images/sp_dp_tp.png'),
  Image.asset('assets/images/sp_motor.png'),
  Image.asset('assets/images/dp_motor.png'),
  
];
  
  List menuList = [
    _MenuItem( 'Single Ank'),
    _MenuItem( 'Jodi'),
    _MenuItem( 'Single Patti'),
    _MenuItem( 'Double Patti'),
    _MenuItem( 'Triple patti'),
    _MenuItem( 'Half Sangam'),
    _MenuItem( 'Full Sangam'),
    _MenuItem( 'SP DP TP'),
    _MenuItem( 'SP Motor'),
    _MenuItem( 'DP Motor'),
   
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color_1,
        elevation: 20,
        title: const Text('Time Dashboard'),
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
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (context, position) {
            return Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, pages[position]);
                    },
                    child: Center(
                      child: Column(
                        children: [
                          Center(
                            child: Container(
                              width: MediaQuery.of(context).size.width*0.3,
                              height: MediaQuery.of(context).size.height*0.16,
                              
                              
                              // shape: RoundedRectangleBorder(
                              //     borderRadius: BorderRadius.circular(200.0)),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                
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
                                ]
                              ),
                              // elevation: 5,
                              child: Column(
                                children:<Widget>[ Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Image(
                                    image:images[position].image,
                                    
                                    )
                                  ),
                                ),
                                
                                
                                ]
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                menuList[position].title,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize:18,
                                  color:Colors.black,
                                  // fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          
                                
                       
                        ],
                      ),
                    )));
          },
          itemCount: menuList.length,
        ),
      ),
    );
  }
}

class _MenuItem {
  // final IconData poker-cards.png;
  final String title;

  _MenuItem( this.title);
}


 class Items {
      String title;
      String subtitle;
      String event;
      String img;
      String routeName;
      Items({required this.title, required this.subtitle, required this.event, required this.img,required this.routeName,});
    }