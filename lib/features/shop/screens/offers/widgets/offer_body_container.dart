import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_crunchies_food/common/widgets/add_container.dart';
import 'package:new_crunchies_food/common/widgets/discount_tag.dart';
import 'package:new_crunchies_food/features/shop/screens/navigators/selected_meal/selected_meal.dart';

class OfferBodyContainer extends StatelessWidget {
  const OfferBodyContainer({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 160,
      width: screenWidth,
      child: Stack(
        children: [
          GestureDetector(
            onTap: () => Get.to(()=> SelectedMealScreen()),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image(
                //image: AssetImage(MyImages.productImage18),
                image: AssetImage(image),
                width: screenWidth,
                fit: BoxFit.cover
              )
            ),
          ),
          DiscountTag(),
          AddContainer()
        ],
      ),
    );
  }
}


