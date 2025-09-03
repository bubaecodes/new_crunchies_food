import 'package:flutter/material.dart';
import 'package:new_crunchies_food/utils/constants/colors.dart';
import 'package:new_crunchies_food/utils/constants/text_strings.dart';

class MyTextbtn extends StatelessWidget {
  const MyTextbtn({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      //padding: const EdgeInsets.symmetric(horizontal: MySizes.xl * 3.8),
      padding: EdgeInsetsGeometry.symmetric(horizontal: screenWidth * 0.27),
      child: TextButton(
        onPressed: () {},
        child: Text(
          MyTexts.locationSupportLink,
          style: TextStyle(
            decoration: TextDecoration.underline,
            decorationColor: Colors.red,
            fontSize: 13,
            color: MyColors.secondary,
            fontVariations: [FontVariation.weight(800)],
            fontFamily: 'Manrope'
          ),
        ),
      ),
    );
  }
}
