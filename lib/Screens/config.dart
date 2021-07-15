
import 'package:flutter/material.dart';

Color color1 = Color(0xFFE25289);
Color color2 = Color(0xFF692D8B);
Color color3 = Color(0xFF4487EB);
Color color4 = Color(0xFF0D794F);


Color color_1=Color(0xFF0287E0);
Color color_2=Color(0xFFFFFFFF);
Color color_3=Color(0xFFF30000);
Color color_4=Color(0xFFFDE488);
Color color_5=Color(0xFFDAF7A6);
Color org = const Color(0xFFD8A416);
Color shadow = const Color(0xF3CEC7C7);
Color iconcolor= const Color(0xF3D60F0F);
Gradient grd = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [color1, color2]);

//shadow
BoxShadow boxs = BoxShadow(
  color: shadow,
  offset: const Offset(
    5.0,
    5.0,
  ),
  blurRadius: 10.0,
  spreadRadius: 2.0,
);

Decoration bd =
    BoxDecoration(borderRadius: BorderRadius.circular(20), color: Colors.white);
TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.w600);

class CustomContainer extends StatelessWidget {
  String title;
  Function onTap;

  CustomContainer({Key? key, required this.title, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final makeContainer = GestureDetector(
      onTap: onTap(),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          decoration:BoxDecoration(
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                '$title',
                style: TextStyle(
                    fontSize: 24,
                    color: color1,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );

    return makeContainer;
  }
}


