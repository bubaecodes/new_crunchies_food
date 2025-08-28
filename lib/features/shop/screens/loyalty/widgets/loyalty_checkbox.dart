import 'package:flutter/material.dart';
import 'package:new_crunchies_food/utils/constants/colors.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';

class LoyaltyCheckbox extends StatelessWidget {
  const LoyaltyCheckbox({super.key, required this.title, required this.subTitle});

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: screenWidth,
      child: Row(
        children: [
          Icon(Icons.check_box_rounded, color: MyColors.darkGreen),
          SizedBox(width: MySizes.sm),
          Expanded(
            child: RichText(
              maxLines: 2,
              softWrap: true,
              text: TextSpan(
                text: title,
                style: TextStyle(
                  fontFamily: 'Manrope',
                  fontVariations: [FontVariation.weight(800)],
                  color: Colors.black,
                  fontSize: 13,
                ),
                children: [
                  TextSpan(
                    text: subTitle,
                    style: TextStyle(
                      fontFamily: 'Manrope',
                      fontVariations: [FontVariation.weight(700)],
                      color: Colors.black,
                      fontSize: 12,
                    ),
                  ),
                ]
              )
            ),
          )


          // MyText(title: MyTexts.loyaltyBodyTitle1, fontVariation: FontVariation.weight(800), fontSize: 14),
          // Column(
          //   children: [
          //     MyText(title: MyTexts.loyaltyBodySubTitle1a, fontVariation: FontVariation.weight(800), fontSize: 14),
          //     MyText(title: MyTexts.loyaltyBodySubTitle1b, fontVariation: FontVariation.weight(600), fontSize: 12),
          //   ],
          // )
        ],
      ),
    );
  }
}
