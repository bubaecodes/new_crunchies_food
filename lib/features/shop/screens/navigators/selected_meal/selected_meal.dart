import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:new_crunchies_food/common/styles/my_home_padding.dart';
import 'package:new_crunchies_food/features/shop/screens/cart/cart_screen.dart';
import 'package:new_crunchies_food/features/shop/screens/home/widgets/home_body/home_body_product.dart';
import 'package:new_crunchies_food/features/shop/screens/navigators/search_meals/search_meals.dart';
import 'package:get/get.dart';
import 'package:new_crunchies_food/features/shop/screens/navigators/selected_meal/widgets/selected_meal_thumbnail.dart';
import 'package:new_crunchies_food/utils/constants/colors.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';
import 'package:new_crunchies_food/utils/constants/text_strings.dart';

class SelectedMealScreen extends StatelessWidget {
  const SelectedMealScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () => Get.to(CartScreen()),
        backgroundColor: MyColors.primary,
        shape: const CircleBorder(),
        elevation: 7,
        child: Icon(Icons.shopping_cart_outlined, color: Colors.white, size: 28),
      ),
      body: MyHomePadding(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(onPressed: () => Get.to(SearchMeals()), icon: Icon(Icons.chevron_left, size: 35)),
              SizedBox(height: MySizes.sm),
              SelectedMealThumbnail(),
              SizedBox(height: MySizes.md),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 2,
                    child: Text(
                      MyTexts.selectedMealsHeader,
                      maxLines: 2,
                      style: TextStyle(
                        fontVariations: [FontVariation.weight(900)],
                        fontSize: 22,
                        fontFamily: 'Manrope',
                        color: Colors.black
                      ),
                    ),
                  ),
                  SizedBox(width: MySizes.xl * 5),
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
              ),
              SizedBox(height: MySizes.md),
              HomeBodyProduct()
            ],
          ),
        ),
      ),
    );
  }
}
