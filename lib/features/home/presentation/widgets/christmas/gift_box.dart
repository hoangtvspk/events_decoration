import 'package:flutter/material.dart';

class GiftBox extends StatefulWidget {
  final double size;
  final Color ribbonColor;
  final Color boxColor;

  const GiftBox({
    super.key,
    this.size = 80,
    this.ribbonColor = Colors.red,
    this.boxColor = Colors.green,
  });

  @override
  State<GiftBox> createState() => _GiftBoxState();
}

class _GiftBoxState extends State<GiftBox> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);
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
        return Transform.scale(
          scale: 1.0 + (_controller.value * 0.1),
          child: SizedBox(
            width: widget.size,
            height: widget.size,
            child: Stack(
              children: [
                // Box
                Container(
                  decoration: BoxDecoration(
                    color: widget.boxColor,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: widget.boxColor.withOpacity(0.5),
                        blurRadius: 12,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                ),
                // Horizontal ribbon
                Positioned(
                  top: widget.size / 2 - 4,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 8,
                    decoration: BoxDecoration(
                      color: widget.ribbonColor,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
                // Vertical ribbon
                Positioned(
                  left: widget.size / 2 - 4,
                  top: 0,
                  bottom: 0,
                  child: Container(
                    width: 8,
                    decoration: BoxDecoration(
                      color: widget.ribbonColor,
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
                // Bow
                Positioned(
                  top: widget.size / 2 - 12,
                  left: widget.size / 2 - 12,
                  child: Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      color: widget.ribbonColor,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
