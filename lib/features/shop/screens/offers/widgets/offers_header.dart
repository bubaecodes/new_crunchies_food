import 'package:flutter/material.dart';
import 'package:new_crunchies_food/common/widgets/mytext.dart';
import 'package:new_crunchies_food/features/shop/screens/home/widgets/home_pageview.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';
import 'package:new_crunchies_food/utils/constants/text_strings.dart';


class OffersHeader extends StatelessWidget {
  const OffersHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            MyText(title: MyTexts.offerHeading, fontVariation: FontVariation.weight(700), fontSize: 21),
          ],
        ),
        SizedBox(height: MySizes.sm),
        MyText(title: MyTexts.offerSubHeading, fontVariation: FontVariation.weight(600), fontSize: 15),
        SizedBox(height: MySizes.md),
        Row(
          children: [
            MyText(title: MyTexts.offerPageViewTitle, fontVariation: FontVariation.weight(800), fontSize: 16),
            Image.asset("assets/icons/flame.png", width: 20, height: 20,)
          ],
        ),
        SizedBox(height: MySizes.sm),
        HomePageview()
      ],
    );
  }
}