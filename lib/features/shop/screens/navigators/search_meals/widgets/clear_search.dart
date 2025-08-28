import 'package:flutter/material.dart';
import 'package:new_crunchies_food/common/widgets/mytext.dart';
import 'package:new_crunchies_food/utils/constants/colors.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';
import 'package:new_crunchies_food/utils/constants/text_strings.dart';

class ClearSearch extends StatelessWidget {
  const ClearSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyText(
              title: MyTexts.searchMealsRecentSearch,
              fontVariation: FontVariation.weight(700),
              fontSize: 15.1,
            ),
            TextButton(
              onPressed: (){},
              child: MyText(
                title: MyTexts.searchMealsClearSearch,
                fontVariation: FontVariation.weight(700),
                fontSize: 15.1,
                textDecoration: TextDecoration.underline,
                color: MyColors.primary,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: MySizes.xl, vertical: MySizes.xl * 3.3),
          child: Column(
            children: [
              MyText(
                title: MyTexts.searchMealsCenterTitle,
                fontVariation: FontVariation.weight(800),
                fontSize: 20,
                color: MyColors.primary,
              ),
              MyText(
                title: MyTexts.searchMealsCenterSubTitle,
                fontVariation: FontVariation.weight(600),
                fontSize: 16,
                color: Colors.grey[800]
              ),
            ],
          ),
        )
      ],
    );
  }
}
