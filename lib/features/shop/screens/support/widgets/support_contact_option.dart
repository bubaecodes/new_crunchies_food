import 'package:flutter/material.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';

class SupportContactOption extends StatelessWidget {
  const SupportContactOption({super.key, required this.image, required this.title, required this.subTitle, this.icon});

  final String image;
  final String title;
  final String subTitle;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: 34,
              height: 34,
              padding: EdgeInsets.all(7),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[200]
              ),
              child: Image.asset(image, width: 20, height: 20)
            ),
            SizedBox(width: MySizes.md),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontVariations: [FontVariation.weight(600)],
                    fontSize: 13,
                    //decoration: TextDecoration.underline
                  ),
                ),
                Text(
                  subTitle,
                  style: TextStyle(
                      fontFamily: 'Manrope',
                      fontVariations: [FontVariation.weight(900)],
                      fontSize: 14,
                      decoration: TextDecoration.underline,
                      color: Colors.black
                  ),
                ),
              ],
            ),
            //Image.asset(MyImages.copyIcon, width: 20, height: 20),
          ],
        ),
        Row(
          children: [
            GestureDetector(onTap: () {}, child: Icon(icon, color: Colors.red, size: 28))
          ],
        )
      ],
    );
  }
}
