import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/assets_path.dart';
import '../../../utils/string_constants.dart';

class RulesScreenTitleWidget  extends StatelessWidget {
  const RulesScreenTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(
          AssetsPath.threeFingers,
          height: 72,
          width: 72,
        ),
        const Text(
          StringConstants.howToPlay,
          style: TextStyle(
              color: AppColors.colorEDC771,
              fontSize: 40,
              fontWeight: FontWeight.bold),
        ),
        Image.asset(
          AssetsPath.onFinger,
          height: 72,
          width: 72,
        ),
      ],
    );
  }
}
