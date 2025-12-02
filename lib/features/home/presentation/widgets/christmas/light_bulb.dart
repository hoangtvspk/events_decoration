import 'package:flutter/material.dart';
import 'package:bui_bloc/core/utils/screen_size_extension.dart';

class LightBulb extends StatefulWidget {
  final double size;
  final Color color;
  final double delay;

  const LightBulb({
    super.key,
    this.size = 30,
    this.color = Colors.yellow,
    this.delay = 0.0,
  });

  @override
  State<LightBulb> createState() => _LightBulbState();
}

class _LightBulbState extends State<LightBulb>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1000 + (widget.delay * 1000).toInt()),
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
        final brightness = 0.5 + (_controller.value * 0.5);
        return Container(
          width: widget.size,
          height: widget.size,
          decoration: BoxDecoration(
            color: widget.color.withValues(alpha: brightness),
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: widget.color.withValues(alpha: brightness * 0.8),
                blurRadius: widget.size * 0.5,
                spreadRadius: widget.size * 0.2,
              ),
            ],
          ),
          child: Container(
            margin: EdgeInsets.all(widget.size * 0.2),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.3),
              shape: BoxShape.circle,
            ),
          ),
        );
      },
    );
  }
}

class LightString extends StatelessWidget {
  final int count;
  final List<Color> colors;
  final double spacing;

  const LightString({
    super.key,
    this.count = 5,
    this.colors = const [
      Colors.red,
      Colors.green,
      Colors.blue,
      Colors.yellow,
      Colors.purple,
    ],
    this.spacing = 40,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final bulbSize =
            context.getSize(mobile: 25, desktop: 30, smallDesktop: 25);
        final totalBulbWidth = count * bulbSize;
        final availableWidth = constraints.maxWidth.isFinite
            ? constraints.maxWidth
            : MediaQuery.of(context).size.width;

        // Calculate spacing to fit all bulbs nicely within available width
        final calculatedSpacing =
            (availableWidth - totalBulbWidth) / (count + 1);
        // Use calculated spacing but ensure it's reasonable (between 8 and original spacing)
        final finalSpacing = calculatedSpacing.clamp(8.0, spacing);

        return Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: List.generate(count, (index) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: finalSpacing / 2),
              child: LightBulb(
                color: colors[index % colors.length],
                delay: index * 0.2,
                size: bulbSize,
              ),
            );
          }),
        );
      },
    );
  }
}
