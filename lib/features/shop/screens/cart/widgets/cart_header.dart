import 'package:flutter/material.dart';
import 'package:new_crunchies_food/common/widgets/mytext.dart';
import 'package:new_crunchies_food/utils/constants/colors.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';
import 'package:new_crunchies_food/utils/constants/text_strings.dart';

class CartHeader extends StatelessWidget {
  const CartHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.only(
        left: MySizes.md + 3,
        right: MySizes.md + 3,
        top: MySizes.lg + 27,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          MyText(
            title: MyTexts.cartHeader,
            fontVariation: FontVariation.weight(800),
            fontSize: 18
          ),
          TextButton(
            onPressed: (){},
            child: MyText(
              title: MyTexts.cartHeaderLink,
              fontVariation: FontVariation.weight(600),
              fontSize: 14,
              textDecoration: TextDecoration.underline,
              color: MyColors.primary,
            ),
          ),
        ],
      ),
    );
  }
}
