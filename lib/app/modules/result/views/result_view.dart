import 'package:bmi/const/UIcolors.dart';
import 'package:bmi/widgets/Txt.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/result_controller.dart';

class ResultView extends GetView<ResultController> {
  // var result = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: black,
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios, color: Colors.grey),
            onPressed: () => Get.back(),
          ),
          backgroundColor: black,
          elevation: 0.0,
          actions: [
            Icon(
              Icons.notifications_outlined,
              color: Colors.grey,
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment.center,
                child: Text('Result',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: white)),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  decoration: BoxDecoration(
                    color: gray,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  height: 180,
                  width: Get.width,
                  child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Txt(
                          text: 'Your current BMI',
                          color: Colors.grey,
                          size: 15,
                        ),
                        Txt(
                          text: '${Get.arguments.toString()}',
                          color: white,
                          size: 60,
                          fontWeight: FontWeight.bold,
                        )
                      ])),
              SizedBox(
                height: 20,
              ),
              Txt(
                  size: 15,
                  fontWeight: FontWeight.w700,
                  text:
                      'For your height, a normal weight range would be from 48.6 to 65.3 kilograme.'),
              SizedBox(
                height: 20,
              ),
              Txt(
                text:
                    'Your BMI is  ${Get.arguments}, indicating your weight is in the Normal Category for adults of your height',
                size: 14.5,
              ),
              SizedBox(
                height: 20,
              ),
              Txt(
                text:
                    'Maintaining a healthy weight may reduce the risk of chronic diseases associated with overweight and obesity.',
                size: 14.5,
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                
                height: 45,
                width: Get.width,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                  onPressed: () {
                    Get.back();
                  },
                  color: green,
                  child: Txt(
                    text: 'Recalculate',
                    size: 18,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
