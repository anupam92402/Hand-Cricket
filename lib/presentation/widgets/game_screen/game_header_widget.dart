import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/string_constants.dart';

class GameHeaderWidget extends StatelessWidget {
  const GameHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                StringConstants.scapia,
                style: TextStyle(
                    color: AppColors.colorFFFFFF,
                    fontSize: 28,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(width: 4),
              Container(
                  height: 24, width: 2, color: AppColors.color9E9E9E),
              const SizedBox(width: 4),
              Text(String.fromCharCode(0x1F451),
                  style: const TextStyle(fontSize: 24))
            ],
          ),
          Container(
            padding: const EdgeInsets.symmetric(
                horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                color: const Color(0xFFB8844F),
                // Gold-like border color
                width: 1.5,
              ),
            ),
            child: const Text(
              'Current highest score : 135741',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
          ),
          const Text(
            'Your weekly score : 0',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w400,
              fontSize: 12,
            ),
          )
        ],
      ),
    );
  }
}