import 'package:flutter/material.dart';
import 'package:new_crunchies_food/common/widgets/mytext.dart';
import 'package:new_crunchies_food/utils/constants/colors.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';
import 'package:new_crunchies_food/utils/constants/text_strings.dart';

class ReauthenticationHeading extends StatelessWidget {
  const ReauthenticationHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                  text: MyTexts.signupHeading,
                  style: TextStyle(
                    fontVariations: [FontVariation.weight(800)],
                    color: Colors.black,
                    fontSize: 22,
                    fontFamily: "Manrope",
                  ),
                  children: [
                    TextSpan(
                      text: 'CRUNCHIES.',
                      style: TextStyle(
                        fontVariations: [FontVariation.weight(800)],
                        color: MyColors.primary,
                        fontSize: 22,
                        fontFamily: "Manrope",
                      ),
                    ),
                  ]
              ),
            ),
          ],
        ),
        SizedBox(height: MySizes.sm),
        Row(
          children: [
            MyText(
              title: MyTexts.reAuthenticationSubheading,
              fontVariation: FontVariation.weight(600),
              fontSize: 14,
            )
          ],
        ),
      ],
    );
  }
}
