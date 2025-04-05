import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/string_constants.dart';

class BottomButtonWidget extends StatelessWidget {
  const BottomButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.75,
      padding: const EdgeInsets.all(12),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: const LinearGradient(
          colors: [
            AppColors.colorEDC771,
            AppColors.colorFEB412,
          ],
        ),
      ),
      child: const Text(
        StringConstants.startPlaying,
        style: TextStyle(
            color: AppColors.color000000,
            fontSize: 18,
            fontWeight: FontWeight.w900),
      ),
    );
  }
}
