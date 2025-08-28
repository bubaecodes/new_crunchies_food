import 'package:get/get.dart';

class StateLocationController extends GetxController{
  static StateLocationController get instance => Get.find();

  final states = [
    'Abia',
    'Adamawa',
    'Akwa-Ibom',
    'Anambra',
    'Bauchi',
    'Bayelsa',
    'Benue',
    'Borno',
    'Cross-River',
    'Delta',
    'Ebonyi',
    'Edo',
    'Ekiti',
    'Enugu',
    'Gombe',
    'Imo',
    'Jigawa',
    'Kaduna',
    'Kano',
    'Katsina',
    'Kebbi',
    'Kogi',
    'Kwara',
    'Lagos'
  ];
  //Rx<String> selectedState = ''.obs;
  final selectedState = RxnString();
  //RxString selectedState = RxString();

  void updateSelectedState(String? newValue){
    selectedState.value = newValue;
  }
}