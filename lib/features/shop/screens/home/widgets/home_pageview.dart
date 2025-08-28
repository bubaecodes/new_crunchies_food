import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_crunchies_food/features/shop/controllers/home_controller/home_pageview_controller.dart';
import 'package:new_crunchies_food/utils/constants/colors.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';
import 'package:new_crunchies_food/utils/helpers/helper_function.dart';

class HomePageview extends StatelessWidget {
  const HomePageview({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(HomePageViewController());
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          width: MyHelperFunctions.screenWidth(),
          height: MyHelperFunctions.screenHeight() * 0.18,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(22)
          ),
          child: PageView.builder(
            controller: controller.pageController,
            onPageChanged: controller.onPageChanged,
            itemCount: controller.images.length,
            itemBuilder: (context, index) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  controller.images[index],
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
        ),

        SizedBox(height: MySizes.md),

        Obx(() => Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            controller.images.length,
                (index) => AnimatedContainer(
              duration: Duration(milliseconds: 300),
              margin: const EdgeInsets.symmetric(horizontal: 4),
              width: controller.currentPageIndex.value == index ? 25 : 10,
              height: controller.currentPageIndex.value == index ? 9 : 9,
              decoration: BoxDecoration(
                color: controller.currentPageIndex.value == index
                    ? MyColors.primary
                    : MyColors.pinkBg,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.circular(5))
              ),
            ),
          ),
        )),
      ],
    );
  }
}
