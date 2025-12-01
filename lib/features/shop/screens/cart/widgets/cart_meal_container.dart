// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:new_crunchies_food/common/widgets/mytext.dart';
// import 'package:new_crunchies_food/features/shop/screens/navigators/selected_meal/selected_meal.dart';
// import 'package:new_crunchies_food/utils/constants/colors.dart';
// import 'package:new_crunchies_food/utils/constants/image_strings.dart';
// import 'package:new_crunchies_food/utils/constants/sizes.dart';
// import 'package:iconsax/iconsax.dart';
// import 'package:new_crunchies_food/utils/dummy_data/dummy_data.dart';
//
// class CartMealContainer extends StatelessWidget {
//   const CartMealContainer({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final meals = MyDummyData.products;
//     final screenWidth = MediaQuery.of(context).size.width;
//     return MediaQuery.removePadding(
//       context: context,
//       removeTop: true,
//       child: ListView.builder(
//         itemCount: meals.length,
//         shrinkWrap: true,
//         itemBuilder: (context, index) {
//           final meal = meals[index];
//           return Padding(
//             padding: EdgeInsetsGeometry.symmetric(vertical: MySizes.sm - 3),
//             child: Container(
//               width: screenWidth,
//               height: MySizes.xl * 2.7,
//               decoration: BoxDecoration(
//                 border: BoxBorder.fromBorderSide(BorderSide(color: MyColors.darkGrey, width: 1.5)),
//                 borderRadius: BorderRadius.all(Radius.circular(16)),
//                 color: Colors.white
//               ),
//               child: GestureDetector(
//                 onTap: () => Get.to(SelectedMealScreen(meal: meal)),
//                 child: Row(
//                   children: [
//                     /// image
//                     Container(
//                       width: MySizes.xl * 3.9,
//                       height: MySizes.xl * 2.63,
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.only(
//                           topLeft: Radius.circular(13),
//                           bottomLeft: Radius.circular(13),
//                         ),
//                         image: DecorationImage(image: AssetImage(MyImages.productImage30), fit: BoxFit.cover),
//                       ),
//                     ),
//
//                     /// first column
//                     Expanded(
//                       child: Padding(
//                         padding: const EdgeInsets.symmetric(vertical: MySizes.xs, horizontal: MySizes.sm + 2),
//                         child: Column(
//                           //mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             ///first row
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 Expanded(
//                                   child: Text(
//                                     'Donut/Snack/Pastry',
//                                     overflow: TextOverflow.ellipsis,
//                                     style: TextStyle(
//                                       fontFamily: 'Manrope',
//                                       fontVariations: [FontVariation.weight(800)],
//                                       fontSize: 16.2
//                                     ),
//                                   ),
//                                 ),
//                                 SizedBox(width: MySizes.sm),
//                                 GestureDetector(
//                                   onTap: (){}, child: Icon(Iconsax.trash, size: 19)
//                                 ),
//                               ],
//                             ),
//                             ///second row
//                             Row(
//                               children: [
//                                 Image(image: AssetImage(MyImages.categoryImg4), width: 14, height: 14),
//                                 SizedBox(width: MySizes.xs),
//                                 MyText(
//                                   title: 'Pastry',
//                                   fontVariation: FontVariation.weight(700),
//                                   fontSize: 13,
//                                   color: MyColors.darkerGrey,
//                                 ),
//                               ],
//                             ),
//                             /// third row
//                             Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 MyText(
//                                   title: '#1,000',
//                                   fontVariation: FontVariation.weight(800),
//                                   fontSize: 16.2,
//                                 ),
//                                 Row(
//                                   children: [
//                                     InkWell(
//                                       onTap: (){},
//                                       child: Container(
//                                         width: 24,
//                                         height: 24,
//                                         decoration: BoxDecoration(
//                                             shape: BoxShape.circle,
//                                             color: Colors.grey[400]
//                                         ),
//                                         child: Icon(Iconsax.minus),
//                                       ),
//                                     ),
//                                     SizedBox(width: MySizes.sm),
//                                     MyText(title: '0', fontVariation: FontVariation.weight(700), fontSize: 16),
//                                     SizedBox(width: MySizes.sm),
//                                     InkWell(
//                                       onTap: (){},
//                                       child: Container(
//                                         width: 24,
//                                         height: 24,
//                                         decoration: BoxDecoration(
//                                             shape: BoxShape.circle,
//                                             color: MyColors.primary
//                                         ),
//                                         child: Icon(Iconsax.add, color: Colors.white),
//                                       ),
//                                     ),
//                                   ],
//                                 )
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           );
//         }
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_crunchies_food/common/widgets/mytext.dart';
import 'package:new_crunchies_food/features/shop/controllers/cart_controllers/cart_controller.dart';
import 'package:new_crunchies_food/features/shop/screens/navigators/selected_meal/selected_meal.dart';
import 'package:new_crunchies_food/utils/constants/colors.dart';
import 'package:new_crunchies_food/utils/constants/image_strings.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';

class CartMealContainer extends StatelessWidget {
  const CartMealContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final cartController = Get.put(CartController());
    final screenWidth = MediaQuery.of(context).size.width;

    return MediaQuery.removePadding(
      context: context,
      removeTop: true,
      child: Obx(() {
        if (cartController.cartItems.isEmpty) {
          return Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Center(
              child: MyText(
                title: "No items added.",
                fontVariation: FontVariation.weight(700),
                fontSize: 18,
                color: MyColors.darkerGrey,
              ),
            ),
          );
        }

        return ListView.builder(
          itemCount: cartController.cartItems.length,
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            final meal = cartController.cartItems[index];

            return Padding(
              padding:
              EdgeInsets.symmetric(vertical: MySizes.sm - 3),
              child: Container(
                width: screenWidth,
                height: MySizes.xl * 2.7,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: MyColors.darkGrey, width: 1.5),
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.white,
                ),
                child: GestureDetector(
                  onTap: () => Get.to(() => SelectedMealScreen(meal: meal)),
                  child: Row(
                    children: [
                      /// IMAGE
                      Container(
                        width: MySizes.xl * 3.9,
                        height: MySizes.xl * 2.63,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(13),
                            bottomLeft: Radius.circular(13),
                          ),
                          image: DecorationImage(
                            image: NetworkImage(meal.thumbnail),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      /// TEXT + PRICE + COUNTER
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: MySizes.xs,
                            horizontal: MySizes.sm + 2,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              /// FIRST ROW — TITLE + TRASH
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: Text(
                                      meal.title,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        fontFamily: 'Manrope',
                                        fontVariations: [
                                          FontVariation.weight(800)
                                        ],
                                        fontSize: 16.2,
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () => cartController.removeFromCart(meal),
                                    child: Icon(Iconsax.trash, size: 19),
                                  ),
                                ],
                              ),

                              /// SECOND ROW — MEAL TYPE
                              Row(
                                children: [
                                  Image(
                                    image:
                                    AssetImage(MyImages.categoryImg4),
                                    width: 14,
                                    height: 14,
                                  ),
                                  SizedBox(width: MySizes.xs),
                                  MyText(
                                    title: meal.mealType,
                                    fontVariation:
                                    FontVariation.weight(700),
                                    fontSize: 13,
                                    color: MyColors.darkerGrey,
                                  ),
                                ],
                              ),

                              SizedBox(height: MySizes.xs),

                              /// THIRD ROW — PRICE + QUANTITY CONTROLLER
                              Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  /// PRICE
                                  // MyText(
                                  //   title: "₦${meal.price}",
                                  //   fontVariation:
                                  //   FontVariation.weight(800),
                                  //   fontSize: 16.2,
                                  // ),
                                  MyText(
                                    title: "#${meal.price * cartController.getQuantity(meal)}",
                                    fontVariation: FontVariation.weight(800),
                                    fontSize: 16.2,
                                  ),


                                  /// QUANTITY BUTTONS
                                  Row(
                                    children: [
                                      /// MINUS BUTTON
                                      InkWell(
                                        onTap: () =>
                                            cartController.decreaseQuantity(meal),
                                        child: Container(
                                          width: 24,
                                          height: 24,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.grey[400],
                                          ),
                                          child: Icon(Iconsax.minus),
                                        ),
                                      ),

                                      SizedBox(width: MySizes.sm),

                                      /// QUANTITY
                                      // MyText(
                                      //   title: meal.quantity.toString(),
                                      //   fontVariation:
                                      //   FontVariation.weight(700),
                                      //   fontSize: 16,
                                      // ),
                                      MyText(
                                        title: cartController.getQuantity(meal).toString(),
                                        fontVariation: FontVariation.weight(700),
                                        fontSize: 16,
                                      ),


                                      SizedBox(width: MySizes.sm),

                                      /// PLUS BUTTON
                                      InkWell(
                                        onTap: () =>
                                            cartController.increaseQuantity(meal),
                                        child: Container(
                                          width: 24,
                                          height: 24,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: MyColors.primary,
                                          ),
                                          child: Icon(Iconsax.add,
                                              color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        );
      }),
    );
  }
}
