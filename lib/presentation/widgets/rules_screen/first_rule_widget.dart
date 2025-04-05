import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/assets_path.dart';
import '../../../utils/string_constants.dart';
import 'circular_container_widget.dart';
import 'circular_text_widget.dart';

class FirstRuleWidget extends StatelessWidget {
  const FirstRuleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CircularContainerWidget(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircularTextWidget(
            text: StringConstants.one,
          ),
          const SizedBox(
            width: 8,
          ),
          const Expanded(
            child: Text(
              StringConstants.tapButtonsToScoreRuns,
              style: TextStyle(
                  color: AppColors.colorFFFFFF,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Row(
            children: [
              Image.asset(
                AssetsPath.three,
                height: 48,
                width: 48,
              ),
              const SizedBox(
                width: 8,
              ),
              Image.asset(
                AssetsPath.two,
                height: 48,
                width: 48,
              ),
              const SizedBox(
                width: 8,
              ),
              Image.asset(
                AssetsPath.one,
                height: 48,
                width: 48,
              ),
            ],
          )
        ],
      ),
    );
  }
}
