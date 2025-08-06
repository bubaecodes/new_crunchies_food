import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_crunchies_food/utils/constants/colors.dart';
import 'package:new_crunchies_food/utils/constants/text_strings.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    super.key,
    required this.onpressed,
    required this.child,
    required this.backgroundColor,
    required this.borderSide
  });

  final VoidCallback onpressed;
  final Widget child;
  final WidgetStateProperty<Color> backgroundColor;
  final BorderSide borderSide;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onpressed,
      style: ButtonStyle(
        backgroundColor: backgroundColor,
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
                side: borderSide
            )
        ),
        padding: WidgetStateProperty.all(EdgeInsets.symmetric(horizontal: 149, vertical: 17)),
      ),
      child: child
    );
  }
}
