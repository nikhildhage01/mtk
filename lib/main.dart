import 'package:flutter/material.dart';
import 'package:game/Screens/Games/double_patti.dart';
import 'package:game/Screens/Games/dp_motor.dart';
import 'package:game/Screens/Games/full_sangam.dart';
import 'package:game/Screens/Games/game_screen.dart';
import 'package:game/Screens/Games/jodi_game.dart';
import 'package:game/Screens/Games/single_patti.dart';
import 'package:game/Screens/Games/sp_dp_tp.dart';
import 'package:game/Screens/Games/sp_motor.dart';
import 'package:game/Screens/Games/triple_patti.dart';
// import 'package:game/Screens/getpassword1.dart';

//import 'package:game/Screens/getpassword1.dart';
import 'package:game/Screens/homescreen.dart';

import 'Screens/Games/half_sangam.dart';
import 'Screens/splashscreen.dart';
// import 'package:game/Screens/login.dart';
// import 'package:game/Screens/registration.dart';
// import 'package:game/Screens/splashscreen.dart';
//import 'package:game/firstScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        'Single Ank' : (context)=>GameScreen(),
        'Jodi' : (context)=>JodiGamee(),
        'Single Patti' : (context) =>SinglePatti(),
        'Double Patti' : (context) =>DoublePatti(),
        'Triple Patti' : (context) =>TriplePatti(),
        'Half Sangam' : (context) =>HalfSangam(),
        'Full Sangam' : (context) =>FullSangam(),
        'SP DP TP' : (context) =>SpDpTp(),
        'SP Motor' : (context) =>SpMotor(),
        'DP Motor' : (context) =>DpMotor(),
      },
      debugShowCheckedModeBanner: false,
      home:SplashScreen(),
    );
  }
}
