import 'package:get/get.dart';

class CheckBoxController extends GetxController{
  static CheckBoxController get instance => Get.find();

  final isChecked = false.obs;

  void toggleCheckbox(bool? value) {
    isChecked.value = !isChecked.value;
  }


}