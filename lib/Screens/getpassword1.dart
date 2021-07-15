import 'package:flutter/material.dart';


class GetPass extends StatefulWidget {
 const GetPass({Key? key}) : super(key: key);

  @override
  _GetPassState createState() => _GetPassState();
}

class _GetPassState extends State<GetPass> {
  // bool _checkboxvalue = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: SingleChildScrollView(
              child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: <Widget>[
              SizedBox(
                height:MediaQuery.of(context).size.height*0.12,
              ),
              Padding(
                 padding:EdgeInsets.only(bottom:30.0,top: 60),
                child:Image.asset("assets/images/mataka.png",
                height: 220,
                width:MediaQuery.of(context).size.width*0.5,
                ),
                ),
            
            Padding(
                              padding: EdgeInsets.all(8),
                              child: TextField(
                                autocorrect: false,
                                autofocus: false,
                                style: TextStyle(
                                  fontFamily: 'Raleway',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16.0,
                                ),
                                decoration: InputDecoration(
                                    hintText: "Mobile Number",
                                    // 
                                    enabledBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(color: Colors.red),
                                            borderRadius: BorderRadius.circular(25.7),
                    ),
                                    filled: true,
                                    fillColor: Colors.white30,
                                    contentPadding: EdgeInsets.all(20.0)),
                              ),
                            ),
                            SizedBox(height: 30,),
                           MaterialButton(
                                 padding: EdgeInsets.symmetric(
                                 vertical: 10.0),
                                 onPressed: (){
                                  // Navigator.push(context,MaterialPageRoute(
                                  //       builder: (context) {
                                  //       return MyApp1();
                                  //        },
                                  //   )
                                  // );
                                 },
                                 splashColor: Colors.white,
                                 color:Color.fromRGBO(224, 13, 13, 0.9),
                                 height: 47.0,
                                 minWidth:MediaQuery.of(context).size.width*0.6,
                                 child: Text(
                                   "Get OTP",
                                   style:TextStyle(
                                     color: Colors.white,
                                     fontFamily: "Raleway",
                                     fontSize: 18.0,
                                     fontWeight: FontWeight.w700,
                                     fontStyle: FontStyle.italic,

                                   )

                                 ),
                                 
                               ) ,
                               SizedBox(height:10),
                            MaterialButton(
                                 padding: EdgeInsets.symmetric(
                                 vertical: 10.0),
                                 onPressed: (){
                                  // Navigator.push(context,MaterialPageRoute(
                                  //       builder: (context) {
                                  //       return MyApp1();
                                  //        },
                                  //   )
                                  // );
                                 },
                                 splashColor: Colors.white,
                                 color:Colors.black,
                                 height: 47.0,
                                 minWidth: MediaQuery.of(context).size.width*0.6,
                                 child: Text(
                                   "Resend",
                                   style:TextStyle(
                                     color: Colors.white,
                                     fontFamily: "Raleway",
                                     fontSize: 18.0,
                                     fontWeight: FontWeight.w700,
                                     fontStyle: FontStyle.italic,

                                   )

                                 ),
                                 
                               ) ,   
                                
            ],
          ),
        ),
      ),
    );
  }
}