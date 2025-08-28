import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_crunchies_food/common/widgets/mytext.dart';
import 'package:new_crunchies_food/features/authentication/controllers/location/outlet_location_controller.dart';
import 'package:new_crunchies_food/utils/constants/colors.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';
import 'package:new_crunchies_food/utils/constants/text_strings.dart';

class LocationOutletForm extends StatelessWidget {
  LocationOutletForm({super.key});

  final formKey = GlobalKey<FormState>();
  final controller = Get.put(OutletLocationController());

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Form(
        child: Column(
          children: [
            Row(
              children: [
                MyText(
                  title: MyTexts.locationOutlet,
                  fontVariation: FontVariation.weight(800),
                  fontSize: 14
                ),
              ],
            ),
            SizedBox(height: MySizes.sm),
            DropdownButtonFormField(
              padding: EdgeInsets.only(bottom: MySizes.md - 10),
              decoration: InputDecoration(
                labelText: 'Select your outlet',
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: MyColors.darkerGrey, width: 1.7),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  borderSide: BorderSide(color: MyColors.darkerGrey, width: 1.7),
                ),
              ),
              value: controller.selectedOutlet.value,
              items: controller.outlet.map((String value) {
                return DropdownMenuItem(
                  value: value,
                  //child: MyText(title: value, fontVariation: FontVariation.weight(800), fontSize: 15),
                  child: SizedBox(
                    width: screenWidth * 0.74,
                    child: Text(
                      value,
                      softWrap: true,
                      overflow: TextOverflow.visible,
                      maxLines: 2,
                      style: TextStyle(
                        fontVariations: [FontVariation.weight(800)],
                        fontSize: 14,
                        fontFamily: 'Manrope'
                      ),
                    ),
                  ),
                );
              }).toList(),
              onChanged: controller.selectedOutlet.call,
              validator: (value) =>
              value == null ? 'Please select an option' : null,
            )
          ],
        )
    );
  }
}
