import 'package:bmi/const/UIcolors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'Txt.dart';

class AgeWidget extends StatelessWidget {
  final int age;
  final Function minasButton;
  final Function plusButton;

  const AgeWidget({this.age, this.minasButton, this.plusButton});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: Get.width,
      decoration: BoxDecoration(
        color: white,
        borderRadius: BorderRadius.circular(7),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
              onPressed: minasButton,
              icon: Icon(
                Icons.remove_circle,
                color: black,
              )),
          Txt(
            text: "$age",
            color: black,
            size: 20,
            fontWeight: FontWeight.w600,
          ),
          IconButton(
              onPressed: plusButton,
              icon: Icon(
                Icons.add_circle,
                color: black,
              ))
        ],
      ),
    );
  }
}
