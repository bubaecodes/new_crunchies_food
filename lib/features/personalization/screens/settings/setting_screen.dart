import 'package:flutter/material.dart';
import 'package:new_crunchies_food/common/styles/my_home_padding.dart';
import 'package:iconsax/iconsax.dart';
import 'package:new_crunchies_food/common/widgets/mytext.dart';
import 'package:new_crunchies_food/features/personalization/screens/address/address_screen.dart';
import 'package:new_crunchies_food/features/personalization/screens/orders/orders_screen.dart';
import 'package:new_crunchies_food/features/personalization/screens/profile/profile.dart';
import 'package:new_crunchies_food/features/personalization/screens/settings/widgets/settings_appbar.dart';
import 'package:new_crunchies_food/features/personalization/screens/settings/widgets/settings_body.dart';
import 'package:new_crunchies_food/features/shop/screens/loyalty/loyalty_screen.dart';
import 'package:new_crunchies_food/features/shop/screens/support/support_screen.dart';
import 'package:new_crunchies_food/utils/constants/colors.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';
import 'package:new_crunchies_food/utils/constants/text_strings.dart';
import 'package:get/get.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: MyHomePadding(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(onPressed: () => Get.to(SupportScreen()), icon: Icon(Icons.chevron_left, size: 35)),
            SizedBox(height: MySizes.sm),
            SettingsAppbar(),
            SizedBox(height: MySizes.md + 10),
            ///settings title
            MyText(
              title: MyTexts.settingSection1,
              fontVariation: FontVariation.weight(700),
              fontSize: 14.2,
              color: MyColors.darkerGrey,
            ),
            ///profile
            SettingsBody(onPressed: () => Get.to(()=> ProfileScreen()), icon: Iconsax.user, text: MyTexts.settingTitle1, navIcon: Icons.chevron_right),
            SizedBox(height: MySizes.xs - 2),
            ///address
            SettingsBody(onPressed: () => Get.to(()=> AddressScreen()), icon: Iconsax.location, text: MyTexts.settingTitle2, navIcon: Icons.chevron_right),
            SizedBox(height: MySizes.xs - 2),
            ///my orders
            SettingsBody(onPressed: ()=> Get.to(()=> OrdersScreen()), icon: Iconsax.shopping_cart, text: MyTexts.settingTitle3, navIcon: Icons.chevron_right),
            SizedBox(height: MySizes.xs - 2),
            ///loyalty
            SettingsBody(onPressed: () => Get.to(()=> LoyaltyScreen()), icon: Iconsax.discount_shape, text: MyTexts.settingTitle4, navIcon: Icons.chevron_right),
            SizedBox(height: MySizes.md),
            ///settings subtitle
            MyText(
              title: MyTexts.settingSection2,
              fontVariation: FontVariation.weight(700),
              fontSize: 14.2,
              color: MyColors.darkerGrey,
            ),
            SizedBox(height: MySizes.xs),
            ///support
            SettingsBody(onPressed: () =>Get.to(SupportScreen()), icon: Iconsax.message, text: MyTexts.settingTitle5, navIcon: Icons.chevron_right),
            SizedBox(height: MySizes.xs - 2),
            ///about us
            SettingsBody(onPressed: () {  }, icon: Iconsax.warning_2, text: MyTexts.settingTitle6, navIcon: Icons.chevron_right),
            SizedBox(height: MySizes.xs - 2),
            ///terms and conditions
            SettingsBody(onPressed: () {  }, icon: Iconsax.book, text: MyTexts.settingTitle7, navIcon: Icons.chevron_right),
            SizedBox(height: MySizes.xs - 2),
            ///logout
            SettingsBody(onPressed: () {  }, icon: Iconsax.logout, text: MyTexts.settingTitle8),
            SizedBox(height: MySizes.xs - 2),
            ///delete account
            SettingsBody(onPressed: () {  }, icon: Iconsax.trash, text: MyTexts.settingTitle9, color: MyColors.primary),
            SizedBox(height: MySizes.xs - 2),
          ],
        ),
      ),
    );
  }
}
