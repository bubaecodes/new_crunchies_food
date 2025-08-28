import 'package:flutter/material.dart';
import 'package:new_crunchies_food/common/widgets/mytext.dart';
import 'package:new_crunchies_food/features/shop/controllers/checkout_controllers/checkbox_controller.dart';
import 'package:new_crunchies_food/features/shop/screens/cart/widgets/cart_meal_container.dart';
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
              // Obx(() => GestureDetector(
              //   onTap: controller.toggleCheckbox,
              //   child: Container(
              //     width: 24,
              //     height: 24,
              //     decoration: BoxDecoration(
              //       border: Border.all(color: Colors.grey),
              //       borderRadius: BorderRadius.circular(4),
              //       color: controller.isChecked.value ? Colors.pink : Colors.transparent,
              //     ),
              //     child: controller.isChecked.value
              //         ? Center(child: Icon(Icons.remove, size: 18, color: Colors.white))
              //         : null,
              //   ),
              // )),
              Obx(
                () => Checkbox(
                value: controller.isChecked.value,
                onChanged: controller.toggleCheckbox
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
