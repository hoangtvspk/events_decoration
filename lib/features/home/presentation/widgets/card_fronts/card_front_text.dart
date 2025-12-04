import 'package:flutter/material.dart';
import 'package:bui_bloc/core/utils/screen_size_extension.dart';

/// Reusable text widget for greeting card fronts
/// Provides consistent styling with Linotte font, shadows, and responsive sizing
class CardFrontText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;
  final List<Shadow>? shadows;
  final String? fontFamily;
  final double? height;

  const CardFrontText({
    super.key,
    required this.text,
    this.fontSize,
    this.fontWeight,
    this.color,
    this.textAlign,
    this.shadows,
    this.fontFamily,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    // Default shadows for prominence on background images
    final defaultShadows = shadows ??
        [
          Shadow(
            color: Colors.black.withValues(alpha: 0.7),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
          Shadow(
            color: Colors.black.withValues(alpha: 0.5),
            blurRadius: 4,
            offset: const Offset(0, 1),
          ),
        ];

    final fontSize = this.fontSize ??
        context.getSize(
          mobile: 18,
          desktop: 20,
          smallDesktop: 18,
          mediumDesktop: 18,
        );
    final textColor = color ?? Colors.white;

    // Tách emoji và text thành các TextSpan riêng
    final runes = text.runes.toList();
    final textSpans = <TextSpan>[];
    String currentTextGroup = '';

    for (int i = 0; i < runes.length; i++) {
      final char = String.fromCharCode(runes[i]);
      final isEmoji = _isEmoji(char);

      if (isEmoji) {
        // Lưu TextSpan text cũ nếu có
        if (currentTextGroup.isNotEmpty) {
          textSpans.add(
            TextSpan(
              text: currentTextGroup,
              style: TextStyle(
                fontFamily: fontFamily ?? 'Excalifont',
                fontSize: fontSize,
                fontWeight: fontWeight ?? FontWeight.w500,
                color: textColor,
                height: height ?? 1.4,
                shadows: defaultShadows,
              ),
            ),
          );
          currentTextGroup = '';
        }

        // Tạo TextSpan riêng cho emoji (không có shadow)
        textSpans.add(
          TextSpan(
            text: char,
            style: TextStyle(
              fontFamily: fontFamily ?? 'Excalifont',
              fontSize: fontSize,
              fontWeight: fontWeight ?? FontWeight.w500,
              color: textColor,
              height: height ?? 1.4,
              // Không có shadow cho emoji
            ),
          ),
        );
      } else {
        // Thêm vào group text
        currentTextGroup = currentTextGroup + char;
      }
    }

    // Thêm TextSpan cuối cùng nếu còn (chỉ text, không phải emoji)
    if (currentTextGroup.isNotEmpty) {
      textSpans.add(
        TextSpan(
          text: currentTextGroup,
          style: TextStyle(
            fontFamily: fontFamily ?? 'Excalifont',
            fontSize: fontSize,
            fontWeight: fontWeight ?? FontWeight.w500,
            color: textColor,
            height: height ?? 1.4,
            shadows: defaultShadows,
          ),
        ),
      );
    }

    return Text.rich(
      TextSpan(children: textSpans),
      textAlign: textAlign ?? TextAlign.center,
    );
  }

  /// Kiểm tra xem một ký tự có phải là emoji không
  bool _isEmoji(String char) {
    if (char.isEmpty) return false;

    final runes = char.runes.toList();
    if (runes.isEmpty) return false;

    final codePoint = runes[0];

    // Các ranges emoji phổ biến trong Unicode
    return (codePoint >= 0x1F600 && codePoint <= 0x1F64F) || // Emoticons
        (codePoint >= 0x1F300 &&
            codePoint <= 0x1F5FF) || // Misc Symbols and Pictographs
        (codePoint >= 0x1F680 && codePoint <= 0x1F6FF) || // Transport and Map
        (codePoint >= 0x1F1E0 && codePoint <= 0x1F1FF) || // Flags
        (codePoint >= 0x2600 && codePoint <= 0x26FF) || // Misc symbols
        (codePoint >= 0x2700 && codePoint <= 0x27BF) || // Dingbats
        (codePoint >= 0x1F900 &&
            codePoint <= 0x1F9FF) || // Supplemental Symbols and Pictographs
        (codePoint >= 0x1FA00 && codePoint <= 0x1FA6F) || // Chess Symbols
        (codePoint >= 0x1FA70 &&
            codePoint <= 0x1FAFF) || // Symbols and Pictographs Extended-A
        (codePoint >= 0xFE00 && codePoint <= 0xFE0F); // Variation Selectors
  }
}
