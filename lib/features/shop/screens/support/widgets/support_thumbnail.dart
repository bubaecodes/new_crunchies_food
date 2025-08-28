import 'package:flutter/material.dart';
import 'package:new_crunchies_food/utils/constants/colors.dart';
import 'package:new_crunchies_food/utils/constants/image_strings.dart';

class SupportThumbnail extends StatelessWidget {
  const SupportThumbnail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 130,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        //color: Colors.red,
        border: Border.all(
          color: MyColors.primary,
          width: 2.7,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(11.0),
        child: Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            color: MyColors.pinkBg,
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(MyImages.chatIcon),
              fit: BoxFit.none,
              scale: 11.0,
              alignment: Alignment.center
            )
          ),
        ),
      ),
    );
  }
}
