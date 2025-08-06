import 'package:flutter/material.dart';
import 'package:new_crunchies_food/common/styles/my_padding.dart';
import 'package:new_crunchies_food/features/authentication/screens/location/widgets/location_heading.dart';
import 'package:new_crunchies_food/features/authentication/screens/location/widgets/location_thumbnail.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MyPadding(
        child: Column(
          children: [
            LocationHeading(),
            SizedBox(height: MySizes.lg * 2),
            LocationThumbnail(),
            SizedBox(height: MySizes.lg * 3)
          ],
        ),
      ),
    );
  }
}
