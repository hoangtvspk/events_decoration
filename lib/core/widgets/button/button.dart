import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../config/app_color.dart';

enum ButtonSize {
  small(height: 40, fontSize: 14),
  medium(height: 55, fontSize: 16),
  large(height: 60, fontSize: 18);

  final double height;
  final double fontSize;

  const ButtonSize({
    required this.height,
    required this.fontSize,
  });
}

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final String? iconPath;
  final Color? backgroundColor;
  final Color? textColor;
  final double? width;
  final EdgeInsets? padding;
  final bool isLoading;
  final ButtonSize size;
  final bool isFullWidth;

  const AppButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.iconPath,
    this.backgroundColor,
    this.textColor,
    this.width,
    this.padding,
    this.isLoading = false,
    this.size = ButtonSize.medium,
    this.isFullWidth = false,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: isLoading ? null : onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? AppColor.button,
        minimumSize: Size(
          isFullWidth ? double.infinity : (width ?? 0),
          size.height,
        ),
        padding: padding ?? const EdgeInsets.symmetric(horizontal: 16.0),
      ),
      child: isLoading
          ? const CircularProgressIndicator(
              color: AppColor.brownDark,
            )
          : Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (iconPath != null) ...[
                  SvgPicture.asset(
                    iconPath!,
                    colorFilter: ColorFilter.mode(
                      textColor ?? AppColor.textSecondary,
                      BlendMode.srcIn,
                    ),
                  ),
                  const SizedBox(width: 4),
                ],
                Text(
                  text,
                  style: TextStyle(
                    color: textColor ?? AppColor.textSecondary,
                    fontSize: size.fontSize,
                  ),
                ),
              ],
            ),
    );
  }
}
