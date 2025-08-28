import 'package:flutter/material.dart';
import 'package:new_crunchies_food/common/widgets/mytext.dart';
import 'package:new_crunchies_food/features/shop/screens/loyalty/widgets/loyalty_btn.dart';
import 'package:new_crunchies_food/features/shop/screens/loyalty/widgets/loyalty_checkbox.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';
import 'package:new_crunchies_food/utils/constants/text_strings.dart';

class LoyaltyBody extends StatelessWidget {
  const LoyaltyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            MyText(title: MyTexts.loyaltyHeading, fontVariation: FontVariation.weight(800), fontSize: 19),
          ],
        ),
        Row(
          children: [
            MyText(title: MyTexts.loyaltySubHeading, fontVariation: FontVariation.weight(800), fontSize: 19),
          ],
        ),
        SizedBox(height: MySizes.md - 5),
        MyText(title: MyTexts.loyaltyTitle, fontVariation: FontVariation.weight(700), fontSize: 14),
        SizedBox(height: MySizes.md + 8),
        LoyaltyCheckbox(title: MyTexts.loyaltyBodyTitle1, subTitle: MyTexts.loyaltyBodySubTitle1),
        SizedBox(height: MySizes.md + 8),
        LoyaltyCheckbox(title: MyTexts.loyaltyBodyTitle2, subTitle: MyTexts.loyaltyBodySubTitle2),
        SizedBox(height: MySizes.md + 8),
        LoyaltyCheckbox(title: MyTexts.loyaltyBodyTitle2, subTitle: MyTexts.loyaltyBodySubTitle2),
        SizedBox(height: MySizes.lg),
        LoyaltyBtn()
        // MyButton(
        //   onpressed: (){},
        //   child: MyText(title: MyTexts.loyaltyBtn, fontVariation: FontVariation.weight(800), fontSize: 15),
        //   backgroundColor: WidgetStateProperty.all(MyColors.primary),
        //   borderSide: WidgetStateProperty.all()
        // )
      ],
    );
  }
}
