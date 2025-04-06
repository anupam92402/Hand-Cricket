import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hand_cricket/utils/app_colors.dart';

import '../../blocs/game_bloc.dart';

class CountdownTimerWidget extends StatefulWidget {
  const CountdownTimerWidget({super.key});

  @override
  CountdownTimerWidgetState createState() => CountdownTimerWidgetState();
}

class CountdownTimerWidgetState extends State<CountdownTimerWidget> {
  static const int totalTime = 10;
  int _currentTime = totalTime;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startCountdown();
  }

  void _startCountdown() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (_currentTime == 0) {
        _closeCountdown();
        BlocProvider.of<GameBloc>(context).add(const GameTimeoutEvent());
      } else {
        setState(() {
          _currentTime--;
        });
      }
    });
  }

  void _closeCountdown() {
    _timer?.cancel();
  }

  @override
  void dispose() {
    _closeCountdown();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: CircleCountdownPainter(
        progress: _currentTime / totalTime,
      ),
      child: SizedBox(
        width: 80,
        height: 80,
        child: Center(
          child: Text(
            '$_currentTime',
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppColors.colorFFFFFF,
            ),
          ),
        ),
      ),
    );
  }
}

class CircleCountdownPainter extends CustomPainter {
  final double progress;

  CircleCountdownPainter({required this.progress});

  @override
  void paint(Canvas canvas, Size size) {
    const strokeWidth = 5.0;
    final radius = (size.width - strokeWidth) / 2;
    final center = Offset(size.width / 2, size.height / 2);

    /// Background circle
    final backgroundPaint = Paint()
      ..color = Colors.black.withOpacity(0.4)
      ..style = PaintingStyle.fill
      ..strokeWidth = strokeWidth;
    canvas.drawCircle(center, radius, backgroundPaint);

    /// Progress (anticlockwise)
    final progressPaint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    double startAngle = -pi / 2;
    double sweepAngle = 2 * pi * progress;
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      startAngle,
      sweepAngle,
      false,
      progressPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CircleCountdownPainter oldDelegate) {
    return oldDelegate.progress != progress;
  }
}
