import 'package:get/get.dart';

class OutletLocationController extends GetxController{
  static OutletLocationController get instance => Get.find();

  final outlet = [
    'Crunchies Fried Chicken, 262 Agbani Road, Enugu.',
    'Crunchies Fried Chicken, Abakpa Nike, Enugu.',
    'Crunchies Fried Chicken, Rangers Avenue, Enugu.',
    'Crunchies Fried Chicken, Thinkers Corner, Enugu.',
    'Crunchies Fried Chicken, Agbani Road, Enugu.',
  ];

  final selectedOutlet = RxnString();

  void updateSelectedState(String? newValue){
    selectedOutlet.value = newValue;
  }
}