import 'package:flutter/material.dart';
import 'package:new_crunchies_food/common/widgets/mytext.dart';
import 'package:new_crunchies_food/utils/constants/text_strings.dart';

class ReauthenticationConfirmNo extends StatelessWidget {
  const ReauthenticationConfirmNo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          MyText(
            title: MyTexts.reAuthenticationTitle,
            fontVariation: FontVariation.weight(600),
            fontSize: 14,
          ),
          MyText(
            title: '090****5678',
            fontVariation: FontVariation.weight(800),
            fontSize: 16,
          ),
        ],
      ),
    );
  }
}
