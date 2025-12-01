import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_crunchies_food/common/widgets/mytext.dart';
import 'package:new_crunchies_food/features/shop/controllers/home_controller/home_greeting_controller.dart';
import 'package:new_crunchies_food/utils/constants/colors.dart';
import 'package:new_crunchies_food/utils/constants/image_strings.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';

class SettingsAppbar extends StatelessWidget {
  const SettingsAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    final greetingController = Get.put(HomeGreetingController());
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: AssetImage(MyImages.chickenLogo))
          ),
        ),
        SizedBox(width: MySizes.sm),
        Obx(
          ()=> Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText(
                //title: MyTexts.settingHeading,
                title: 'Hello ${greetingController.username.value}',
                fontVariation: FontVariation.weight(900),
                fontSize: 19
              ),
              MyText(
                //title: MyTexts.settingSubHeading,
                //title: greetingController.phoneNo.value,
                title: '234${greetingController.phoneNo.value}',
                fontVariation: FontVariation.weight(700),
                fontSize: 15,
                color: MyColors.darkerGrey,
              ),
            ],
          ),
        )
      ],
    );
  }
}
