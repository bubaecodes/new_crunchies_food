import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_crunchies_food/common/widgets/mytext.dart';
import 'package:new_crunchies_food/features/authentication/controllers/location/city_location_controller.dart';
import 'package:new_crunchies_food/utils/constants/colors.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';
import 'package:new_crunchies_food/utils/constants/text_strings.dart';

class LocationCityForm extends StatelessWidget {
  LocationCityForm({super.key});

  final formKey = GlobalKey<FormState>();
  final controller = Get.put(CityLocationController());

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Column(
          children: [
            Row(
              children: [
                MyText(
                  title: MyTexts.locationCity,
                  fontVariation: FontVariation.weight(800),
                  fontSize: 14
                ),
              ],
            ),
            SizedBox(height: MySizes.sm),
            DropdownButtonFormField(
              decoration: InputDecoration(
                labelText: 'Select your city',
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: MyColors.darkerGrey, width: 1.7),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: MyColors.darkerGrey, width: 1.7),
                ),
              ),
              value: controller.selectedCity.value,
              items: controller.city.map((String value) {
                return DropdownMenuItem(
                  value: value,
                  //child: Text(value)
                  child: MyText(title: value, fontVariation: FontVariation.weight(800), fontSize: 15),
                );
              }).toList(),
              onChanged: controller.selectedCity.call,
              validator: (value) =>
              value == null ? 'Please select an option' : null,
            )
          ],
        )
    );
  }
}
