import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/assets_path.dart';
import '../../../utils/string_constants.dart';
import 'batting_rules_container_widget.dart';
import 'circular_container_widget.dart';
import 'circular_text_widget.dart';

class SecondRuleWidget extends StatelessWidget {
  const SecondRuleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return   Row(
      children: [
        Expanded(
          child: CircularContainerWidget(
            padding: const EdgeInsets.all(12).copyWith(bottom: 0),
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(8),
                bottomLeft: Radius.circular(8)),
            child: const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircularTextWidget(
                  text: StringConstants.two,
                ),
                SizedBox(
                  width: 8,
                ),
                BattingRulesContainerWidget(
                  title: StringConstants.sameNumber,
                  subTitle: StringConstants.yourAreOut,
                  subTitleColor: AppColors.colorEB5B75,
                  image: AssetsPath.sameNumber,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          width: 4,
        ),
        Expanded(
          child: CircularContainerWidget(
            padding: const EdgeInsets.all(12).copyWith(bottom: 0),
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(8),
                bottomRight: Radius.circular(8)),
            child: const BattingRulesContainerWidget(
              title: StringConstants.differentNumber,
              subTitle: StringConstants.youScoreRuns,
              subTitleColor: AppColors.colorA0C681,
              image: AssetsPath.differentNumber,
            ),
          ),
        ),
      ],
    );
  }
}
