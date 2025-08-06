import 'package:new_crunchies_food/features/authentication/controllers/onboarding/onboarding_controller.dart';
import 'package:new_crunchies_food/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:new_crunchies_food/features/authentication/screens/onboarding/widgets/onboarding_next_btn.dart';
import 'package:new_crunchies_food/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:new_crunchies_food/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:new_crunchies_food/utils/constants/colors.dart';
import 'package:new_crunchies_food/utils/constants/image_strings.dart';
import 'package:new_crunchies_food/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      backgroundColor: MyColors.textSecondary,
      body: Stack(
        children: [
          /// Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: MyImages.onBoardingImage1,
                //hashtag: MyTexts.onBoardingHashtag1,
                title: MyTexts.onBoardingTitle1,
                subTitle: MyTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: MyImages.onBoardingImage2,
                //hashtag: MyTexts.onBoardingHashtag2,
                title: MyTexts.onBoardingTitle2,
                subTitle: MyTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: MyImages.onBoardingImage3,
                //hashtag: MyTexts.onBoardingHashtag3,
                title: MyTexts.onBoardingTitle3,
                subTitle: MyTexts.onBoardingSubTitle4,
              ),
              OnBoardingPage(
                image: MyImages.onBoardingImage4,
                //hashtag: MyTexts.onBoardingHashtag4,
                title: MyTexts.onBoardingTitle4,
                subTitle: MyTexts.onBoardingSubTitle4,
              ),
            ],
          ),

          /// dot navigation SmoothPageIndicator
          const OnBoardingDotNavigation(),

          /// skip button
          const OnboardingSkip(),

          /// next button
          const OnBoardingNextButton()
        ],
      ),
    );
  }
}





