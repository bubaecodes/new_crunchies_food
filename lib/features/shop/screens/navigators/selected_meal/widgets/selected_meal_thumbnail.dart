import 'package:flutter/material.dart';
import 'package:new_crunchies_food/common/widgets/mytext.dart';
import 'package:new_crunchies_food/utils/constants/colors.dart';
import 'package:new_crunchies_food/utils/constants/image_strings.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';

class SelectedMealThumbnail extends StatelessWidget {
  const SelectedMealThumbnail({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: screenWidth,
          height: screenHeight / 6.5,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              image: DecorationImage(image: AssetImage(MyImages.productImage30), fit: BoxFit.cover)
          ),
        ),
        SizedBox(height: MySizes.md),
        MyText(
          title: 'Jumbo Roll',
          fontVariation: FontVariation.weight(700),
          fontSize: 14,
          color: MyColors.darkerGrey,
        ),
        SizedBox(height: MySizes.sm),
        MyText(
          title: '#1,000',
          fontVariation: FontVariation.weight(800),
          fontSize: 16,
          color: Colors.black,
        ),
        SizedBox(height: MySizes.md),
        MyText(
          title: 'Jumbo Roll',
          fontVariation: FontVariation.weight(700),
          fontSize: 13,
          color: MyColors.darkerGrey,
        ),
        SizedBox(height: MySizes.md),
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: MySizes.sm),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyText(
                title: '#1,000',
                fontVariation: FontVariation.weight(800),
                fontSize: 18,
                color: Colors.black,
              ),
              ElevatedButton(
                onPressed: (){},
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(screenWidth / 2.75, 8),
                  backgroundColor: MyColors.primary,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                ),
                child: Row(
                  children: [
                    Icon(Icons.shopping_cart_outlined, color: Colors.white, size: 20),
                    SizedBox(width: MySizes.xs),
                    MyText(
                      title: 'Add to cart',
                      fontVariation: FontVariation.weight(700),
                      fontSize: 14.4,
                      color: Colors.white,
                    )
                  ],
                )
              )
            ],
          ),
        ),
        Divider(),
      ],
    );
  }
}
