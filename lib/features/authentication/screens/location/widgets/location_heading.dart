import 'package:flutter/material.dart';
import 'package:new_crunchies_food/common/widgets/mytext.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';
import 'package:new_crunchies_food/utils/constants/text_strings.dart';

class LocationHeading extends StatelessWidget {
  const LocationHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            MyText(
              title: MyTexts.locationHeading,
              fontVariation: FontVariation.weight(800),
              fontSize: 22
            ),
          ],
        ),
        SizedBox(height: MySizes.sm),
        Row(
          children: [
            Text(
              MyTexts.locationSubheading,
              style: TextStyle(
                  fontSize: 14,
                  fontFamily: "Manrope",
                  fontVariations: [
                    FontVariation.weight(600)
                  ]
              ),
            ),
          ],
        ),
      ],
    );
  }
}
