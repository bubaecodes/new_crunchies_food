import 'package:flutter/material.dart';
import 'package:new_crunchies_food/features/authentication/controllers/signup/signup_controller.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';
import 'package:new_crunchies_food/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class SignupBtn extends StatelessWidget {
  const SignupBtn({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Column(
      children: [
        Center(
          child: Padding(
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
                    ),
                  )
                ]
              )
            ),
          ),
        ),
      ],
    );
  }
}
