import 'package:flutter/material.dart';
import 'package:new_crunchies_food/utils/constants/colors.dart';
import 'package:new_crunchies_food/utils/constants/image_strings.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';

class LoyaltyThumbnail extends StatelessWidget {
  const LoyaltyThumbnail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only( top: MySizes.lg * 3.5),
      child: Center(
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: MyColors.primary, width: 7),
              shape: BoxShape.circle
          ),
          child: Container(
            width: 250,
            height: 250,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
                border: Border.all(width: 10, color: Colors.white),
                image: DecorationImage(
                    image: AssetImage(MyImages.loyaltyImage),
                    fit: BoxFit.cover,
                    //scale: 18.0,
                    alignment: Alignment.center
                )
            ),
          ),
        ),
      ),
    );
  }
}