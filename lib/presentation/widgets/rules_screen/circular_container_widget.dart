import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';

class CircularContainerWidget extends StatelessWidget {
  const CircularContainerWidget(
      {super.key, required this.child, this.padding, this.borderRadius});

  final Widget child;
  final EdgeInsets? padding;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: borderRadius ?? BorderRadius.circular(8),
        color: AppColors.color000000,
      ),
      child: child,
    );
  }
}
