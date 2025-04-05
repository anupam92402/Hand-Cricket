import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';

class CircularTextWidget extends StatelessWidget {
  const CircularTextWidget({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 18,
      height: 18,
      decoration: const BoxDecoration(
        color: AppColors.color891426,
        // background color of the circle
        shape: BoxShape.circle,
      ),
      alignment: Alignment.center,
      child: Text(
        text,
        style: const TextStyle(
          color: AppColors.colorFEB412,
          fontSize: 14,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
