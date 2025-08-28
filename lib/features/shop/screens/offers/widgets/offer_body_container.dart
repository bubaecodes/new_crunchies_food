import 'package:flutter/material.dart';
import 'package:new_crunchies_food/common/widgets/add_container.dart';
import 'package:new_crunchies_food/common/widgets/discount_tag.dart';

class OfferBodyContainer extends StatelessWidget {
  const OfferBodyContainer({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 160,
      width: screenWidth,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image(
              //image: AssetImage(MyImages.productImage18),
              image: AssetImage(image),
              width: screenWidth,
              fit: BoxFit.cover
            )
          ),
          DiscountTag(),
          AddContainer()
        ],
      ),
    );
  }
}


