import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_crunchies_food/common/widgets/mytext.dart';
import 'package:new_crunchies_food/features/authentication/screens/set_location/set_location.dart';
import 'package:new_crunchies_food/utils/constants/colors.dart';
import 'package:new_crunchies_food/utils/constants/text_strings.dart';

class LocationBtn extends StatelessWidget {
  const LocationBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => Get.to(SetLocationScreen()),
      style: ButtonStyle(
        backgroundColor: WidgetStatePropertyAll(MyColors.primary),
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: BorderSide(color: MyColors.secondary),
          )
        ),
        padding: WidgetStateProperty.all(EdgeInsets.symmetric(horizontal: 140, vertical: 17)),
      ),
        child: MyText(
          title: MyTexts.locationBtn,
          fontVariation: FontVariation.weight(800),
          color: Colors.white,
          fontSize: 14
        ),
    );
  }
}
