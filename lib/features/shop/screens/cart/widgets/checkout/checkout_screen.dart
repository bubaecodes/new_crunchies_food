import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_crunchies_food/features/shop/screens/cart/cart_screen.dart';
import 'package:new_crunchies_food/features/shop/screens/cart/widgets/checkout/widgets/checkout_body.dart';
import 'package:new_crunchies_food/features/shop/screens/cart/widgets/checkout/widgets/checkout_btn.dart';
import 'package:new_crunchies_food/features/shop/screens/cart/widgets/checkout/widgets/checkout_header.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ///appbar icon
          Padding(
            padding: EdgeInsetsGeometry.only(
              top: MySizes.lg + 27,
            ),
            child: IconButton(onPressed: () => Get.to(()=> CartScreen()), icon: Icon(Icons.chevron_left, size: 35)),
          ),
          /// header
          CheckoutHeader(),

          /// body
          CheckoutBody(),

          /// footer btn
          CheckoutBtn()

        ],
      ),
    );
  }
}
