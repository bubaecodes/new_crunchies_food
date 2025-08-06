import 'package:new_crunchies_food/features/authentication/screens/signup/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController{
  static OnBoardingController get instance => Get.find();

  /// Variables
  final pageController = PageController();
  Rx<int> currentPageIndex = 0.obs;

  ///Update Current Index when Page Scroll
  void updatePageIndicator(index) => currentPageIndex.value = index;

  ///jump to specific dot selected page
  void dotNavigationClick(index) {
    currentPageIndex.value = index;
    pageController.jumpTo(index);
  }

  ///Update Current Index and jump to next page
  void nextPage(index) {
    if(currentPageIndex.value == 3) {
      Get.to(const SignupScreen());
    } else {
      int page = currentPageIndex.value + 1;
      pageController.jumpToPage(page);
    }
  }

  ///Update Current Index and jump to last page
  void skipPage(index) {
    currentPageIndex.value = 3;
    pageController.jumpToPage(3);
  }
}