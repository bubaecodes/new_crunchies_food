import 'package:flutter/material.dart';
import 'package:new_crunchies_food/features/shop/screens/cart/widgets/cart_body.dart';
import 'package:new_crunchies_food/features/shop/screens/cart/widgets/cart_btn.dart';
import 'package:new_crunchies_food/features/shop/screens/cart/widgets/cart_header.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      //bottomNavigationBar: MyBottomNav(),
      body: Column(
        children: [
          /// header
          CartHeader(),

          /// scrollable part of column
          Expanded(child: CartBody()),

          /// static btn
          CartBtn(),
        ],
      ),
    );
  }
}
