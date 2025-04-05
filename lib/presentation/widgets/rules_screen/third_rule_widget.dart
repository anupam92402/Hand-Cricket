import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/assets_path.dart';
import '../../../utils/string_constants.dart';
import 'circular_container_widget.dart';
import 'circular_text_widget.dart';

class ThirdRuleWidget extends StatelessWidget {
  const ThirdRuleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CircularContainerWidget(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircularTextWidget(
            text: StringConstants.three,
          ),
          const SizedBox(
            width: 8,
          ),
          const Expanded(
            child: Text(
              StringConstants.beHighestScorer,
              style: TextStyle(
                  color: AppColors.colorFFFFFF,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
          ),
          const SizedBox(
            width: 16,
          ),
          Image.asset(
            AssetsPath.jersey,
            height: 72,
            width: 72,
          ),
        ],
      ),
    );
  }
}
