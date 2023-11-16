
import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final String text;
  final double fontsize;
  final Color color;
  final FontWeight fontWeight;
   

  const SmallText({Key? key, 
  required this.text, 
  required this.fontsize, 
  required this.color, 
  required this.fontWeight
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text, 
    style: TextStyle(
      fontSize: fontsize, 
    fontWeight: fontWeight,
    color: color,
    ),);
  }
}