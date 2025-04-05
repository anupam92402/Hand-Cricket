import 'package:flutter/material.dart';
import 'package:hand_cricket/utils/app_colors.dart';
import 'dart:async';

class OverlayUtils {
  static Future<void> showImageOverlay({
    required BuildContext context,
    required Widget widget,
    Duration duration = const Duration(seconds: 2),
  }) async {
    final overlay = Overlay.of(context);
    final overlayEntry = OverlayEntry(
      builder: (_) => Stack(
        children: [
          Container(color: AppColors.color000000.withOpacity(0.7)),
          Center(child: widget),
        ],
      ),
    );
    overlay.insert(overlayEntry);
    await Future.delayed(duration);
    overlayEntry.remove();

  }
}
