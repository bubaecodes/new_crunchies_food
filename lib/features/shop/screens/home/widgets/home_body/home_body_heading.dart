import 'package:flutter/material.dart';
import 'package:new_crunchies_food/features/shop/screens/navigators/search_meals/search_meals.dart';
import 'package:new_crunchies_food/utils/constants/colors.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';

class HomeBodyHeading extends StatelessWidget {
  const HomeBodyHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'How may we',
                style: TextStyle(
                  fontVariations: [FontVariation.weight(900)],
                  fontSize: 23,
                  fontFamily: 'Manrope',
                  color: Colors.black
                ),
              ),
              Text(
                'delight you today?',
                style: TextStyle(
                    fontVariations: [FontVariation.weight(900)],
                    fontSize: 23,
                    fontFamily: 'Manrope',
                    color: Colors.black
                ),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () => Get.to(SearchMeals()),
          child: Container(
            width: 45,
            height: 45,
            padding: EdgeInsets.all(MySizes.md - 3),
            decoration: BoxDecoration(
              color: MyColors.pinkBg,
              shape: BoxShape.circle,
              //image: DecorationImage(image: AssetImage(MyImages.searchIcon), scale: 7)
            ),
            child: Padding(
              padding: const EdgeInsets.only(bottom: 1, right: 11),
              child: Icon(Iconsax.search_normal, color: MyColors.primary, size: 24, weight: 22,),
            ),
          ),
        )
      ],
    );
  }
}
