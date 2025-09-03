import 'package:flutter/material.dart';
import 'package:new_crunchies_food/common/styles/my_button.dart';
import 'package:new_crunchies_food/common/widgets/mytext.dart';
import 'package:new_crunchies_food/features/authentication/screens/reauthentication/reauthentication.dart';
import 'package:new_crunchies_food/utils/constants/colors.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';
import 'package:new_crunchies_food/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class SignupBtn extends StatelessWidget {
  const SignupBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MyButton(
          onpressed: () => Get.to(() => ReauthenticationScreen()),
          backgroundColor: WidgetStateProperty.all(MyColors.primary),
          borderSide: BorderSide(color: MyColors.secondary),
          child: MyText(
            title: MyTexts.signupBtn,
            fontVariation: FontVariation.weight(900),
            fontSize: 14,
            color: Colors.white,
          )
        ),
        SizedBox(height: MySizes.md),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: MySizes.md + 9),
          child: RichText(
              text: TextSpan(
                  text: MyTexts.signupTC1,
                  style: TextStyle(
                    fontVariations: [FontVariation.weight(800)],
                    color: Colors.grey[900],
                    fontSize: 10.4,
                    fontFamily: "Manrope",
                  ),
                  children: [
                    TextSpan(
                        text: MyTexts.signupTC2,
                        style: TextStyle(
                          fontVariations: [FontVariation.weight(900)],
                          color: Colors.black,
                          fontSize: 11.3,
                          fontFamily: "Manrope",
                        )
                    )
                  ]
              )
          ),
        ),
      ],
    );
  }
}
