import 'package:flutter/material.dart';
import 'package:new_crunchies_food/common/widgets/mytext.dart';
import 'package:new_crunchies_food/features/shop/controllers/search_meal_controllers/search_meal_controller.dart';
import 'package:new_crunchies_food/utils/constants/colors.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';
import 'package:new_crunchies_food/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class ClearSearch extends StatelessWidget {
  const ClearSearch({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SearchMealController());
    return Column(
      children: [
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   children: [
        //     MyText(
        //       title: MyTexts.searchMealsRecentSearch,
        //       fontVariation: FontVariation.weight(700),
        //       fontSize: 15.1,
        //     ), //TODO: Make the search/search meal option & add to cart btn switchable b4 payment
        //     TextButton(
        //       //onPressed: (){},
        //       onPressed: controller.clearSearch,
        //       child: MyText(
        //         title: MyTexts.searchMealsClearSearch,
        //         fontVariation: FontVariation.weight(700),
        //         fontSize: 15.1,
        //         textDecoration: TextDecoration.underline,
        //         color: MyColors.primary,
        //       ),
        //     ),
        //   ],
        // ),
        Center(
          child: Padding(
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
          ),
        )
      ],
    );
  }
}
