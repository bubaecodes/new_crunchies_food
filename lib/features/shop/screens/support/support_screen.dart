import 'package:flutter/material.dart';
import 'package:new_crunchies_food/common/styles/my_home_padding.dart';
import 'package:new_crunchies_food/common/widgets/mytext.dart';
import 'package:new_crunchies_food/features/shop/screens/support/widgets/support_body.dart';
import 'package:new_crunchies_food/features/shop/screens/support/widgets/support_btn.dart';
import 'package:new_crunchies_food/features/shop/screens/support/widgets/support_thumbnail.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';
import 'package:new_crunchies_food/utils/constants/text_strings.dart';

class SupportScreen extends StatelessWidget {
  const SupportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: MyHomePadding(
          child: Column(
            children: [
              SizedBox(height: MySizes.md),
              Row(
                children: [
                  MyText(
                    title: MyTexts.supportHeading,
                    fontVariation: FontVariation.weight(800),
                    fontSize: 20
                  ),
                ],
              ),
              SizedBox(height: MySizes.sm),
              MyText(
                  title: MyTexts.supportSubHeading,
                  fontVariation: FontVariation.weight(700),
                  fontSize: 15
              ),
              SizedBox(height: MySizes.xl * 1.5),
              SupportThumbnail(),
              SizedBox(height: MySizes.xl * 2.2),
              SupportBody(),
              SizedBox(height: MySizes.xl),
              SupportBtn()
            ],
          ),
        ),
      ),
    );
  }
}
