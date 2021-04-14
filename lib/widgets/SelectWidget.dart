import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:bmi/app/modules/home/controllers/home_controller.dart';
import 'package:bmi/const/UIcolors.dart';

import 'Txt.dart';

class SelectWidget extends StatelessWidget {
  const SelectWidget({
    this.title,
    this.minasButton,
    this.plusButton,
    this.unit,
    this.number,
  }) ;

  final String title;
  final Function minasButton;
  final Function plusButton;
  final String unit;
  final int number;

 
  @override
  Widget build(BuildContext context) {
   //final controller = Get.put(HomeController());
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Txt(text: title),
          SizedBox(
            height: 8,
          ),
          Row(children: [
            Container(
              height: 45,
              width: Get.width * .5,
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
                    text: "$number",
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
            ),
            SizedBox(
              width: 20,
            ),
            Container(
                height: 45,
                width: Get.width * .3,
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Txt(
                      text: unit,
                      color: black,
                      size: 17,
                      fontWeight: FontWeight.w500,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: Icon(
                      Icons.expand_more,
                      color: black,
                    ))
                  ],
                )

                //  // SizedBox(width: 4,),
                //   DropdownButton<String>(
                //     underline: Container(),
                //     style: TextStyle(
                //         fontSize: 20,
                //         fontWeight: FontWeight.w500,
                //         color: black),
                //     elevation: 0,
                //     isExpanded: true,
                //     icon: Icon(Icons.expand_more),
                //     value: 'Kg',
                //     onChanged: (String newValue) {},
                //     items: <String>[
                //       'Kg',
                //       'lbs',
                //     ].map<DropdownMenuItem<String>>((String value) {
                //       return DropdownMenuItem<String>(
                //         value: value,
                //         child: Text(value),
                //       );
                //     }).toList(),
                //   )

                ),
          ])
        ],
      ),
    );
  }
}
