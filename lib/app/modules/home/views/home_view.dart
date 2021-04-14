import 'package:bmi/app/modules/result/views/result_view.dart';
import 'package:bmi/const/UIcolors.dart';
import 'package:bmi/widgets/SelectWidget.dart';
import 'package:bmi/widgets/Txt.dart';
import 'package:bmi/widgets/ageWidget.dart';
import 'package:bmi/widgets/genderWidget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

Color gmColor = green;
Color gfColor = black;

class HomeView extends GetView<HomeController> {
  double width = Get.width;
  double hight = Get.height;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: black,
       
        appBar: AppBar(
          leading: Icon(Icons.menu, color: Colors.grey),
          backgroundColor: black,
          elevation: 0.0,
          actions: [Icon(Icons.notifications_outlined,color: Colors.grey,)],
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Txt(
                  text: 'BMI Calculator',
                  size: 30,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  height: 25,
                ),
                Txt(text: "Gender"),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GetBuilder<HomeController>(
                      init: HomeController(),
                      builder: (value) => Gender(
                          gender: 'Male',
                          onPress: () => value.frameColor(),
                          color: gmColor,
                          icon: FaIcon(
                            FontAwesomeIcons.male,
                            size: 60,
                            color: white,
                          )),
                    ),
                    GetBuilder<HomeController>(
                      init: HomeController(),
                      builder: (value) => Gender(
                          gender: 'Female',
                          onPress: () => value.frameColor(),
                          color: gfColor,
                          icon: FaIcon(
                            FontAwesomeIcons.female,
                            size: 60,
                            color: white,
                          )),
                    )
                  ],
                ),

                SizedBox(
                  height: 20,
                ),
                Obx(
                  () => SelectWidget(
                    title: 'Weight',
                    minasButton: () => controller.weightDeincrement(),
                    plusButton: () => controller.weightIncrement(),
                    unit: 'kg',
                    number: controller.weight.value,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Obx(
                  () => SelectWidget(
                    title: 'Height',
                    minasButton: () => controller.heightDeincrement(),
                    plusButton: () => controller.heightIncrement(),
                    unit: 'Cm',
                    number: controller.height.value,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Txt(text: 'Age'),
                SizedBox(
                  height: 8,
                ),
                Obx(
                  () => AgeWidget(
                    age: controller.age.value,
                    plusButton: () => controller.ageIncrement(),
                    minasButton: () => controller.ageDeincrement(),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                // ignore: deprecated_member_use
                Container(
                  height: 45,
                  width: width,
                  child: RaisedButton(
                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                    onPressed: () {
                      var w = controller.weight.value;
                      var h = controller.height.value / 100;
                      var r = 0.0;
                      r = w / (h * h);
                      Get.to(ResultView(), arguments: r.toStringAsFixed(1));
                      print('bmi = ${r.toStringAsFixed(1)}');
                     // Get.snackbar('Your BMI', '${r.toStringAsFixed(1)}');
                    },
                    color: green,
                    child: Txt(
                      text: 'Calculate',
                      size: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
