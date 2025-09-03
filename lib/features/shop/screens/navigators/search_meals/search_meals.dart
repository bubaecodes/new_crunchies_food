import 'package:flutter/material.dart';
import 'package:new_crunchies_food/common/styles/my_home_padding.dart';
import 'package:new_crunchies_food/common/widgets/mytext.dart';
import 'package:new_crunchies_food/features/shop/screens/navigators/search_meals/widgets/clear_search.dart';
import 'package:new_crunchies_food/features/shop/screens/navigators/search_meals/widgets/search_meals_header.dart';
import 'package:new_crunchies_food/features/shop/screens/navigators/search_meals/widgets/search_meals_product.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';
import 'package:new_crunchies_food/utils/constants/text_strings.dart';

class SearchMeals extends StatelessWidget {
  const SearchMeals({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: MyHomePadding(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SearchMealsHeader(),
              SizedBox(height: MySizes.sm - 2),
              ClearSearch(),
              MyText(
                title: MyTexts.searchMealsOptionHeader,
                fontVariation: FontVariation.weight(700),
                fontSize: 16,
              ),
              SizedBox(height: MySizes.md - 5),
              SearchMealsProduct()
            ],
          ),
        ),
      ),
    );
  }
}
