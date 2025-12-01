import 'package:flutter/material.dart';
import 'package:new_crunchies_food/common/widgets/mytext.dart';
import 'package:new_crunchies_food/features/authentication/controllers/signup/signup_controller.dart';
import 'package:new_crunchies_food/utils/constants/text_strings.dart';

class ReauthenticationConfirmNo extends StatelessWidget {
  const ReauthenticationConfirmNo({super.key});

  String maskPhoneNumber(String number) {
    if (number.length < 7) return number;
    return number.replaceRange(2, number.length - 2, '******');
  }

  @override
  Widget build(BuildContext context) {
    final originalPhone = SignupController.instance.enteredPhoneNumber.value;
    final maskedPhoneNo = maskPhoneNumber(originalPhone);
    return Center(
      child: Column(
        children: [
          MyText(
            title: MyTexts.reAuthenticationTitle,
            fontVariation: FontVariation.weight(600),
            fontSize: 14,
          ),
          MyText(
            title: '0$maskedPhoneNo',
            //title: '090****5678',
            fontVariation: FontVariation.weight(800),
            fontSize: 16,
          ),
        ],
      ),
    );
  }
}
