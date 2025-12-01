import 'package:flutter/material.dart';
import 'package:new_crunchies_food/common/widgets/mytext.dart';
import 'package:new_crunchies_food/features/shop/screens/offers/widgets/offer_body_container.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';
import 'package:new_crunchies_food/utils/constants/text_strings.dart';
import 'package:new_crunchies_food/utils/dummy_data/dummy_data.dart';

class OffersBody extends StatelessWidget {
  const OffersBody({super.key});

  @override
  Widget build(BuildContext context) {
    final meal = MyDummyData.products;
    return Column(
      children: [
        Row(
          children: [
            MyText(title: MyTexts.offerBodyHeading, fontVariation: FontVariation.weight(800), fontSize: 16),
          ],
        ),
        Row(
          children: [
            MyText(title: MyTexts.offerBodySubHeading, fontVariation: FontVariation.weight(600), fontSize: 14),
          ],
        ),
        SizedBox(height: MySizes.md),
        // OfferBodyContainer(image: MyImages.productImage18),
        OfferBodyContainer(
          meal: MyDummyData.products[39],
          image: 'https://crunchies.s3.eu-west-1.wasabisys.com/_DSC3522%20%281%29.jpg',
        ),
        SizedBox(height: MySizes.md),
        Row(
          children: [
            MyText(title: MyTexts.offerBodyDescription1, fontVariation: FontVariation.weight(600), fontSize: 14),
          ],
        ),
        SizedBox(height: MySizes.xs),
        Row(
          children: [
            MyText(title: MyTexts.offerBodyPrice1, fontVariation: FontVariation.weight(700), fontSize: 16),
          ],
        ),
        SizedBox(height: MySizes.md),
        OfferBodyContainer(
          image: 'https://crunchies.s3.eu-west-1.wasabisys.com/_DSC3532%20%281%29.jpg',
          meal: MyDummyData.products[7],
        ),
        SizedBox(height: MySizes.md),
        Row(
          children: [
            MyText(
              title: MyTexts.offerBodyDescription2,
              fontVariation: FontVariation.weight(600),
              fontSize: 14
            ),
          ],
        ),
        SizedBox(height: MySizes.xs),
        Row(
          children: [
            MyText(title: MyTexts.offerBodyPrice2, fontVariation: FontVariation.weight(700), fontSize: 16),
          ],
        ),
        SizedBox(height: MySizes.md),
        OfferBodyContainer(
          image: 'https://crunchies.s3.eu-west-1.wasabisys.com/_DSC3512%20%281%29.jpg',
          meal: MyDummyData.products[8]
        ),
        SizedBox(height: MySizes.md),
        Row(
          children: [
            MyText(title: MyTexts.offerBodyDescription3, fontVariation: FontVariation.weight(600), fontSize: 14),
          ],
        ),
        SizedBox(height: MySizes.xs),
        Row(
          children: [
            MyText(title: MyTexts.offerBodyPrice3, fontVariation: FontVariation.weight(700), fontSize: 16),
          ],
        ),
        SizedBox(height: MySizes.md + 10),
        Row(
          children: [
            MyText(title: MyTexts.offerFooterTitle, fontVariation: FontVariation.weight(800), fontSize: 16),
          ],
        ),
        SizedBox(height: MySizes.xs),
        Row(
          children: [
            MyText(title: MyTexts.offerFooterSubTitle, fontVariation: FontVariation.weight(600), fontSize: 14),
          ],
        ),
      ],
    );
  }
}
