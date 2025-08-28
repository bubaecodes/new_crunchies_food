import 'package:flutter/material.dart';
import 'package:new_crunchies_food/common/widgets/mytext.dart';
import 'package:new_crunchies_food/utils/constants/colors.dart';
import 'package:new_crunchies_food/utils/constants/image_strings.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';
import 'package:new_crunchies_food/utils/constants/text_strings.dart';

class SettingsAppbar extends StatelessWidget {
  const SettingsAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(image: AssetImage(MyImages.chickenLogo), scale: 7)
          ),
        ),
        SizedBox(width: MySizes.sm),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyText(
              title: MyTexts.settingHeading,
              fontVariation: FontVariation.weight(900),
              fontSize: 19
            ),
            MyText(
              title: MyTexts.settingSubHeading,
              fontVariation: FontVariation.weight(700),
              fontSize: 15,
              color: MyColors.darkerGrey,
            ),
          ],
        )
      ],
    );
  }
}
