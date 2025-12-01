import 'package:flutter/material.dart';
import 'package:new_crunchies_food/common/widgets/mytext.dart';
import 'package:new_crunchies_food/features/shop/controllers/home_controller/home_dummy/category_dummy_controller.dart';
import 'package:new_crunchies_food/features/shop/screens/cart/widgets/cart_switch.dart';
import 'package:new_crunchies_food/features/shop/screens/navigators/selected_meal/selected_meal.dart';
import 'package:new_crunchies_food/utils/constants/colors.dart';
import 'package:new_crunchies_food/utils/constants/image_strings.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';
import 'package:get/get.dart';

class HomeBodyProduct extends StatelessWidget {
  const HomeBodyProduct({super.key});

  @override
  Widget build(BuildContext context) {
    final categoryDummyController = Get.put(CategoryDummyController());
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: Obx(() {
        final meals = categoryDummyController.filteredMeals;
        return GridView.builder(
          shrinkWrap: true,
          itemCount: meals.length,
          scrollDirection: Axis.vertical,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisExtent: 260,
              mainAxisSpacing: MySizes.md,
              crossAxisSpacing: MySizes.md
          ),
          itemBuilder: (context, index) {
            final meal = meals[index];
            return GestureDetector(
              onTap: () => Get.to(SelectedMealScreen(meal: meal)),
              child: Container(
                width: screenWidth / 2.29,
                height: screenHeight / 3.3,
                decoration: BoxDecoration(
                    border: BoxBorder.fromBorderSide(BorderSide(color: MyColors.darkGrey, width: 2)),
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                    color: Colors.white
                ),
                child: Column(
                  children: [
                    ///img container
                    Container(
                      width: screenWidth / 2.29,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(14),
                            topLeft: Radius.circular(14)
                        ),
                        image: DecorationImage(
                            image: NetworkImage(meal.thumbnail),
                            //image: AssetImage(meal.thumbnail),
                            fit: BoxFit.cover
                        ),
                      ),
                    ),
                    SizedBox(height: MySizes.sm),
                    ///body text
                    Padding(
                      padding: const EdgeInsets.only(left: 4.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              //Image.asset(meal.thumbnail, height: 20, width: 20,),
                              Image.asset(MyImages.plateIcon, height: 20, width: 20,),
                              SizedBox(width: MySizes.sm),
                              MyText(title: meal.mealType, fontVariation: FontVariation.weight(500), fontSize: 13)
                            ],
                          ),
                          SizedBox(height: MySizes.xs),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  meal.title,
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey[900],
                                    fontFamily: 'Manrope',
                                    fontVariations: [FontVariation('wght', 600)]
                                  ),
                                  softWrap: true,
                                  maxLines: 2,
                                  overflow: TextOverflow.visible,
                                ),
                                // child: MyText(
                                //   title: meal.title,
                                //   fontVariation: FontVariation.weight(600),
                                //   fontSize: 15,
                                //   color: Colors.grey[900],
                                // ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              MyText(title: '#${meal.price}', fontVariation: FontVariation.weight(700), fontSize: 16)
                            ],
                          )
                        ],
                      ),
                    ),
                    //SizedBox(height: MySizes.lg + 7),
                    SizedBox(height: MySizes.sm + 12),
                    /// btn
                    // ElevatedButton(
                    //     onPressed: (){},
                    //     style: ElevatedButton.styleFrom(
                    //       fixedSize: Size(screenWidth / 2.47, 11),
                    //       backgroundColor: MyColors.primary,
                    //       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    //     ),
                    //     child: Row(
                    //       children: [
                    //         Icon(Icons.shopping_cart_outlined, color: Colors.white, size: 22),
                    //         SizedBox(width: MySizes.sm),
                    //         MyText(
                    //           title: 'Add to cart',
                    //           fontVariation: FontVariation.weight(700),
                    //           fontSize: 15,
                    //           color: Colors.white,
                    //         )
                    //       ],
                    //     )
                    // ),
                    //CartSwitch(width: 40, height: 11, meal: meal),
                    Expanded(child: CartSwitch(width: screenWidth / 2.7, meal: meal)),
                  ],
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
