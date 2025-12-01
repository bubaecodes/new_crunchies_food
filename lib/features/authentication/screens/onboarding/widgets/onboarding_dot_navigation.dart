import 'package:new_crunchies_food/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:new_crunchies_food/utils/constants/colors.dart';
//import 'package:new_crunchies_food/utils/device/device_utility.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter/material.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    return Positioned(
      //bottom: MyDeviceUtils.getBottomNavigationBarHeight() + 55,
      bottom: 100,
      left: 167,
      child: Center(
        child: SmoothPageIndicator(
          controller: controller.pageController,
          onDotClicked: controller.dotNavigationClick,
          count: 4,
          effect: const JumpingDotEffect(activeDotColor: MyColors.primary, dotColor: MyColors.darkGrey, dotHeight: 5, dotWidth: 17),
        ),
      ),
    );
  }
}