import 'package:flutter/material.dart';
import 'package:game/Screens/config.dart';

class CustomIconTab extends StatelessWidget {
  String title;
  Icon icon;
  Function onTap;

  CustomIconTab({Key? key, required this.title,required this.icon, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final makeContainer = InkWell(
      onTap: onTap(
      ),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: shadow,
                offset: const Offset(
                  2.0,
                  2.0,
                ),
                blurRadius: 3.0,
                spreadRadius: 1.0,
              ), //BoxShadow
              BoxShadow(
                color: Colors.white,
                offset: const Offset(0.0, 0.0),
                blurRadius: 0.0,
                spreadRadius: 0.0,
              ), //BoxShadow
            ],
          ),

          height: 100,
          width: MediaQuery.of(context).size.width,
          // color: color4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(width: 10,),
              IconButton(
                onPressed:onTap(), 
                icon:icon,
                color:iconcolor,
                
                ),
                SizedBox(width: 40,),
              Text(
                '$title',
                style: TextStyle(
                    fontSize: 24, color: color1, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );

    return makeContainer;
  }
}





// http://makeup-api.herokuapp.com/api/v1/products.json?brand=maybelline
// http://localhost:8080/app/getContests

