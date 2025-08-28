import 'package:flutter/material.dart';
import 'package:new_crunchies_food/common/widgets/mytext.dart';
import 'package:new_crunchies_food/features/shop/screens/cart/widgets/cart_add_more.dart';
import 'package:new_crunchies_food/features/shop/screens/cart/widgets/cart_meal_container.dart';
import 'package:new_crunchies_food/utils/constants/colors.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';
import 'package:new_crunchies_food/utils/constants/text_strings.dart';

class CartBody extends StatelessWidget {
  const CartBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsetsGeometry.only(
              left: MySizes.md + 3,
              right: MySizes.md + 3
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              MyText(
                title: MyTexts.cartSubHeader,
                fontVariation: FontVariation.weight(800),
                fontSize: 15,
                color: MyColors.darkerGrey,
              ),
              CartMealContainer(),
              SizedBox(height: MySizes.sm),
              Divider(),
              Padding(
                padding: EdgeInsetsGeometry.symmetric(horizontal: MySizes.xs - 3, vertical: MySizes.md - 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(
                      title: MyTexts.cartAmount,
                      fontVariation: FontVariation.weight(800),
                      fontSize: 15.3,
                      color: MyColors.black,
                    ),
                    MyText(
                      title: '#3,150',
                      fontVariation: FontVariation.weight(800),
                      fontSize: 22,
                      color: MyColors.black,
                    ),
                  ],
                ),
              ),
              Divider(),
              SizedBox(height: MySizes.sm + 5),
              CartAddMore()
              //Image(image: AssetImage(MyImages.productImage7), width: 50, height: 350,)
            ],
          ),
        ),
      ),
    );
  }
}
