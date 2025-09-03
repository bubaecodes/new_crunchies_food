import 'package:get/get.dart';

class CheckBoxController extends GetxController{
  static CheckBoxController get instance => Get.find();

  // final isChecked = false.obs;
  //
  // void toggleCheckbox(bool? value) {
  //   //isChecked.value = !isChecked.value;
  //   if (value != null) {
  //     isChecked.value = value;
  //   }
  // }

  var selectedIndex = (-1).obs;

  void selectButton(int index) {
    selectedIndex.value = index;
  }


}