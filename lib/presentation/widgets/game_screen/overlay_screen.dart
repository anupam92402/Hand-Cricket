import 'package:flutter/material.dart';
import 'package:hand_cricket/utils/app_colors.dart';
import 'dart:async';

class OverlayUtils {
  static void showImageOverlay({required BuildContext context,required Widget widget}) {
    final overlay = Overlay.of(context);
    final overlayEntry = OverlayEntry(
      builder: (_) => Stack(
        children: [
          Container(color: AppColors.color000000.withOpacity(0.7)),
          Center(
            child:widget,
          ),
        ],
      ),
    );

    overlay.insert(overlayEntry);

    Timer(const Duration(seconds: 2), () {
      overlayEntry.remove();
    });
  }
}
