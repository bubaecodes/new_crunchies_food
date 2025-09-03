import 'package:flutter/material.dart';
import 'package:new_crunchies_food/common/widgets/mytext.dart';
import 'package:new_crunchies_food/features/personalization/screens/settings/setting_screen.dart';
import 'package:new_crunchies_food/utils/constants/colors.dart';
import 'package:new_crunchies_food/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class SupportBtn extends StatelessWidget {
  const SupportBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => Get.to(SettingScreen()),
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(MyColors.lighterPinkBg),
        elevation: WidgetStatePropertyAll(0),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
            side: BorderSide(color: MyColors.lightPinkBg),
          ),
        ),
        padding: WidgetStateProperty.all(EdgeInsets.symmetric(horizontal: 133, vertical: 17)),
      ),
      child: MyText(
        title: MyTexts.supportBtn,
        fontVariation: FontVariation.weight(700),
        color: MyColors.primary,
        fontSize: 15
      ),
    );
  }
}
