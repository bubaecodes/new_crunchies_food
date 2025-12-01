import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText({
    super.key,
    required this.title,
    required this.fontVariation,
    required this.fontSize,
    this.color,
    this.textDecoration,
    this.overflow,
  });

  final String title;
  final FontVariation fontVariation;
  final double fontSize;
  final Color? color;
  final TextDecoration? textDecoration;
  final TextOverflow? overflow;
  //final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      overflow: overflow,
      style: TextStyle(
        fontVariations: [fontVariation],
        color: color,
        fontSize: fontSize,
        fontFamily: "Manrope",
        decoration: textDecoration,
      ),
    );
  }
}
