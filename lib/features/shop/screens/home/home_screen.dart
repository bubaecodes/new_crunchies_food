import 'package:flutter/material.dart';
import 'package:new_crunchies_food/common/styles/my_home_padding.dart';
import 'package:new_crunchies_food/common/widgets/mytext.dart';
import 'package:new_crunchies_food/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:new_crunchies_food/features/shop/screens/home/widgets/home_body/home_body_category.dart';
import 'package:new_crunchies_food/features/shop/screens/home/widgets/home_body/home_body_product.dart';
import 'package:new_crunchies_food/features/shop/screens/home/widgets/home_body/home_body_heading.dart';
import 'package:new_crunchies_food/features/shop/screens/home/widgets/home_pageview.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';
import 'package:new_crunchies_food/utils/constants/text_strings.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      //bottomNavigationBar: MyBottomNav(),
      body: MyHomePadding(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HomeAppbar(),
              SizedBox(height: MySizes.md),
              HomePageview(),
              SizedBox(height: MySizes.lg),
              HomeBodyHeading(),
              SizedBox(height: MySizes.lg),
              Row(
                children: [
                  MyText(
                    title: MyTexts.homeBodySubHeading,
                    fontVariation: FontVariation.weight(800),
                    fontSize: 17,
                    color: Colors.black,
                  ),
                ],
              ),
              SizedBox(height: MySizes.md),
              HomeBodyCategory(),
              SizedBox(height: MySizes.md),
              HomeBodyProduct(),
              SizedBox(height: MySizes.lg),
            ],
          ),
        )
      ),
    );
  }
}
