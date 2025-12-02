import 'package:flutter/material.dart';

/// Extension trên BuildContext để lấy thông tin screen size
/// Sử dụng: context.screenWidth, context.isMobile, etc.
extension ScreenSizeExtension on BuildContext {
  /// Lấy screen width từ MediaQuery
  double get screenWidth => MediaQuery.of(this).size.width;

  /// Lấy screen height từ MediaQuery
  double get screenHeight => MediaQuery.of(this).size.height;

  /// Kiểm tra xem có phải mobile không (< 600px)
  bool get isMobile => screenWidth < 600;

  /// Kiểm tra xem có phải tablet không (600px - 1024px)
  bool get isTablet => screenWidth >= 600 && screenWidth < 1024;

  /// Kiểm tra xem có phải desktop không (>= 1024px)
  bool get isDesktop => screenWidth >= 1024;

  /// Kiểm tra xem có phải small desktop không (desktop nhưng height < 800px)
  bool get isSmallDesktop =>
      isDesktop && (screenHeight < 800 || screenWidth < 1550);

  /// Lấy giá trị size phù hợp dựa trên screen size
  ///
  /// [mobile] là bắt buộc
  /// Nếu không truyền [tablet], sẽ lấy giá trị của [mobile]
  /// Nếu không truyền [desktop], sẽ lấy giá trị của [tablet] (hoặc [mobile] nếu [tablet] null)
  /// [smallDesktop] được ưu tiên khi là desktop nhỏ (height < 800px)
  ///
  /// Ví dụ:
  /// ```dart
  /// context.getSize(mobile: 20, tablet: 30, desktop: 50, smallDesktop: 40)
  /// context.getSize(mobile: 20, desktop: 50, smallDesktop: 40) // tablet = 20
  /// ```
  double getSize({
    required double mobile,
    double? tablet,
    double? desktop,
    double? smallDesktop,
  }) {
    if (isMobile) {
      return mobile;
    }

    if (isTablet) {
      return tablet ?? mobile;
    }

    // Desktop
    if (isSmallDesktop && smallDesktop != null) {
      return smallDesktop;
    }

    return desktop ?? tablet ?? mobile;
  }
}
