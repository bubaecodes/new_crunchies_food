// import 'package:flutter/material.dart';
// import 'package:new_crunchies_food/common/widgets/mytext.dart';
// import 'package:new_crunchies_food/utils/constants/colors.dart';
// import 'package:new_crunchies_food/utils/constants/image_strings.dart';
// import 'package:new_crunchies_food/utils/constants/sizes.dart';
// import 'package:new_crunchies_food/utils/constants/text_strings.dart';
//
// class CartAddMore extends StatelessWidget {
//   const CartAddMore({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         MyText(
//           title: MyTexts.cartAddMore,
//           fontVariation: FontVariation.weight(900),
//           fontSize: 16,
//           color: MyColors.black,
//         ),
//         SizedBox(height: MySizes.md - 2),
//         MediaQuery.removePadding(
//           context: context,
//           removeTop: true,
//           child: ListView.builder(
//             itemCount: 8,
//             shrinkWrap: true,
//             physics: NeverScrollableScrollPhysics(),
//             itemBuilder: (context, index) {
//               return Padding(
//                 padding: const EdgeInsets.symmetric(vertical: MySizes.xs),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Row(
//                       children: [
//                         Container(
//                           width: 50,
//                           height: 50,
//                           decoration: BoxDecoration(
//                               shape: BoxShape.circle,
//                               image: DecorationImage(image: AssetImage(MyImages.productImage7))
//                           ),
//                         ),
//                         SizedBox(width: MySizes.sm + 7),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             MyText(title: 'White Yam', fontVariation: FontVariation.weight(800), fontSize: 18),
//                             Row(
//                               children: [
//                                 Image(image: AssetImage(MyImages.categoryImg2), width: 14, height: 14),
//                                 SizedBox(width: MySizes.xs),
//                                 MyText(
//                                   title: 'Food',
//                                   fontVariation: FontVariation.weight(700),
//                                   fontSize: 14,
//                                   color: MyColors.darkerGrey,
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                     TextButton(
//                       onPressed: (){},
//                       child: MyText(
//                         title: MyTexts.cartAddToCart,
//                         fontVariation: FontVariation.weight(600),
//                         fontSize: 14,
//                         textDecoration: TextDecoration.underline,
//                         color: MyColors.primary,
//                       ),
//                     )
//                   ],
//                 ),
//               );
//             }
//           ),
//         )
//         // ListTile(
//         //   leading: Container(
//         //     width: 50,
//         //     height: 50,
//         //     decoration: BoxDecoration(
//         //       shape: BoxShape.circle,
//         //       image: DecorationImage(image: AssetImage(MyImages.productImage7))
//         //     ),
//         //   ),
//         //   title: MyText(title: 'White Yam', fontVariation: FontVariation.weight(800), fontSize: 18),
//         //   subtitle: Row(
//         //     children: [
//         //       Image(image: AssetImage(MyImages.categoryImg2), width: 14, height: 14),
//         //       SizedBox(width: MySizes.xs),
//         //       MyText(
//         //         title: 'Food',
//         //         fontVariation: FontVariation.weight(700),
//         //         fontSize: 13,
//         //         color: MyColors.darkerGrey,
//         //       ),
//         //     ],
//         //   ),
//         //   trailing: TextButton(
//         //     onPressed: (){},
//         //     child: MyText(
//         //       title: MyTexts.cartAddToCart,
//         //       fontVariation: FontVariation.weight(600),
//         //       fontSize: 14,
//         //       textDecoration: TextDecoration.underline,
//         //       color: MyColors.primary,
//         //     ),
//         //   ),
//         // )
//       ],
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_crunchies_food/common/widgets/mytext.dart';
import 'package:new_crunchies_food/features/shop/controllers/cart_controllers/cart_controller.dart';
import 'package:new_crunchies_food/features/shop/screens/cart/widgets/checkout/checkout_screen.dart';
import 'package:new_crunchies_food/utils/constants/colors.dart';
import 'package:new_crunchies_food/utils/constants/image_strings.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';
import 'package:new_crunchies_food/utils/constants/text_strings.dart';
import 'package:new_crunchies_food/utils/dummy_data/dummy_data.dart';

class CartAddMore extends StatelessWidget {
  const CartAddMore({super.key});

  @override
  Widget build(BuildContext context) {
    /// Shuffle & take the first 8 meals
    final meals = List.from(MyDummyData.products)..shuffle();
    final randomMeals = meals.take(8).toList();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyText(
          title: MyTexts.cartAddMore,
          fontVariation: FontVariation.weight(900),
          fontSize: 16,
          color: MyColors.black,
        ),

        SizedBox(height: MySizes.md - 2),

        /// REMOVE PADDING HERE
        MediaQuery.removePadding(
          context: context,
          removeTop: true,
          child: ListView.builder(
            itemCount: randomMeals.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final meal = randomMeals[index];

              return Padding(
                padding: const EdgeInsets.symmetric(vertical: MySizes.xs),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    /// LEFT SIDE: Image + name/type
                    Row(
                      children: [
                        /// meal image
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: NetworkImage(meal.thumbnail),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),

                        SizedBox(width: MySizes.sm + 7),

                        /// Meal name + category
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            MyText(
                              title: meal.title,
                              fontVariation: FontVariation.weight(800),
                              fontSize: 16,
                              overflow: TextOverflow.ellipsis,
                            ),

                            Row(
                              children: [
                                /// category icon stays dummy - optional
                                Image(image: AssetImage(MyImages.categoryImg2), width: 14, height: 14),
                                // Image(
                                //   image: AssetImage("assets/icons/category.png"),
                                //   width: 14,
                                //   height: 14,
                                // ),
                                SizedBox(width: MySizes.xs),

                                MyText(
                                  title: meal.mealType,
                                  fontVariation: FontVariation.weight(700),
                                  fontSize: 14,
                                  color: MyColors.darkerGrey,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),

                    /// Right-side button
                    TextButton(
                      onPressed: () {
                        CartController.instance.addToCart(meal);
                        Get.to(() => CheckoutScreen());
                        print('workeddddd');
                      },
                      child: MyText(
                        title: MyTexts.cartAddToCart,
                        fontVariation: FontVariation.weight(600),
                        fontSize: 14,
                        textDecoration: TextDecoration.underline,
                        color: MyColors.primary,
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
