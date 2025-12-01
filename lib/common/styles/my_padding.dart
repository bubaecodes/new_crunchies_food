import 'package:flutter/material.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';

class MyPadding extends StatelessWidget {
  const MyPadding({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: MySizes.md + 2,
        right: MySizes.md + 2,
        bottom: MySizes.md,
        top: MySizes.lg + 30,
      ),
      child: child,
    );
  }
}
