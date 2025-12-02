import 'dart:math';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ChristmasTree extends StatelessWidget {
  final double size;
  final bool animated;
  final bool useLottie;
  final String? lottieUrl;
  final String? lottieAssetPath;

  const ChristmasTree({
    super.key,
    this.size = 200,
    this.animated = true,
    this.useLottie = true,
    this.lottieUrl,
    this.lottieAssetPath,
  });

  @override
  Widget build(BuildContext context) {
    // Use Lottie animation if enabled and URL/asset provided
    if (useLottie) {
      if (lottieAssetPath != null) {
        return SizedBox(
          width: size,
          height: size * 1.2,
          child: Lottie.asset(
            lottieAssetPath!,
            width: size,
            height: size * 1.2,
            fit: BoxFit.contain,
            repeat: true,
            animate: true,
            errorBuilder: (context, error, stackTrace) {
              debugPrint('Lottie asset error: $error');
              // Fallback to custom painted tree if Lottie fails
              return Container();
            },
          ),
        );
      }

      if (lottieUrl != null) {
        return SizedBox(
          width: size,
          height: size * 1.2,
          child: Lottie.asset(
            lottieUrl!,
            width: size,
            height: size * 1.2,
            fit: BoxFit.contain,
            repeat: true,
            animate: true,
            errorBuilder: (context, error, stackTrace) {
              // Fallback to custom painted tree if Lottie fails
              return _buildCustomTree();
            },
          ),
        );
      }
    }

    // Default: use custom painted tree
    return _buildCustomTree();
  }

  Widget _buildCustomTree() {
    return SizedBox(
      width: size,
      height: size * 1.2,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          // Tree trunk
          Positioned(
            bottom: 0,
            child: Container(
              width: size * 0.15,
              height: size * 0.2,
              decoration: BoxDecoration(
                color: const Color(0xFF8B4513),
                borderRadius: BorderRadius.circular(4),
              ),
            ),
          ),
          // Tree layers
          _buildTreeLayer(size * 0.9, 0, const Color(0xFF228B22)),
          _buildTreeLayer(size * 0.7, size * 0.15, const Color(0xFF32CD32)),
          _buildTreeLayer(size * 0.5, size * 0.3, const Color(0xFF228B22)),
          _buildTreeLayer(size * 0.3, size * 0.45, const Color(0xFF32CD32)),
          // Star on top
          Positioned(
            top: size * 0.05,
            child: _buildStar(size * 0.15),
          ),
          // Ornaments
          if (animated) ...[
            _buildOrnament(size * 0.3, size * 0.25, Colors.red),
            _buildOrnament(size * 0.7, size * 0.35, Colors.blue),
            _buildOrnament(size * 0.5, size * 0.5, Colors.yellow),
            _buildOrnament(size * 0.2, size * 0.4, Colors.purple),
            _buildOrnament(size * 0.8, size * 0.55, Colors.orange),
          ],
        ],
      ),
    );
  }

  Widget _buildTreeLayer(double width, double top, Color color) {
    return Positioned(
      top: top,
      child: CustomPaint(
        size: Size(width, width * 0.8),
        painter: TreeLayerPainter(color),
      ),
    );
  }

  Widget _buildStar(double size) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: const Duration(seconds: 2),
      curve: Curves.easeInOut,
      builder: (context, value, child) {
        return Transform.rotate(
          angle: value * 0.1,
          child: CustomPaint(
            size: Size(size, size),
            painter: StarPainter(),
          ),
        );
      },
    );
  }

  Widget _buildOrnament(double left, double top, Color color) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0.0, end: 1.0),
      duration: Duration(milliseconds: 1500 + (left * 100).toInt()),
      curve: Curves.easeInOut,
      builder: (context, value, child) {
        return Positioned(
          left: left - 8,
          top: top,
          child: Transform.scale(
            scale: 0.8 + (sin(value * pi) * 0.2),
            child: Container(
              width: 16,
              height: 16,
              decoration: BoxDecoration(
                color: color,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: color.withOpacity(0.5),
                    blurRadius: 8,
                    spreadRadius: 2,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class TreeLayerPainter extends CustomPainter {
  final Color color;

  TreeLayerPainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(size.width / 2, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.close();

    canvas.drawPath(path, paint);

    // Add some highlights
    final highlightPaint = Paint()
      ..color = Colors.white.withOpacity(0.2)
      ..style = PaintingStyle.fill;

    final highlightPath = Path();
    highlightPath.moveTo(size.width / 2, 0);
    highlightPath.lineTo(size.width * 0.3, size.height * 0.5);
    highlightPath.lineTo(size.width / 2, size.height * 0.3);
    highlightPath.close();

    canvas.drawPath(highlightPath, highlightPaint);
  }

  @override
  bool shouldRepaint(TreeLayerPainter oldDelegate) => false;
}

class StarPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = Colors.yellow
      ..style = PaintingStyle.fill;

    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;

    final path = Path();
    for (int i = 0; i < 5; i++) {
      final angle = (i * 4 * pi / 5) - (pi / 2);
      final x = center.dx + radius * cos(angle);
      final y = center.dy + radius * sin(angle);
      if (i == 0) {
        path.moveTo(x, y);
      } else {
        path.lineTo(x, y);
      }
    }
    path.close();

    canvas.drawPath(path, paint);

    // Add glow
    final glowPaint = Paint()
      ..color = Colors.yellow.withOpacity(0.3)
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 8);

    canvas.drawPath(path, glowPaint);
  }

  @override
  bool shouldRepaint(StarPainter oldDelegate) => false;
}
