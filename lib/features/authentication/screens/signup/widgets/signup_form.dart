import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_crunchies_food/common/styles/my_button.dart';
import 'package:new_crunchies_food/common/widgets/mytext.dart';
import 'package:new_crunchies_food/features/authentication/controllers/signup/signup_controller.dart';
import 'package:new_crunchies_food/utils/constants/colors.dart';
import 'package:new_crunchies_food/utils/constants/image_strings.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';
import 'package:new_crunchies_food/utils/constants/text_strings.dart';
import 'package:new_crunchies_food/utils/validators/validation.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
      key: controller.signupFormKey,
      child: Column(
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
          /// username form
          TextFormField(
            controller: controller.username,
            validator: (value) => MyValidator.validateEmptyText('Username', value),
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
                /// phone number form
                child: TextFormField(
                  controller: controller.phoneNumber,
                  validator: (value) => MyValidator.validatePhoneNumber(value),
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
                      ),
                    )
                  ),
                  style: TextStyle(

                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: MySizes.lg * 5.5),

          /// continue btn
          MyButton(
            onpressed: () => controller.signup(),
            //onpressed: () => Get.to(() => ReauthenticationScreen()),
            backgroundColor: WidgetStateProperty.all(MyColors.primary),
            borderSide: BorderSide(color: MyColors.secondary),
              child: MyText(
                title: MyTexts.signupBtn,
                fontVariation: FontVariation.weight(900),
                fontSize: 14,
                color: Colors.white,
              ),
            ),
        ],
      ),
    );
  }
}
