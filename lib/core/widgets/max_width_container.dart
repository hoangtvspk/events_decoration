import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// Wrapper widget that limits max width and centers content
/// Useful for web applications to prevent content from being too wide
///
/// Note: Flutter uses logical pixels (device-independent pixels).
/// On web, 1 Flutter unit ≈ 1 CSS pixel (with device pixel ratio = 1).
/// So maxWidth: 600 means approximately 600 CSS pixels on web.
class MaxWidthContainer extends StatelessWidget {
  final Widget child;
  final double maxWidth;
  final Color? backgroundColor;

  const MaxWidthContainer({
    super.key,
    required this.child,
    this.maxWidth = 600,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    // Only apply max width on web platform
    if (!kIsWeb) {
      return child;
    }

    // On web, use MediaQuery to get screen width for responsive design
    final screenWidth = MediaQuery.of(context).size.width;
    final effectiveMaxWidth = screenWidth < maxWidth ? screenWidth : maxWidth;

    return Container(
      color: backgroundColor,
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: effectiveMaxWidth,
          ),
          child: child,
        ),
      ),
    );
  }
}
