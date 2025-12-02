import 'dart:math';
import 'package:flutter/material.dart';

class SnowAnimation extends StatefulWidget {
  final int snowflakeCount;
  final double speed;

  const SnowAnimation({
    super.key,
    this.snowflakeCount = 50,
    this.speed = 1.0,
  });

  @override
  State<SnowAnimation> createState() => _SnowAnimationState();
}

class _SnowAnimationState extends State<SnowAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final List<Snowflake> _snowflakes = [];
  final Random _random = Random();

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 20),
    )..repeat();

    _generateSnowflakes();
  }

  void _generateSnowflakes() {
    _snowflakes.clear();
    for (int i = 0; i < widget.snowflakeCount; i++) {
      _snowflakes.add(Snowflake(
        x: _random.nextDouble(),
        y: _random.nextDouble() * -1,
        size: _random.nextDouble() * 3 + 2,
        speed: _random.nextDouble() * widget.speed + 0.5,
        opacity: _random.nextDouble() * 0.5 + 0.5,
      ));
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        final size = MediaQuery.of(context).size;

        for (var snowflake in _snowflakes) {
          snowflake.y += snowflake.speed * 0.01;
          snowflake.x += sin(snowflake.y * 10) * 0.001;

          if (snowflake.y > 1.2) {
            snowflake.y = -0.2;
            snowflake.x = _random.nextDouble();
          }
        }

        return CustomPaint(
          painter: SnowPainter(_snowflakes, size),
          size: size,
        );
      },
    );
  }
}

class Snowflake {
  double x;
  double y;
  double size;
  double speed;
  double opacity;

  Snowflake({
    required this.x,
    required this.y,
    required this.size,
    required this.speed,
    required this.opacity,
  });
}

class SnowPainter extends CustomPainter {
  final List<Snowflake> snowflakes;
  final Size size;

  SnowPainter(this.snowflakes, this.size);

  @override
  void paint(Canvas canvas, Size canvasSize) {
    final paint = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill;

    for (var snowflake in snowflakes) {
      paint.color = Colors.white.withValues(alpha: snowflake.opacity);
      canvas.drawCircle(
        Offset(snowflake.x * size.width, snowflake.y * size.height),
        snowflake.size,
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(SnowPainter oldDelegate) => true;
}
