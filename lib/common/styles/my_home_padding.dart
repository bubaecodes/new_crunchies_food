import 'package:flutter/material.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';

class MyHomePadding extends StatelessWidget {
  const MyHomePadding({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: MySizes.md + 3,
        right: MySizes.md + 3,
        bottom: MySizes.xs,
        top: MySizes.lg + 27,
      ),
      child: child,
    );
  }
}
