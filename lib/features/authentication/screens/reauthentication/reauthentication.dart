import 'package:flutter/material.dart';
import 'package:new_crunchies_food/features/authentication/screens/reauthentication/widgets/reauthentication_btn.dart';
import 'package:new_crunchies_food/features/authentication/screens/reauthentication/widgets/reauthentication_confirm_no.dart';
import 'package:new_crunchies_food/features/authentication/screens/reauthentication/widgets/reauthentication_form.dart';
import 'package:new_crunchies_food/features/authentication/screens/reauthentication/widgets/reauthentication_heading.dart';
import 'package:new_crunchies_food/features/authentication/screens/reauthentication/widgets/reauthentication_thumbnail.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';

class ReauthenticationScreen extends StatelessWidget {
  const ReauthenticationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          left: MySizes.md + 7,
          right: MySizes.md + 7,
          bottom: MySizes.md,
          top: MySizes.lg + 30,
        ),
        child: Column(
          children: [
            ReauthenticationHeading(),
            SizedBox(height: MySizes.lg * 3.5),
            ReauthenticationThumbnail(),
            SizedBox(height: MySizes.lg * 4.2),
            ReauthenticationConfirmNo(),
            SizedBox(height: MySizes.lg * 4.5),
            ReauthenticationForm(),
            SizedBox(height: MySizes.lg * 7),
            ReauthenticationBtn()
          ],
        ),
      ),
    );
  }
}
