import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';

class PlayersNameWidget extends StatelessWidget {
  const PlayersNameWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Text(
          'Farhan',
          style: TextStyle(
              color: AppColors.colorFFFFFF,
              fontSize: 18,
              fontWeight: FontWeight.w600),
        ),
        CustomPaint(
          painter: CustomBorderPainter(),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            alignment: Alignment.center,
            child: const Text(
              'To win: 0',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        const Text(
          'Farhan',
          style: TextStyle(
              color: AppColors.colorFFFFFF,
              fontSize: 18,
              fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}

class CustomBorderPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final path = Path();
    path.moveTo(0, 0);
    path.lineTo(10, size.height);
    path.lineTo(size.width - 10, size.height);
    path.lineTo(size.width, 0);
    path.close();


    final gradient = const LinearGradient(
      colors: [
        AppColors.colorEDC771,
        AppColors.colorFEB412,
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    ).createShader(Rect.fromLTWH(0, 0, size.width, size.height));

    final paint = Paint()
      ..shader = gradient
      ..style = PaintingStyle.fill;

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
