import 'package:flutter/material.dart';
import 'package:new_crunchies_food/common/widgets/mytext.dart';
import 'package:new_crunchies_food/utils/constants/colors.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';

class SettingsBody extends StatelessWidget {
  const SettingsBody({super.key, required this.onPressed, required this.icon, required this.text, this.navIcon, this.color});

  final VoidCallback onPressed;
  final IconData icon;
  final String text;
  final IconData? navIcon;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(icon, color: MyColors.primary),
            SizedBox(width: MySizes.md),
            MyText(title: text, fontVariation: FontVariation.weight(900), fontSize: 15.7, color: color)
          ],
        ),
        IconButton(onPressed: onPressed, icon: Icon(navIcon, size: 35))
      ],
    );
  }
}
