import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:new_crunchies_food/data/repositories/authentication/authentication_repository.dart';
import 'package:new_crunchies_food/features/personalization/controllers/address_controllers/address_controller.dart';
import 'package:new_crunchies_food/my_app.dart';

import 'firebase_options.dart';

Future<void> main() async {
  /// Widgets Binding
  final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  /// GetX Local Storage
  await GetStorage.init();

  // Todo: Init Payment Methods

  /// Await Native Splash until other items load
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  /// Initialize Firebase & Authentication Repository
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,).then(
        (FirebaseApp value) => Get.put(AuthenticationRepository()),
  );

  // Register the controller globally
  Get.put(AddressController());
  //Get.put(CartController());

  runApp(const MyApp());
}


// keytool -list -v -keystore "C:\Users\USER\.android\debug.keystore" -alias androiddebugkey -storepass android -keypass android

// Platform  Firebase App Id
// web       1:383207421379:web:c6237b189f4636b0ba3976
// android   1:383207421379:android:b23dda532258a117ba3976
// ios       1:383207421379:ios:5efb4470f6b3326aba3976
// macos     1:383207421379:ios:5efb4470f6b3326aba3976
// windows   1:383207421379:web:e9a263d32a2d7a0bba3976