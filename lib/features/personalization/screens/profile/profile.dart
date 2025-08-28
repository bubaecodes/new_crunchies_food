import 'package:flutter/material.dart';
import 'package:new_crunchies_food/common/styles/my_home_padding.dart';
import 'package:new_crunchies_food/common/widgets/mytext.dart';
import 'package:new_crunchies_food/features/personalization/screens/profile/widgets/profile_header.dart';
import 'package:new_crunchies_food/features/personalization/screens/profile/widgets/profile_textfield.dart';
import 'package:new_crunchies_food/utils/constants/colors.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';
import 'package:iconsax/iconsax.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
              ProfileTextfield(hintText: 'Enter your first name'),
              SizedBox(height: MySizes.sm + 5),

              /// last name
              MyText(title: 'Last Name', fontVariation: FontVariation.weight(900), fontSize: 15, color: MyColors.darkerGrey),
              SizedBox(height: MySizes.xs),
              ProfileTextfield(hintText: 'Enter your last name'),
              SizedBox(height: MySizes.sm + 5),

              /// phone number
              MyText(title: 'Phone Number', fontVariation: FontVariation.weight(900), fontSize: 15, color: MyColors.darkerGrey),
              SizedBox(height: MySizes.xs),
              ProfileTextfield(hintText: 'Enter your phone number'),
              SizedBox(height: MySizes.sm + 5),


              /// gender
              MyText(title: 'Gender', fontVariation: FontVariation.weight(900), fontSize: 15, color: MyColors.darkerGrey),
              SizedBox(height: MySizes.xs),
              ProfileTextfield(
                hintText: 'Select a gender',
                iconButton: IconButton(onPressed: (){}, icon: Icon(Icons.keyboard_arrow_down)),
              ),
              SizedBox(height: MySizes.sm + 5),


              /// date of birth
              MyText(title: 'Date of birth', fontVariation: FontVariation.weight(900), fontSize: 15, color: MyColors.darkerGrey),
              SizedBox(height: MySizes.xs),
              ProfileTextfield(
                hintText: 'Select a gender',
                iconButton: IconButton(onPressed: (){}, icon: Icon(Iconsax.calendar_edit)),
              ),
              SizedBox(height: MySizes.sm + 5),


              /// email
              MyText(title: 'Email', fontVariation: FontVariation.weight(900), fontSize: 15, color: MyColors.darkerGrey),
              SizedBox(height: MySizes.xs),
              ProfileTextfield(hintText: 'Enter your email'),
              SizedBox(height: MySizes.sm + 5),
            ],
          ),
        ),
      ),
    );
  }
}
