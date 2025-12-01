import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:new_crunchies_food/features/shop/controllers/support_controllers/copy_controller.dart';
import 'package:new_crunchies_food/features/shop/controllers/support_controllers/url_controller.dart';
import 'package:new_crunchies_food/features/shop/screens/support/widgets/support_contact_option.dart';
import 'package:new_crunchies_food/utils/constants/image_strings.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';
import 'package:new_crunchies_food/utils/constants/text_strings.dart';

class SupportBody extends StatelessWidget {
  const SupportBody({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UrlController());
    final copyController = Get.put(CopyController());
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          /// whatsapp
          SupportContactOption(
            ontap: (){
              controller.openWhatsApp(phone: '2349062439146');
            },
            image: MyImages.whatsappIcon,
            title: MyTexts.supportTitle1,
            subTitle: MyTexts.supportSubTitle1,
          ),

          SizedBox(height: MySizes.md),
          /// email
          SupportContactOption(
            ontap: (){
              controller.openEmail();
            },
            //ontap: controller.openEmail,
            image: MyImages.emailIcon,
            title: MyTexts.supportTitle2,
            subTitle: MyTexts.supportSubTitle2
          ),

          /// phone 1
          SizedBox(height: MySizes.md),
          SupportContactOption(
            image: MyImages.phoneIcon,
            title: MyTexts.supportTitle3,
            subTitle: MyTexts.supportSubTitle3,
            icon: Iconsax.copy,
            copyTap: (){
              copyController.copyToClipboard('2349062439146');
            },
          ),

          /// phone 1
          SizedBox(height: MySizes.md),
          SupportContactOption(
            image: MyImages.phoneIcon,
            title: MyTexts.supportTitle3,
            subTitle: MyTexts.supportSubTitle4,
            icon: Iconsax.copy,
            copyTap: (){
              copyController.copyToClipboard('2349169982493');
            },
          ),
          SizedBox(height: MySizes.md),
        ],
      ),
    );
  }
}
