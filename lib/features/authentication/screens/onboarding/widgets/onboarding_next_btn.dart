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
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(MyColors.primary),
          shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25.0),
              side: BorderSide(color: MyColors.secondary)
            ),
          ),
          padding: WidgetStatePropertyAll(EdgeInsetsGeometry.symmetric(horizontal: MySizes.xl - 7, vertical: MySizes.sm + 5))
        ),
        child: Obx(
            () {
              if (controller.currentPageIndex <= 2) {
                return Row(
                  children: [
                    Icon(Icons.arrow_forward_rounded, color: Colors.white, size: 20),
                    SizedBox(width: MySizes.xs),
                    const Text(
                      'Next',
                      style: TextStyle(fontSize: 15, color: Colors.white, fontFamily: 'Manrope', fontVariations: [FontVariation.weight(600)]),
                    ),
                  ],
                );
              } else {
                return Row(
                  children: [
                    Icon(Icons.arrow_forward_rounded, color: Colors.white, size: 20),
                    SizedBox(width: MySizes.xs),
                    const Text(
                      'Get Started',
                      style: TextStyle(fontSize: 15, color: Colors.white, fontFamily: 'Manrope', fontVariations: [FontVariation.weight(600)]),
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