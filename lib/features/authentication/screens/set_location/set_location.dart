import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_crunchies_food/common/styles/my_padding.dart';
import 'package:new_crunchies_food/common/styles/my_textbtn.dart';
import 'package:new_crunchies_food/common/widgets/mytext.dart';
import 'package:new_crunchies_food/features/authentication/screens/location/widgets/location_thumbnail.dart';
import 'package:new_crunchies_food/navigation_menu.dart';
import 'package:new_crunchies_food/utils/constants/colors.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';
import 'package:new_crunchies_food/utils/constants/text_strings.dart';
import 'package:new_crunchies_food/utils/device/device_utility.dart';

class SetLocationScreen extends StatelessWidget {
  const SetLocationScreen({super.key});

  @override
  Widget build(BuildContext context) {

    Future.delayed(
      const Duration(seconds: 3),
      () {
        Get.offAll(() => (MyBottomNav()));
      }
    );

    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: MyPadding(
        child: Stack(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MyText(
                      title: MyTexts.setLocationHeading,
                      fontVariation: FontVariation.weight(800),
                      fontSize: 22
                    ),
                  ],
                ),
                SizedBox(height: MySizes.sm),
                Row(
                  children: [
                    Text(
                      MyTexts.setLocationSubheading,
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: "Manrope",
                        fontVariations: [
                          FontVariation.weight(600)
                        ]
                      ),
                    ),
                  ],
                ),
                SizedBox(height: MySizes.lg * 2),
                LocationThumbnail(),
                SizedBox(height: MySizes.lg * 2),
                Column(
                  children: [
                    MyText(title: MyTexts.setLocationSearch, fontVariation: FontVariation.weight(700), fontSize: 14, color: MyColors.darkerGrey),
                  ],
                ),
                SizedBox(height: MySizes.lg * 2),
              ],
            ),
            Positioned(
              bottom: MyDeviceUtils.getBottomNavigationBarHeight(),
              child: MyTextbtn()
            )
          ],
        ),
      ),
    );
  }
}
