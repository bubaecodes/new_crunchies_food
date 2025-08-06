import 'package:new_crunchies_food/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:new_crunchies_food/utils/constants/colors.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';
//import 'package:new_crunchies_food/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class OnboardingSkip extends StatelessWidget {
  const OnboardingSkip({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      //bottom: MyDeviceUtils.getBottomNavigationBarHeight() + 10,
      bottom: 75,
      left: MySizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnBoardingController.instance.skipPage(int),
        child: const Text('Skip', style: TextStyle(fontSize: 17, color: MyColors.primary))
      ),
    );
  }
}
