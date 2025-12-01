import 'package:flutter/material.dart';
import 'package:new_crunchies_food/common/styles/my_home_padding.dart';
import 'package:new_crunchies_food/features/shop/screens/loyalty/widgets/loyalty_body.dart';
import 'package:new_crunchies_food/features/shop/screens/loyalty/widgets/loyalty_thumbnail.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';

class LoyaltyScreen extends StatelessWidget {
  const LoyaltyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: MyHomePadding(
          child: Column(
            children: [
              LoyaltyThumbnail(),
              SizedBox(height: MySizes.md * 2),
              LoyaltyBody()
            ],
          )
        ),
      ),
    );
  }
}

