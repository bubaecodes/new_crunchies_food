import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:new_crunchies_food/features/shop/screens/support/widgets/support_contact_option.dart';
import 'package:new_crunchies_food/utils/constants/image_strings.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';
import 'package:new_crunchies_food/utils/constants/text_strings.dart';

class SupportBody extends StatelessWidget {
  const SupportBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SupportContactOption(
          image: MyImages.whatsappIcon,
          title: MyTexts.supportTitle1,
          subTitle: MyTexts.supportSubTitle1,
        ),
        SizedBox(height: MySizes.md),
        SupportContactOption(
          image: MyImages.emailIcon,
          title: MyTexts.supportTitle2,
          subTitle: MyTexts.supportSubTitle2
        ),
        SizedBox(height: MySizes.md),
        SupportContactOption(
          image: MyImages.phoneIcon,
          title: MyTexts.supportTitle3,
          subTitle: MyTexts.supportSubTitle3,
          icon: Iconsax.copy,
        ),
        SizedBox(height: MySizes.md),
        SupportContactOption(
          image: MyImages.phoneIcon,
          title: MyTexts.supportTitle3,
          subTitle: MyTexts.supportSubTitle3,
          icon: Iconsax.copy,
        ),
        SizedBox(height: MySizes.md),
      ],
    );
  }
}
