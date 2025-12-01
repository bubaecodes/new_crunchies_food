import 'package:flutter/material.dart';
import 'package:new_crunchies_food/common/widgets/mytext.dart';
import 'package:new_crunchies_food/utils/constants/colors.dart';
import 'package:new_crunchies_food/utils/constants/text_strings.dart';

class LoyaltyBtn extends StatelessWidget {
  const LoyaltyBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      //onPressed: () => Get.to(SetLocationScreen()),
      onPressed: (){},
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(MyColors.primary),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: BorderSide(color: MyColors.secondary),
            )
        ),
        padding: WidgetStateProperty.all(EdgeInsets.symmetric(horizontal: 115, vertical: 13)),
      ),
      child: MyText(
          title: MyTexts.loyaltyBtn,
          fontVariation: FontVariation.weight(700),
          color: Colors.white,
          fontSize: 16
      ),
    );
  }
}
