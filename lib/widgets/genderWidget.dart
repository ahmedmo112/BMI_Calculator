import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:bmi/const/UIcolors.dart';
import 'package:get/get.dart';

import 'Txt.dart';

//Color color = black;

class Gender extends StatelessWidget {
  
  final String gender;
  
  final Widget icon;
  final Function onPress;
 final Color color;

  const Gender({
     this.color=black,
    this.gender,
    this.icon,
     this.onPress,
  }) ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        decoration:
                  BoxDecoration(
          color: gray,
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: color, width: 2),
        ),
        
        height: 130,
        width: 150,
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                  padding: EdgeInsets.all(4),
                  child: Icon(
                    Icons.check_circle,
                    color: color.withOpacity(0.5),
                    size: 17,
                  )
                  
                  ),
            ),
            Expanded(
              child: icon,
            ),
            Txt(text: gender),
            SizedBox(
              height: 10,
            )
          ],
        ),
      
      ),
    );
  }
}
