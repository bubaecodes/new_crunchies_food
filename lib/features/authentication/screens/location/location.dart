import 'package:flutter/material.dart';
import 'package:new_crunchies_food/common/styles/my_padding.dart';
import 'package:new_crunchies_food/common/styles/my_textbtn.dart';
import 'package:new_crunchies_food/features/authentication/screens/location/widgets/forms/location_city_form.dart';
import 'package:new_crunchies_food/features/authentication/screens/location/widgets/forms/location_form.dart';
import 'package:new_crunchies_food/features/authentication/screens/location/widgets/forms/location_outlet_form.dart';
import 'package:new_crunchies_food/features/authentication/screens/location/widgets/location_btn.dart';
import 'package:new_crunchies_food/features/authentication/screens/location/widgets/location_heading.dart';
import 'package:new_crunchies_food/features/authentication/screens/location/widgets/location_thumbnail.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';
import 'package:new_crunchies_food/utils/device/device_utility.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: MyPadding(
        child: Stack(
          children: [
            Column(
              children: [
                LocationHeading(),
                SizedBox(height: MySizes.lg),
                LocationThumbnail(),
                SizedBox(height: MySizes.lg),
                LocationForm(),
                SizedBox(height: MySizes.md - 5),
                LocationCityForm(),
                SizedBox(height: MySizes.md - 5),
                LocationOutletForm(),
                SizedBox(height: MySizes.md),
                LocationBtn(),
                SizedBox(height: MySizes.xl),
              ],
            ),
            Positioned(
              bottom: MyDeviceUtils.getBottomNavigationBarHeight(),
              child: MyTextbtn(),
            )
          ],
        )
      ),
    );
  }
}
