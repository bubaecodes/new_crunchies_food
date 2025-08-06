import 'package:new_crunchies_food/utils/constants/colors.dart';
import 'package:new_crunchies_food/utils/constants/sizes.dart';
import 'package:new_crunchies_food/utils/helpers/helper_function.dart';
import 'package:flutter/material.dart';



class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    //required this.hashtag,
    required this.title,
    required this.subTitle,
  });

  final String image;
  //final String hashtag;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(MySizes.defaultSpace),
      child: Column(
        children: [
          Image(
              width: MyHelperFunctions.screenWidth() * 0.8,
              height: MyHelperFunctions.screenHeight() * 0.6,
              image: AssetImage(image)
          ),
          // Text(
          //   hashtag,
          //   style: const TextStyle(fontSize: 18, color: MyColors.primary),
          //   textAlign: TextAlign.center,
          // ),
          Text(
            title,
            style: const TextStyle(fontSize: 23, color: MyColors.textPrimary, fontFamily: "Manrope", fontVariations: [FontVariation.weight(800)]),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: MySizes.spaceBtwItems),
          Text(
            subTitle,
            style: const TextStyle(fontSize: 15.7, color: MyColors.textPrimary, fontFamily: "Manrope", fontVariations: [FontVariation.weight(500)]),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}