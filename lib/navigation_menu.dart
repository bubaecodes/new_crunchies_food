import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:new_crunchies_food/features/shop/screens/cart/cart_screen.dart';
import 'package:new_crunchies_food/features/shop/screens/home/home_screen.dart';
import 'package:new_crunchies_food/features/shop/screens/loyalty/loyalty_screen.dart';
import 'package:new_crunchies_food/features/shop/screens/offers/offers_screen.dart';
import 'package:new_crunchies_food/features/shop/screens/support/support_screen.dart';
import 'package:new_crunchies_food/utils/constants/colors.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';

class MyBottomNav extends StatelessWidget {
  const MyBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    final NavigationController controller = Get.put(NavigationController());

    return Scaffold(
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
      bottomNavigationBar: SizedBox(
        height: 95,
        child: BottomAppBar(
          elevation: 8,
          color: MyColors.lightContainer,
          child: Obx(
                () => Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                /// First item
                GestureDetector(
                  onTap: () => controller.selectedIndex.value = 0,
                  child: Column(
                    //mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Iconsax.home,
                        color: controller.selectedIndex.value == 0
                            ? MyColors.secondary
                            : MyColors.darkerGrey,
                      ),
                      const SizedBox(height: MySizes.xs),
                      Text(
                        'Home',
                        style: TextStyle(
                          color: controller.selectedIndex.value == 0
                              ? MyColors.secondary
                              : MyColors.darkerGrey,
                          fontSize: controller.selectedIndex.value == 0 ? 13 : 12,
                          fontFamily: 'Manrope',
                          fontVariations: [FontVariation.weight(700)]
                        ),
                      ),
                    ],
                  ),
                ),
                /// Second item
                GestureDetector(
                  onTap: () => controller.selectedIndex.value = 1,
                  child: Column(
                    //mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Iconsax.discount_circle,
                        color: controller.selectedIndex.value == 1
                            ? MyColors.secondary
                            : MyColors.darkerGrey,
                      ),
                      const SizedBox(height: MySizes.xs),
                      Text(
                        'Offers',
                        style: TextStyle(
                          color: controller.selectedIndex.value == 1
                              ? MyColors.secondary
                              : MyColors.darkerGrey,
                          fontSize: controller.selectedIndex.value == 0 ? 13 : 12,
                          fontFamily: 'Manrope',
                          fontVariations: [FontVariation.weight(700)]
                        ),
                      ),
                    ],
                  ),
                ),

                /// FloatingActionButton (Cart item)
                InkWell(
                  onTap: () => controller.selectedIndex.value = 2,
                  customBorder: const CircleBorder(),
                  child: Stack(
                    children: [
                      IconButton(
                          onPressed: () => Get.to(() => CartScreen()),
                          icon: Icon(Iconsax.shopping_cart, size: 29, color: MyColors.darkerGrey)
                      ),
                      Positioned(
                        right: 0,
                        child: Container(
                          width: 18,
                          height: 18,
                          decoration: BoxDecoration(
                            color: MyColors.primary,
                            borderRadius: BorderRadius.circular(100),
                          ),
                          child: Center(
                            child: Text(
                              '1',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge!
                                  .apply(color: MyColors.white, fontSizeFactor: 0.8),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                /// Fourth item
                GestureDetector(
                  onTap: () => controller.selectedIndex.value = 3,
                  child: Column(
                    //mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Iconsax.discount_shape,
                        color: controller.selectedIndex.value == 3
                            ? MyColors.secondary
                            : MyColors.darkerGrey,
                      ),
                      const SizedBox(height: MySizes.xs),
                      Text(
                        'Loyalty',
                        style: TextStyle(
                          color: controller.selectedIndex.value == 3
                              ? MyColors.secondary
                              : MyColors.darkerGrey,
                            fontSize: controller.selectedIndex.value == 0 ? 13 : 12,
                            fontFamily: 'Manrope',
                            fontVariations: [FontVariation.weight(700)]
                        ),
                      ),
                    ],
                  ),
                ),
                /// Fifth item
                GestureDetector(
                  onTap: () => controller.selectedIndex.value = 4,
                  child: Column(
                    //mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Iconsax.message,
                        color: controller.selectedIndex.value == 4
                            ? MyColors.secondary
                            : MyColors.darkerGrey,
                      ),
                      const SizedBox(height: MySizes.xs),
                      Text(
                        'Support',
                        style: TextStyle(
                          color: controller.selectedIndex.value == 4
                              ? MyColors.secondary
                              : MyColors.darkerGrey,
                            fontSize: controller.selectedIndex.value == 0 ? 13 : 12,
                            fontFamily: 'Manrope',
                            fontVariations: [FontVariation.weight(700)]
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NavigationController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  final screens = [
    const HomeScreen(),
    const OffersScreen(),
    const CartScreen(),
    const LoyaltyScreen(),
    const SupportScreen(),
  ];
}