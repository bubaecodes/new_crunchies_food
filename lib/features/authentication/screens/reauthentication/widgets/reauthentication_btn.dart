import 'package:flutter/material.dart';
import 'package:new_crunchies_food/features/authentication/controllers/reauthenticate/reauthenticate_controller.dart';
import 'package:new_crunchies_food/utils/constants/colors.dart';
import 'package:get/get.dart';
import 'package:new_crunchies_food/utils/constants/text_strings.dart';

class ReauthenticationBtn extends StatelessWidget {
  const ReauthenticationBtn({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ReauthenticateController());
    return ElevatedButton(
      onPressed: () => controller.reAuthenticate(),
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
