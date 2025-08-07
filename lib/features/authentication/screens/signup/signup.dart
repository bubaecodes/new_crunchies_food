import 'package:flutter/material.dart';
import 'package:new_crunchies_food/common/styles/my_padding.dart';
import 'package:new_crunchies_food/features/authentication/screens/signup/widgets/signup_btn.dart';
import 'package:new_crunchies_food/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:new_crunchies_food/features/authentication/screens/signup/widgets/signup_heading.dart';
import 'package:new_crunchies_food/features/authentication/screens/signup/widgets/signup_thumbnail.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';
import 'package:new_crunchies_food/utils/device/device_utility.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: MyPadding(
        child: Stack(
          children: [
            Column(
              children: [
                SignupHeading(),
                SizedBox(height: MySizes.lg * 3.5),
                SignupThumbnail(),
                SizedBox(height: MySizes.lg * 5.5),
                SignupForm(),
                SizedBox(height: MySizes.lg * 7),
              ],
            ),
            Positioned(
                bottom: MyDeviceUtils.getBottomNavigationBarHeight(),
                child: SignupBtn()
            )
          ],
        ),
      ),
    );
  }
}
