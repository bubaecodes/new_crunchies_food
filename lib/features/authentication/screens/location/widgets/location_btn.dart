// import 'package:get/get.dart';
//
// class LocationController extends GetxController {
//   // List of states
//   final states = [
//     'Abia',
//     'Adamawa',
//     'Akwa-Ibom',
//     'Anambra',
//     'Bauchi',
//     'Bayelsa',
//     'Benue',
//     'Borno',
//     'Cross-River',
//     'Delta',
//     'Ebonyi',
//     'Edo',
//     'Ekiti',
//     'Enugu',
//     'Gombe',
//     'Imo',
//     'Jigawa',
//     'Kaduna',
//     'Kano',
//     'Katsina',
//     'Kebbi',
//     'Kogi',
//     'Kwara',
//     'Lagos',
//   ];
//
//   // Selected state (observable variable)
//   var selectedState = RxnString();
//
//   // Update selected state
//   void updateSelectedState(String? newValue) {
//     selectedState.value = newValue;
//   }
// }
//
//
//
//
//
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'location_controller.dart'; // Make sure to import the controller
//
// class LocationForm extends StatelessWidget {
//   LocationForm({super.key});
//
//   // Instantiate the controller
//   final LocationController controller = Get.put(LocationController());
//
//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       child: Column(
//         children: [
//           Obx(() => DropdownButtonFormField<String>(
//             decoration: const InputDecoration(
//               labelText: 'Select a state',
//             ),
//             items: controller.states.map((state) {
//               return DropdownMenuItem(
//                 value: state,
//                 child: Text(state),
//               );
//             }).toList(),
//             value: controller.selectedState.value,
//             onChanged: controller.updateSelectedState,
//           )),
//         ],
//       ),
//     );
//   }
// }
