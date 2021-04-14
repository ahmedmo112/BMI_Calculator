import 'package:flutter/material.dart';

class Txt extends StatelessWidget {
  const Txt({
   @required  this.text,
      this.size = 13,
       this.color = Colors.white,
        this.fontWeight = FontWeight.normal,
     });
  final String text;
  final double size;
  final Color color;
  final FontWeight fontWeight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: size,
           color: text.startsWith('/')? Colors.green  : color ,
            fontWeight: fontWeight),
    );
  }
}
