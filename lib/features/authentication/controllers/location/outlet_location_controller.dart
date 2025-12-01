// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get_storage/get_storage.dart';
// import 'package:new_crunchies_food/data/repositories/user/user_repository.dart';
// import 'package:new_crunchies_food/features/authentication/screens/set_location/set_location.dart';
//
// class OutletLocationController extends GetxController{
//   static OutletLocationController get instance => Get.find();
//
//   final outlet = [
//     'Crunchies Fried Chicken, 262 Agbani Road, Enugu.',
//     'Crunchies Fried Chicken, Abakpa Nike, Enugu.',
//     'Crunchies Fried Chicken, Rangers Avenue, Enugu.',
//     'Crunchies Fried Chicken, Thinkers Corner, Enugu.',
//     'Crunchies Fried Chicken, Maryland, Enugu.',
//   ];
//
//   /// variables
//   final selectedOutlet = RxnString();
//   final locationFormKey = GlobalKey<FormState>();
//   final box = GetStorage();
//   //GlobalKey<FormState> locationFormKey = GlobalKey<FormState>();
//
//   void updateSelectedState(String? newValue){
//     selectedOutlet.value = newValue;
//   }
//
//   /// Save selected location to Firestore
//   Future<void> saveSelectedLocation() async {
//     final outlet = selectedOutlet.value;
//     final userId = box.read('userId');
//
//     if (outlet == null || outlet.isEmpty) {
//       Get.snackbar('Error', 'Please select an outlet');
//       return;
//     }
//
//     try {
//       await UserRepository.instance.saveUserLocation(outlet);
//       Get.snackbar('Success', 'Outlet saved successfully');
//       Get.to(() => SetLocationScreen());
//     } catch (e) {
//       Get.snackbar('Error', e.toString());
//     }
//   }
// }


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:new_crunchies_food/features/authentication/screens/set_location/set_location.dart';
import 'package:new_crunchies_food/data/repositories/user/user_repository.dart';

class OutletLocationController extends GetxController {
  static OutletLocationController get instance => Get.find();

  final List<String> outlet = [
    'Crunchies Fried Chicken, 262 Agbani Road, Enugu.',
    'Crunchies Fried Chicken, Abakpa Nike, Enugu.',
    'Crunchies Fried Chicken, Rangers Avenue, Enugu.',
    'Crunchies Fried Chicken, Thinkers Corner, Enugu.',
    'Crunchies Fried Chicken, Maryland, Enugu.',
  ];

  final selectedOutlet = RxnString();
  final locationFormKey = GlobalKey<FormState>();
  final box = GetStorage();

  void updateSelectedState(String? newValue) {
    selectedOutlet.value = newValue;
  }

  Future<void> saveSelectedLocation() async {
    final outlet = selectedOutlet.value;
    final userId = box.read('userId');

    if (userId == null) {
      Get.snackbar(
          'Error',
          'User not found. Please register or login.',
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.red[300],
        colorText: Colors.black
      );
      return;
    }

    if (outlet == null || outlet.isEmpty) {
      Get.snackbar(
          'Error',
          'Please select an outlet',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.red[300],
          colorText: Colors.black
      );
      return;
    }

    try {
      await UserRepository.instance.saveUserLocation(outlet);
      Get.snackbar(
          'Success',
          'Outlet saved successfully',
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.green[200],
          colorText: Colors.black
      );
      Get.to(() => SetLocationScreen());
    } catch (e) {
      Get.snackbar('Error', e.toString());
    }
  }
}
