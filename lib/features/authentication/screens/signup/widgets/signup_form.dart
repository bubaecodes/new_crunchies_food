import 'package:flutter/material.dart';
import 'package:new_crunchies_food/utils/constants/colors.dart';
import 'package:new_crunchies_food/utils/constants/image_strings.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';
import 'package:new_crunchies_food/utils/constants/text_strings.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              MyTexts.signupFullName,
              style: TextStyle(
                fontFamily: 'Manrope',
                fontSize: 14,
                color: MyColors.darkerGrey,
                fontVariations: [FontVariation.weight(600)]
              )
            ),
          ],
        ),
        TextField(
          decoration: InputDecoration(
            hintText: 'Enter your full name',
            hintStyle: TextStyle(
                fontFamily: 'Manrope',
                fontSize: 14,
                color: MyColors.darkerGrey,
                fontVariations: [FontVariation.weight(500)]
            ),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                borderSide: BorderSide(
                    color: MyColors.darkerGrey
                )
            ),
          ),
        ),
        SizedBox(height: MySizes.md),
        Row(
          children: [
            Text(
                MyTexts.signupPhoneNo,
                style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 14,
                    color: MyColors.darkerGrey,
                    fontVariations: [FontVariation.weight(600)]
                )
            ),
          ],
        ),
        Row(
          children: [
            Container(
              width: 94,
              height: 54,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                border: Border.all(
                  color: MyColors.darkerGrey,
                  width: 1.0,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(MySizes.sm),
                child: Row(
                  children: [
                    Text(
                      '+234',
                      style: TextStyle(
                          fontFamily: 'Manrope',
                          fontSize: 14,
                          color: MyColors.darkerGrey,
                          fontVariations: [FontVariation.weight(900)]
                      ),
                    ),
                    SizedBox(width: MySizes.xs),
                    Image.asset(MyImages.nigeriaFlag)
                  ],
                ),
              ),
            ),
            SizedBox(width: MySizes.sm),
            Expanded(
              flex: 2,
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Your phone number',
                    hintStyle: TextStyle(
                        fontFamily: 'Manrope',
                        fontSize: 14,
                        color: MyColors.darkerGrey,
                        fontVariations: [FontVariation.weight(500)]
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(
                            color: MyColors.darkerGrey
                        )
                    )
                ),
                style: TextStyle(

                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
