import 'package:flutter/material.dart';
import 'package:new_crunchies_food/common/widgets/mytext.dart';
import 'package:new_crunchies_food/features/shop/screens/navigators/selected_meal/selected_meal.dart';
import 'package:new_crunchies_food/utils/constants/colors.dart';
import 'package:new_crunchies_food/utils/constants/image_strings.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';
import 'package:get/get.dart';

class SearchMealsProduct extends StatelessWidget {
  const SearchMealsProduct({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return ListView.builder(
      itemCount: 9,
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => Get.to(SelectedMealScreen()),
          child: Padding(
            padding: EdgeInsetsGeometry.symmetric(vertical: MySizes.sm - 3),
            child: Container(
              width: screenWidth,
              height: MySizes.xl * 2.5,
              decoration: BoxDecoration(
                  border: BoxBorder.fromBorderSide(BorderSide(color: MyColors.darkGrey, width: 1.5)),
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                  color: Colors.white
              ),
              child: Row(
                children: [
                  Container(
                    width: MySizes.xl * 3.9,
                    height: MySizes.xl * 2.5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(13),
                          bottomLeft: Radius.circular(13),
                        ),
                        image: DecorationImage(image: AssetImage(MyImages.productImage19), fit: BoxFit.cover)
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: MySizes.sm - 2, horizontal: MySizes.sm - 2),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyText(
                          title: 'Donut',
                          fontVariation: FontVariation.weight(700),
                          fontSize: 15.3,
                          color: MyColors.darkerGrey,
                        ),
                        MyText(
                          title: '#1,000',
                          fontVariation: FontVariation.weight(800),
                          fontSize: 16.5,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      }
    );
  }
}
