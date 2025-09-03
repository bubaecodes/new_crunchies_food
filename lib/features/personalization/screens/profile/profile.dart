import 'package:flutter/material.dart';
import 'package:new_crunchies_food/common/styles/my_home_padding.dart';
import 'package:new_crunchies_food/common/widgets/mytext.dart';
import 'package:new_crunchies_food/features/personalization/controllers/profile_controller/gender_textfield_controller.dart';
import 'package:new_crunchies_food/features/personalization/controllers/profile_controller/profile_appbar_btn_controller.dart';
import 'package:new_crunchies_food/features/personalization/screens/profile/widgets/profile_header.dart';
import 'package:new_crunchies_food/features/personalization/screens/profile/widgets/profile_textfield.dart';
import 'package:new_crunchies_food/utils/constants/colors.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProfileAppbarBtnController());
    final genderController = Get.put(GenderTextFieldController());
    return Scaffold(
      backgroundColor: Colors.white,
      body: MyHomePadding(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProfileHeader(),
              SizedBox(height: MySizes.lg + 10),

              /// first name
              MyText(title: 'First Name', fontVariation: FontVariation.weight(900), fontSize: 15, color: MyColors.darkerGrey),
              SizedBox(height: MySizes.xs),
              Obx(()=> ProfileTextfield(hintText: 'Enter your first name', enabled: controller.isToggle.value,)),
              SizedBox(height: MySizes.sm + 5),

              /// last name
              MyText(title: 'Last Name', fontVariation: FontVariation.weight(900), fontSize: 15, color: MyColors.darkerGrey),
              SizedBox(height: MySizes.xs),
              Obx(()=> ProfileTextfield(hintText: 'Enter your last name', enabled: controller.isToggle.value)),
              SizedBox(height: MySizes.sm + 5),

              /// phone number
              MyText(title: 'Phone Number', fontVariation: FontVariation.weight(900), fontSize: 15, color: MyColors.darkerGrey),
              SizedBox(height: MySizes.xs),
              Obx(()=> ProfileTextfield(hintText: 'Enter your phone number', enabled: controller.isToggle.value)),
              SizedBox(height: MySizes.sm + 5),


              /// gender
              MyText(title: 'Gender', fontVariation: FontVariation.weight(900), fontSize: 15, color: MyColors.darkerGrey),
              SizedBox(height: MySizes.xs),
              // Obx(
              //   ()=> ProfileTextfield(
              //     hintText: 'Select a gender',
              //     enabled: controller.isToggle.value,
              //     iconButton: IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_down)),
              //   ),
              // ),
              Obx(
                ()=> DropdownButtonFormField(
                  decoration: InputDecoration(
                    //enabled: controller.isToggle.value,
                    hintText: 'Select a gender',
                    hintStyle: TextStyle(fontVariations: [FontVariation.weight(600)], fontFamily: 'Manrope', fontSize: 14),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      borderSide: BorderSide(color: MyColors.darkGrey),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      borderSide: BorderSide(color: MyColors.darkGrey),
                    ),
                  ),
                  value: genderController.selectedGender.value,
                  items: genderController.gender.map((String value) {
                    return DropdownMenuItem(
                      value: value,
                      child: MyText(title: value, fontVariation: FontVariation.weight(800), fontSize: 15),
                    );
                  }).toList(),
                  onChanged: controller.isToggle.value ? genderController.selectedGender.call : null,
                  validator: (value) =>
                  value == null ? 'Please select gender' : null,
                ),
              ),
              SizedBox(height: MySizes.sm + 5),


              /// date of birth
              MyText(title: 'Date of birth', fontVariation: FontVariation.weight(900), fontSize: 15, color: MyColors.darkerGrey),
              SizedBox(height: MySizes.xs),
              Obx(
                ()=> ProfileTextfield(
                  hintText: 'DD/MM',
                  enabled: controller.isToggle.value,
                  iconButton: IconButton(onPressed: (){}, icon: Icon(Iconsax.calendar_edit)),
                ),
              ),
              SizedBox(height: MySizes.sm + 5),


              /// email
              MyText(title: 'Email', fontVariation: FontVariation.weight(900), fontSize: 15, color: MyColors.darkerGrey),
              SizedBox(height: MySizes.xs),
              Obx(()=> ProfileTextfield(hintText: 'Enter your email', enabled: controller.isToggle.value)),
              SizedBox(height: MySizes.sm + 5),
            ],
          ),
        ),
      ),
    );
  }
}
