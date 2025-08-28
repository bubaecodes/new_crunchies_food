import 'package:get/get.dart';

class CityLocationController extends GetxController{
  static CityLocationController get instance => Get.find();

  final city = [
    'Enugu',
    'Nsukka',
  ];

  final selectedCity = RxnString();

  void updateSelectedState(String? newValue){
    selectedCity.value = newValue;
  }
}