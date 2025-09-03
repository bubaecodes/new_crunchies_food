import 'package:flutter/material.dart';
import 'package:new_crunchies_food/common/widgets/mytext.dart';
import 'package:new_crunchies_food/features/shop/controllers/checkout_controllers/checkbox_controller.dart';
import 'package:new_crunchies_food/features/shop/screens/cart/widgets/cart_meal_container.dart';
import 'package:new_crunchies_food/features/shop/screens/cart/widgets/checkout/widgets/checkbox_icon.dart';
import 'package:new_crunchies_food/utils/constants/colors.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';
import 'package:new_crunchies_food/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class CheckoutBody extends StatelessWidget {
  const CheckoutBody({super.key});


  @override
  Widget build(BuildContext context) {
    final controller = Get.put(CheckBoxController());
    return Expanded(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            left: MySizes.md + 3,
            right: MySizes.md + 3
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CartMealContainer(),
              SizedBox(height: MySizes.sm + 5),

              /// first option
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyText(
                    title: MyTexts.checkoutTitle1,
                    fontVariation: FontVariation.weight(900),
                    fontSize: 16
                  ),
                  Container(
                    width: 72,
                    height: 21,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)
                      ),
                      color: MyColors.lighterPinkBg
                    ),
                    child: Center(
                      child: MyText(
                        title: MyTexts.checkoutRequired,
                        fontVariation: FontVariation.weight(600),
                        fontSize: 10.4,
                        color: MyColors.primary,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: MySizes.xs + 5),
              CheckboxIcon(options: ['Myself', 'Someone else']),
              SizedBox(height: MySizes.md),


              /// second option
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyText(
                      title: MyTexts.checkoutTitle2,
                      fontVariation: FontVariation.weight(900),
                      fontSize: 16
                  ),
                  Container(
                    width: 72,
                    height: 21,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)
                        ),
                        color: MyColors.lighterPinkBg
                    ),
                    child: Center(
                      child: MyText(
                        title: MyTexts.checkoutRequired,
                        fontVariation: FontVariation.weight(600),
                        fontSize: 10.4,
                        color: MyColors.primary,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: MySizes.xs + 5),
              CheckboxIcon(
                options: ['Branded nylon', 'Paper bag', 'Love box (ideal for gift)'],
                suffixes: ['Free', '#500', '#500']
              ),
              SizedBox(height: MySizes.md),

              /// third option
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyText(
                      title: MyTexts.checkoutTitle3,
                      fontVariation: FontVariation.weight(900),
                      fontSize: 16
                  ),
                  Container(
                    width: 72,
                    height: 21,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10)
                        ),
                        color: MyColors.lighterPinkBg
                    ),
                    child: Center(
                      child: MyText(
                        title: MyTexts.checkoutRequired,
                        fontVariation: FontVariation.weight(600),
                        fontSize: 10.4,
                        color: MyColors.primary,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: MySizes.xs + 5),
              CheckboxIcon(
                options: ['Delivery', 'Pick up'],
                suffixes: ['#500', 'Free']
              ),

              /// text field area
              SizedBox(height: MySizes.md),
              MyText(title: 'Note', fontVariation: FontVariation.weight(800), fontSize: 15),
              SizedBox(height: MySizes.sm),
              Form(
                child: TextField(
                  maxLines: 6,
                  decoration: InputDecoration(
                    hintText: 'Special instructions or delivery notes',
                    hintStyle: TextStyle(
                      fontSize: 14,
                      fontVariations: [FontVariation.weight(800)],
                      fontFamily: 'Manrope',
                      color: MyColors.darkerGrey
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide(color: MyColors.darkerGrey, width: 1.4),
                    ),
                  ),
                  style: TextStyle(
                    fontSize: 14,
                    fontVariations: [FontVariation.weight(800)],
                    fontFamily: 'Manrope'
                  ),
                )
              ),

              ///continue here
            ],
          ),
        ),
      ),
    );
  }
}
