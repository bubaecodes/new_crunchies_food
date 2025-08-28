import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_crunchies_food/common/widgets/mytext.dart';
import 'package:new_crunchies_food/features/personalization/screens/settings/setting_screen.dart';
import 'package:new_crunchies_food/utils/constants/colors.dart';
import 'package:new_crunchies_food/utils/constants/image_strings.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';
import 'package:new_crunchies_food/utils/constants/text_strings.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                IconButton(onPressed: () => Get.to(SettingScreen()), icon: Icon(Icons.chevron_left, size: 35)),
                MyText(title: MyTexts.settingTitle1, fontVariation: FontVariation.weight(800), fontSize: 17)
              ],
            ),
            TextButton(
              onPressed: (){},
              child: Text(
                MyTexts.profileHeadingLink,
                style: TextStyle(
                    fontVariations: [FontVariation.weight(600)],
                    fontFamily: 'Manrope',
                    fontSize: 13,
                    decoration: TextDecoration.underline,
                    color: MyColors.primary
                ),
              ),
            )
          ],
        ),
        SizedBox(height: MySizes.md),

        ///logo
        Center(
          child: Column(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(image: AssetImage(MyImages.chickenLogo), scale: 7)
                ),
              ),
              MyText(title: 'Bubae', fontVariation: FontVariation.weight(900), fontSize: 19),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.bar_chart, color: MyColors.primary, size: 30),
                  MyText(title: 'Cruncher', fontVariation: FontVariation.weight(600), fontSize: 14),
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
