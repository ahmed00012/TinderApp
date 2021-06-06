import 'package:flutter/material.dart';

import '../constants.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
 Size size = MediaQuery.of(context).size;
return Scaffold(
backgroundColor: main_color,
  body: Container(
    width: size.width,
    child: Center(
      child: Text(
        'Tinder',
        style: TextStyle(
color: Colors.white,
          fontSize: size.width*0.2,
        ),
      ),
    ),

  ),


);


  }
}