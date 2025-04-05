import 'package:flutter/material.dart';
import 'package:hand_cricket/utils/app_colors.dart';

class BattingRulesContainerWidget extends StatelessWidget {
  const BattingRulesContainerWidget({
    super.key,
    required this.title,
    required this.subTitle,
    required this.subTitleColor,
    required this.image,
  });

  final String title;
  final String subTitle;
  final Color subTitleColor;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
              color: AppColors.colorFFFFFF,
              fontSize: 16,
              fontWeight: FontWeight.w400),
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          subTitle,
          style: TextStyle(
              color: subTitleColor, fontSize: 16, fontWeight: FontWeight.w400),
        ),
        const SizedBox(
          height: 4,
        ),
        Image.asset(
          image,
          height: 72,
          width: 72,
        ),
      ],
    );
  }
}
