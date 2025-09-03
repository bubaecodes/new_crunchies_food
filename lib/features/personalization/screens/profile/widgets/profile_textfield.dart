import 'package:flutter/material.dart';
import 'package:new_crunchies_food/utils/constants/colors.dart';

class ProfileTextfield extends StatelessWidget {
  const ProfileTextfield({super.key, required this.hintText, this.iconButton, required this.enabled});

  final String hintText;
  final IconButton? iconButton;
  final bool enabled;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextField(
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
      ),
    );
  }
}
