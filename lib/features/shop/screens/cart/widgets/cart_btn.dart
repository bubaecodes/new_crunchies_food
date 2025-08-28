import 'package:flutter/material.dart';
import 'package:new_crunchies_food/common/widgets/mytext.dart';
import 'package:new_crunchies_food/features/shop/screens/cart/widgets/checkout/checkout_screen.dart';
import 'package:new_crunchies_food/utils/constants/colors.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';
import 'package:new_crunchies_food/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class CartBtn extends StatelessWidget {
  const CartBtn({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white70
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: MySizes.md, vertical: MySizes.sm + 5),
        child: ElevatedButton(
          onPressed: () => Get.to(CheckoutScreen()),
          style: ButtonStyle(
            backgroundColor: WidgetStatePropertyAll(MyColors.primary),
            elevation: WidgetStatePropertyAll(15),
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide(color: MyColors.secondary),
              ),
            ),
            padding: WidgetStateProperty.all(EdgeInsets.symmetric(horizontal: 100, vertical: 17)),
          ),
          child: MyText(
            title: MyTexts.cartBtn,
            fontVariation: FontVariation.weight(700),
            color: Colors.white,
            fontSize: 15
          ),
        ),
      ),
    );
  }
}
