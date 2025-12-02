import 'package:flutter/material.dart';

class FadeScreenTransition extends Page<void> {
  final Widget child;
  final Duration? duration;
  final Curve? curve;

  const FadeScreenTransition({
    required this.child,
    this.duration = const Duration(milliseconds: 500),
    this.curve = Curves.easeOutCubic,
    super.key,
  });

  @override
  Route<void> createRoute(BuildContext context) {
    return PageRouteBuilder(
      settings: this,
      pageBuilder: (context, animation, secondaryAnimation) => child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 0.1);
        const end = Offset.zero;

        var tween = Tween(begin: begin, end: end)
            .chain(CurveTween(curve: curve ?? Curves.easeOutCubic));
        var offsetAnimation = animation.drive(tween);

        return FadeTransition(
          opacity: animation,
          child: SlideTransition(
            position: offsetAnimation,
            child: ScaleTransition(
              scale: Tween<double>(
                begin: 0.95,
                end: 1.0,
              ).animate(CurvedAnimation(
                parent: animation,
                curve: curve ?? Curves.easeOutCubic,
              )),
              child: child,
            ),
          ),
        );
      },
      transitionDuration: duration ?? const Duration(milliseconds: 500),
    );
  }
}
