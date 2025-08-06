import 'package:flutter/material.dart';
import 'package:new_crunchies_food/features/authentication/screens/location/location.dart';
import 'package:new_crunchies_food/utils/constants/colors.dart';
import 'package:get/get.dart';
import 'package:new_crunchies_food/utils/constants/text_strings.dart';

class ReauthenticationBtn extends StatelessWidget {
  const ReauthenticationBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => Get.to(() => LocationScreen()),
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(MyColors.primary),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: BorderSide(color: MyColors.secondary)
            )
        ),
        padding: WidgetStateProperty.all(EdgeInsets.symmetric(horizontal: 149, vertical: 17)),
      ),
      child: Text(
        MyTexts.reAuthenticationBtn,
        style: TextStyle(
            fontFamily: 'Manrope',
            fontSize: 14,
            color: Colors.white,
            fontVariations: [FontVariation.weight(900)]
        ),
      ),
    );
  }
}
