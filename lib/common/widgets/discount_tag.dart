import 'package:flutter/material.dart';
import 'package:new_crunchies_food/common/widgets/mytext.dart';
import 'package:new_crunchies_food/utils/constants/colors.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';
import 'package:new_crunchies_food/utils/constants/text_strings.dart';

class DiscountTag extends StatelessWidget {
  const DiscountTag({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 8,
      left: 6,
      child: Container(
        width: 76,
        height: 21,
        padding: EdgeInsets.symmetric(vertical: 1, horizontal: MySizes.sm - 7),
        decoration: BoxDecoration(
            color: MyColors.darkGreen,
            borderRadius: BorderRadius.all(Radius.circular(10))
        ),
        child: Center(child: MyText(title: MyTexts.offerBodyDiscount, fontVariation: FontVariation.weight(500), fontSize: 12, color: Colors.white)),
      ),
    );
  }
}