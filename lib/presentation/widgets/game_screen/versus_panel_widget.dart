import 'package:flutter/material.dart';

import '../../../utils/assets_path.dart';

class VersusPanelWidget extends StatelessWidget {
  const VersusPanelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomPaint(
            painter: LeftVContainerPainter(),
            child: GridView.count(
              crossAxisCount: 3,
              shrinkWrap: true,
              padding: const EdgeInsets.all(16),
              crossAxisSpacing: 0,
              mainAxisSpacing: 0,
              children: List.generate(6, (index) {
                return Center(
                  child: SizedBox(
                    width: 24, // increase for visibility
                    height: 24,
                    child: Image.asset(
                      AssetsPath.ball,
                      fit: BoxFit.contain,
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
        Expanded(
          child: CustomPaint(
            painter: RightVContainerPainter(),
            child: GridView.count(
              crossAxisCount: 3,
              shrinkWrap: true,
              padding: const EdgeInsets.all(16),
              crossAxisSpacing: 0,
              mainAxisSpacing: 0,
              children: List.generate(6, (index) {
                return Center(
                  child: SizedBox(
                    width: 24, // increase for visibility
                    height: 24,
                    child: Image.asset(
                      AssetsPath.ball,
                      fit: BoxFit.contain,
                    ),
                  ),
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}

class LeftVContainerPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.fill;

    final path = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width - 50, 0)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

class RightVContainerPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.yellow
      ..style = PaintingStyle.fill;

    final path = Path()
      ..moveTo(size.width, 0)
      ..lineTo(50, 0)
      ..lineTo(0, size.height)
      ..lineTo(size.width, size.height)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
