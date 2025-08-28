import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_crunchies_food/common/widgets/mytext.dart';
import 'package:new_crunchies_food/features/shop/screens/navigators/selected_meal/selected_meal.dart';
import 'package:new_crunchies_food/utils/constants/colors.dart';
import 'package:new_crunchies_food/utils/constants/image_strings.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class CartMealContainer extends StatelessWidget {
  const CartMealContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return ListView.builder(
      itemCount: 3,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsetsGeometry.symmetric(vertical: MySizes.sm - 3),
          child: Container(
            width: screenWidth,
            height: MySizes.xl * 2.6,
            decoration: BoxDecoration(
                border: BoxBorder.fromBorderSide(BorderSide(color: MyColors.darkGrey, width: 1.5)),
                borderRadius: BorderRadius.all(Radius.circular(16)),
                color: Colors.white
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => Get.to(SelectedMealScreen()),
                  child: Row(
                    children: [
                      /// image
                      Container(
                        width: MySizes.xl * 3.9,
                        height: MySizes.xl * 2.6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(13),
                            bottomLeft: Radius.circular(13),
                          ),
                          image: DecorationImage(image: AssetImage(MyImages.productImage19), fit: BoxFit.cover),
                        ),
                      ),
                      /// first column
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: MySizes.sm - 4, horizontal: MySizes.sm - 2),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            MyText(
                              title: 'Donut',
                              fontVariation: FontVariation.weight(800),
                              fontSize: 16.2,
                            ),
                            Row(
                              children: [
                                Image(image: AssetImage(MyImages.categoryImg4), width: 14, height: 14),
                                SizedBox(width: MySizes.xs),
                                MyText(
                                  title: 'Pastry',
                                  fontVariation: FontVariation.weight(700),
                                  fontSize: 13,
                                  color: MyColors.darkerGrey,
                                ),
                              ],
                            ),
                            MyText(
                              title: '#1,000',
                              fontVariation: FontVariation.weight(800),
                              fontSize: 16.2,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                ///second column
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: MySizes.sm - 2, horizontal: MySizes.sm + 4),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: (){}, child: Icon(Iconsax.trash)
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: (){},
                            child: Container(
                              width: 24,
                              height: 24,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.grey[400]
                              ),
                              child: Icon(Iconsax.minus),
                            ),
                          ),
                          SizedBox(width: MySizes.sm),
                          MyText(title: '0', fontVariation: FontVariation.weight(700), fontSize: 16),
                          SizedBox(width: MySizes.sm),
                          InkWell(
                            onTap: (){},
                            child: Container(
                              width: 24,
                              height: 24,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: MyColors.primary
                              ),
                              child: Icon(Iconsax.add, color: Colors.white),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      }
    );
  }
}
