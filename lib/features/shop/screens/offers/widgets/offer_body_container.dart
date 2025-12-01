import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_crunchies_food/common/widgets/add_container.dart';
import 'package:new_crunchies_food/common/widgets/discount_tag.dart';
import 'package:new_crunchies_food/features/shop/models/meal_product_model.dart';
import 'package:new_crunchies_food/features/shop/screens/navigators/selected_meal/selected_meal.dart';

class OfferBodyContainer extends StatelessWidget {
  const OfferBodyContainer({super.key, required this.image, required this.meal});
  final String image;
  final MealProductModel meal;

  @override
  Widget build(BuildContext context) {
    //final meals = MyDummyData.product;
    final screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 160,
      width: screenWidth,
      child: Stack(
        children: [
          GestureDetector(
            onTap: () => Get.to(()=> SelectedMealScreen(meal: meal)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image(
                //image: AssetImage(MyImages.productImage18),
                //image: AssetImage(meal.thumbnail),
                image: NetworkImage(image),
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


