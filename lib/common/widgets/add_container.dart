import 'package:flutter/material.dart';
import 'package:new_crunchies_food/utils/constants/colors.dart';
import 'package:iconsax/iconsax.dart';

class AddContainer extends StatelessWidget {
  const AddContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 8,
      right: 7,
      child: Container(
        width: 42,
        height: 42,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: MyColors.primary
        ),
        child: Center(
          child: Icon(Iconsax.add, color: Colors.white, size: 34),
        ),
      ),
    );
  }
}