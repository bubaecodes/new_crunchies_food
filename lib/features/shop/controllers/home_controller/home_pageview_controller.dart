import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'dart:async';

import 'package:new_crunchies_food/utils/constants/image_strings.dart';

class HomePageViewController extends GetxController{
  static HomePageViewController get instance => Get.find();

  /// variables
  final pageController = PageController();
  RxInt currentPageIndex = 0.obs;

  final List<String> images = [
    MyImages.promoBanner1,
    MyImages.promoBanner2,
    MyImages.promoBanner3,
    MyImages.promoBanner6,
    MyImages.promoBanner4,
    MyImages.promoBanner5,
  ];

  Timer? _timer;

  @override
  void onInit() {
    _startAutoSwipe();
    super.onInit();
  }

  void _startAutoSwipe() {
    _timer = Timer.periodic(Duration(seconds: 3), (timer) {
      if(pageController.hasClients) {
        currentPageIndex.value = (currentPageIndex.value + 1) % images.length;
        pageController.animateToPage(
          currentPageIndex.value,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInOut,
        );
      }
    });
  }

  void onPageChanged(int index) {
    currentPageIndex.value = index;
  }

  @override
  void onClose() {
    _timer?.cancel();
    pageController.dispose();
    super.onClose();
  }
}