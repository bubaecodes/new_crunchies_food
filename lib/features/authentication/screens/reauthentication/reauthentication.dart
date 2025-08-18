import 'package:flutter/material.dart';
import 'package:new_crunchies_food/common/styles/my_padding.dart';
import 'package:new_crunchies_food/features/authentication/screens/reauthentication/widgets/reauthentication_btn.dart';
import 'package:new_crunchies_food/features/authentication/screens/reauthentication/widgets/reauthentication_confirm_no.dart';
import 'package:new_crunchies_food/features/authentication/screens/reauthentication/widgets/reauthentication_form.dart';
import 'package:new_crunchies_food/features/authentication/screens/reauthentication/widgets/reauthentication_heading.dart';
import 'package:new_crunchies_food/features/authentication/screens/reauthentication/widgets/reauthentication_thumbnail.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';
import 'package:new_crunchies_food/utils/device/device_utility.dart';

class ReauthenticationScreen extends StatelessWidget {
  const ReauthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: MyPadding(
        child: Stack(
          children: [
            Column(
              children: [
                ReauthenticationHeading(),
                SizedBox(height: MySizes.lg * 3.5),
                ReauthenticationThumbnail(),
                SizedBox(height: MySizes.lg * 4.2),
                ReauthenticationConfirmNo(),
                SizedBox(height: MySizes.lg * 4.5),
                ReauthenticationForm(),
                SizedBox(height: MySizes.lg * 7),
              ],
            ),
            Positioned(
              bottom: MyDeviceUtils.getBottomNavigationBarHeight(),
              child: ReauthenticationBtn(),
            )
          ],
        ),
      ),
    );
  }
}
