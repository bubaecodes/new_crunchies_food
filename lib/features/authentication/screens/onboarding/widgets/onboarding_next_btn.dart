import 'package:new_crunchies_food/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:new_crunchies_food/utils/constants/colors.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';
//import 'package:new_crunchies_food/utils/device/device_utility.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:new_crunchies_food/utils/device/device_utility.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Positioned(
      bottom: MyDeviceUtils.getBottomNavigationBarHeight() + 10,
      //bottom: 75,
      right: MySizes.defaultSpace,
      child: TextButton(
        onPressed: () => controller.nextPage(int),
        child: Obx(
            () {
              if (controller.currentPageIndex <= 2) {
                return const Text(
                  'Next',
                  style: TextStyle(fontSize: 17, color: MyColors.primary),
                );
              } else {
                return Row(
                  children: [
                    Icon(Icons.arrow_forward_rounded, color: MyColors.primary, size: 19),
                    SizedBox(height: MySizes.sm),
                    const Text(
                      'Get Started',
                      style: TextStyle(fontSize: 17, color: MyColors.primary),
                    ),
                  ],
                );
              }

            }
        ),
      ),
    );
  }
}