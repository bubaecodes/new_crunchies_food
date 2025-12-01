
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_crunchies_food/features/personalization/controllers/profile_controller/profile_appbar_btn_controller.dart';
import 'package:new_crunchies_food/utils/constants/colors.dart';

class ProfileTextfield extends StatelessWidget {
  const ProfileTextfield({
    super.key,
    required this.hintText,
    this.iconButton,
    required this.enabled,
    required this.textController,
  });

  final String hintText;
  final IconButton? iconButton;
  final bool enabled;
  final TextEditingController textController;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProfileAppbarBtnController());
    return TextField(
      controller: textController,
      enabled: enabled,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(fontVariations: [FontVariation.weight(600)], fontFamily: 'Manrope', fontSize: 14),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
          borderSide: BorderSide(color: MyColors.darkGrey),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(7),
          borderSide: BorderSide(color: Colors.black),
        ),
        suffixIcon: iconButton
      ),
    );
  }
}
