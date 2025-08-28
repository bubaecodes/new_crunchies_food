import 'package:flutter/material.dart';
import 'package:new_crunchies_food/common/widgets/mytext.dart';
import 'package:new_crunchies_food/utils/constants/colors.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';
import 'package:new_crunchies_food/utils/constants/text_strings.dart';

class CheckoutHeader extends StatelessWidget {
  const CheckoutHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.only(
        left: MySizes.md + 3,
        right: MySizes.md + 3,
        //top: MySizes.lg + 27,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          MyText(
              title: MyTexts.checkoutHeader,
              fontVariation: FontVariation.weight(800),
              fontSize: 19
          ),
          SizedBox(height: MySizes.sm),
          MyText(
            title: MyTexts.checkoutSubHeader,
            fontVariation: FontVariation.weight(800),
            fontSize: 15,
            color: MyColors.darkerGrey,
          ),
        ],
      ),
    );
  }
}
