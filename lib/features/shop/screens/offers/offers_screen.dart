import 'package:flutter/material.dart';
import 'package:new_crunchies_food/common/styles/my_home_padding.dart';
import 'package:new_crunchies_food/features/shop/screens/home/widgets/home_body/home_body_product.dart';
import 'package:new_crunchies_food/features/shop/screens/offers/widgets/offers_body.dart';
import 'package:new_crunchies_food/features/shop/screens/offers/widgets/offers_header.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';

class OffersScreen extends StatelessWidget {
  const OffersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: MyHomePadding(
        child: SingleChildScrollView(
          child: Column(
            children: [
              OffersHeader(),
              SizedBox(height: MySizes.md + 5),
              OffersBody(),
              HomeBodyProduct()
            ],
          ),
        ),
      ),
    );
  }
}


