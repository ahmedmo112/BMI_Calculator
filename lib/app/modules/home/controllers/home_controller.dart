import 'package:bmi/app/modules/home/views/home_view.dart';
import 'package:bmi/const/UIcolors.dart';
import 'package:bmi/widgets/genderWidget.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var age = 26.obs;
  var weight = 56.obs;
  var height = 162.obs;
  var genderColor = green.obs;
  var desgenderColor = black.obs;
  var bmi = 0.0.obs;

  calc() {
    var w = weight.value;
    var h = height.value;
    var r;
    r = w / h * h;
    bmi = r.obs;
  }

  frameColor() {
    if (gmColor == desgenderColor.value && gfColor == genderColor.value) {
      gmColor = genderColor.value;
      gfColor = desgenderColor.value;
    } else if (gmColor == genderColor.value &&
        gfColor == desgenderColor.value) {
      gmColor = desgenderColor.value;
      gfColor = genderColor.value;
    }
    update();
  }

  ageIncrement() => age++;
  ageDeincrement() => age--;

  weightIncrement() => weight++;
  weightDeincrement() => weight--;

  heightIncrement() => height++;
  heightDeincrement() => height--;
}
