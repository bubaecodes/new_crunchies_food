import 'package:flutter/material.dart';
import 'package:new_crunchies_food/common/widgets/mytext.dart';
import 'package:new_crunchies_food/features/authentication/screens/location/location.dart';
import 'package:new_crunchies_food/features/shop/screens/support/support_screen.dart';
import 'package:new_crunchies_food/utils/constants/colors.dart';
import 'package:new_crunchies_food/utils/constants/image_strings.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';
import 'package:new_crunchies_food/utils/constants/text_strings.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';

class HomeAppbar extends StatelessWidget {
  const HomeAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        /// appbar
        Row(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(image: AssetImage(MyImages.chickenLogo), scale: 7)
              ),
            ),
            SizedBox(width: MySizes.sm + 4),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(
                    title: MyTexts.homeAppBarHeading,
                    fontVariation: FontVariation.weight(700),
                    fontSize: 20
                ),
                MyText(
                  title: MyTexts.homeAppBarSubHeading,
                  fontVariation: FontVariation.weight(600),
                  fontSize: 14,
                  color: MyColors.darkerGrey,
                ),
              ],
            )
          ],
        ),
        SizedBox(height: MySizes.md),

        /// pink container
        InkWell(
          onTap: () => Get.to(LocationScreen()),
          child: Container(
            width: screenWidth,
            height: MySizes.xl * 2.4,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              color: MyColors.lightPinkBg
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: MySizes.lg - 10,
                  vertical: MySizes.md
              ),
              child: Row(
                children: [
                  ///container icon
                  Container(
                    width: 55,
                    height: 55,
                    decoration: BoxDecoration(
                        color: MyColors.pinkBg,
                        shape: BoxShape.circle,
                        //image: DecorationImage(image: AssetImage(MyImages.shopLogo), scale: 11)
                    ),
                    child: Icon(Iconsax.shop, color: MyColors.primary,),
                  ),
                  SizedBox(width: MySizes.sm),
                  /// container text
                  Expanded(
                    child: Column(
                      //mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MyText(
                              title: MyTexts.homeContainerHeading,
                              fontVariation: FontVariation.weight(600),
                              fontSize: 12.5,
                              color: MyColors.darkerGrey,
                            ),
                            Icon(Icons.arrow_right_alt)
                          ],
                        ),
                        Text(
                          MyTexts.homeContainerSubHeading,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          // softWrap: true,
                          style: TextStyle(
                            fontFamily: 'Manrope',
                            fontVariations: [FontVariation.weight(700)],
                            fontSize: 14,
                            color: MyColors.black,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(height: MySizes.md - 10),

        ///text button
        TextButton(
          onPressed: () => Get.to(SupportScreen()),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                MyTexts.homeAppBarTextBtn,
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.black,
                    fontSize: 12,
                    color: MyColors.secondary,
                    fontVariations: [FontVariation.weight(600)],
                    fontFamily: 'Manrope'
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
