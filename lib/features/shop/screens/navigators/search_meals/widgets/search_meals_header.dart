import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_crunchies_food/common/widgets/mytext.dart';
import 'package:new_crunchies_food/features/shop/screens/home/home_screen.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';
import 'package:new_crunchies_food/utils/constants/text_strings.dart';
import 'package:iconsax/iconsax.dart';

class SearchMealsHeader extends StatelessWidget {
  const SearchMealsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            IconButton(onPressed: () => Get.to(HomeScreen()), icon: Icon(Icons.chevron_left, size: 35)),
            MyText(
              title: MyTexts.searchMealsHeader,
              fontVariation: FontVariation.weight(800),
              fontSize: 20
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Iconsax.search_normal),
                  hintText: 'Search meals...',
                  hintStyle: TextStyle(
                      fontVariations: [FontVariation.weight(600)],
                      fontSize: 16.2,
                      color: Colors.grey[900],
                      fontFamily: 'Manrope'
                  ),
                  fillColor: Colors.grey[200],
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none
                  ),
                ),
              ),
            ),
            SizedBox(width: MySizes.md - 2),
            Container(
              width: 52,
              height: 52,
              decoration: BoxDecoration(
                  color: Colors.grey[200],
                  shape: BoxShape.circle
              ),
              child: Icon(Icons.filter_list, size: 30),
            )
          ],
        )
      ],
    );
  }
}
