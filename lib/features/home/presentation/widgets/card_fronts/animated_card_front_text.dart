import 'package:flutter/material.dart';
import 'package:bui_bloc/core/utils/screen_size_extension.dart';

/// Animated text widget that displays text character by character (typing effect)
/// Automatically triggers when the card is displayed
/// Renders full text first with invisible characters, then reveals them one by one
class AnimatedCardFrontText extends StatefulWidget {
  final String text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final TextAlign? textAlign;
  final List<Shadow>? shadows;
  final String? fontFamily;
  final double? height;
  final Duration duration;
  final int cardIndex; // Index của card để detect khi card thay đổi
  final int?
      frontIndex; // Index của front này (0-4), null nếu luôn chạy animation

  const AnimatedCardFrontText({
    super.key,
    required this.text,
    required this.cardIndex,
    this.frontIndex,
    this.fontSize,
    this.fontWeight,
    this.color,
    this.textAlign,
    this.shadows,
    this.fontFamily,
    this.height,
    this.duration = const Duration(milliseconds: 4000),
  });

  @override
  State<AnimatedCardFrontText> createState() => _AnimatedCardFrontTextState();
}

class _AnimatedCardFrontTextState extends State<AnimatedCardFrontText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _progressAnimation;
  int? _lastAnimatedCardIndex;

  bool get _shouldAnimate {
    // Nếu có frontIndex, chỉ animate khi cardIndex khớp với frontIndex
    if (widget.frontIndex != null) {
      return widget.cardIndex == widget.frontIndex;
    }
    // Nếu không có frontIndex, luôn animate
    return true;
  }

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    );
    _progressAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.linear,
      ),
    );
    // Delay animation để đợi flip hoàn thành (600ms là duration của flip animation)
    Future.delayed(const Duration(milliseconds: 50), () {
      if (mounted &&
          _shouldAnimate &&
          _lastAnimatedCardIndex != widget.cardIndex) {
        _lastAnimatedCardIndex = widget.cardIndex;
        _controller.forward();
      }
    });
  }

  @override
  void didUpdateWidget(AnimatedCardFrontText oldWidget) {
    super.didUpdateWidget(oldWidget);
    // Chỉ reset và chạy lại khi card index thay đổi và front này được hiển thị
    if (oldWidget.cardIndex != widget.cardIndex && _shouldAnimate) {
      // Dừng và reset animation
      _controller.stop();
      _controller.reset();
      _lastAnimatedCardIndex = null;

      // Delay để đợi flip hoàn thành
      Future.delayed(const Duration(milliseconds: 50), () {
        if (mounted &&
            _shouldAnimate &&
            _lastAnimatedCardIndex != widget.cardIndex) {
          _lastAnimatedCardIndex = widget.cardIndex;
          _controller.forward();
        }
      });
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Không reset animation trong build để tránh gián đoạn

    // Default shadows for prominence on background images
    final defaultShadows = widget.shadows ??
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

    final textColor = widget.color ?? Colors.white;
    final fontSize = widget.fontSize ??
        context.getSize(
          mobile: 18,
          desktop: 20,
          mediumDesktop: 18,
          smallDesktop: 18,
        );

    return AnimatedBuilder(
      animation: _progressAnimation,
      builder: (context, child) {
        // Sử dụng runes để xử lý đúng emoji multi-byte
        final runes = widget.text.runes.toList();
        final totalChars = runes.length;
        final textSpans = <TextSpan>[];

        // Nhóm các ký tự text liên tiếp có cùng opacity lại với nhau
        // Emoji sẽ được tách riêng thành TextSpan không có shadow
        String currentTextGroup = '';
        double? currentTextOpacity;

        for (int i = 0; i < totalChars; i++) {
          // Tính opacity cho ký tự này
          final charProgress = (i + 1) / totalChars;
          final opacity = _progressAnimation.value >= charProgress ? 1.0 : 0.0;

          // Lấy ký tự Unicode đúng cách
          final char = String.fromCharCode(runes[i]);
          final isEmoji = _isEmoji(char);

          if (isEmoji) {
            // Nếu là emoji, lưu TextSpan text cũ nếu có
            if (currentTextGroup.isNotEmpty && currentTextOpacity != null) {
              final opacityValue = currentTextOpacity;
              textSpans.add(
                TextSpan(
                  text: currentTextGroup,
                  style: TextStyle(
                    fontFamily: widget.fontFamily ?? 'Excalifont',
                    fontSize: fontSize,
                    fontWeight: widget.fontWeight ?? FontWeight.w500,
                    color: textColor.withValues(alpha: opacityValue),
                    height: widget.height ?? 1.4,
                    shadows: defaultShadows.map((shadow) {
                      return Shadow(
                        color: shadow.color.withValues(alpha: opacityValue),
                        blurRadius: shadow.blurRadius,
                        offset: shadow.offset,
                      );
                    }).toList(),
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
                  fontFamily: widget.fontFamily ?? 'Excalifont',
                  fontSize: fontSize,
                  fontWeight: widget.fontWeight ?? FontWeight.w500,
                  color: textColor.withValues(alpha: opacity),
                  height: widget.height ?? 1.4,
                  // Không có shadow cho emoji
                ),
              ),
            );
          } else {
            // Nếu là text thường
            // Nếu opacity thay đổi hoặc chưa có group, tạo TextSpan mới
            if (currentTextOpacity != opacity || currentTextGroup.isEmpty) {
              // Lưu TextSpan cũ nếu có
              if (currentTextGroup.isNotEmpty && currentTextOpacity != null) {
                final opacityValue = currentTextOpacity;
                textSpans.add(
                  TextSpan(
                    text: currentTextGroup,
                    style: TextStyle(
                      fontFamily: widget.fontFamily ?? 'Excalifont',
                      fontSize: fontSize,
                      fontWeight: widget.fontWeight ?? FontWeight.w500,
                      color: textColor.withValues(alpha: opacityValue),
                      height: widget.height ?? 1.4,
                      shadows: defaultShadows.map((shadow) {
                        return Shadow(
                          color: shadow.color.withValues(alpha: opacityValue),
                          blurRadius: shadow.blurRadius,
                          offset: shadow.offset,
                        );
                      }).toList(),
                    ),
                  ),
                );
              }
              // Bắt đầu group mới
              currentTextGroup = char;
              currentTextOpacity = opacity;
            } else {
              // Thêm vào group hiện tại
              currentTextGroup = currentTextGroup + char;
            }
          }
        }

        // Thêm TextSpan cuối cùng nếu còn (chỉ text, không phải emoji)
        if (currentTextGroup.isNotEmpty && currentTextOpacity != null) {
          final opacity = currentTextOpacity;
          textSpans.add(
            TextSpan(
              text: currentTextGroup,
              style: TextStyle(
                fontFamily: widget.fontFamily ?? 'Excalifont',
                fontSize: fontSize,
                fontWeight: widget.fontWeight ?? FontWeight.w500,
                color: textColor.withValues(alpha: opacity),
                height: widget.height ?? 1.4,
                shadows: defaultShadows.map((shadow) {
                  return Shadow(
                    color: shadow.color.withValues(alpha: opacity),
                    blurRadius: shadow.blurRadius,
                    offset: shadow.offset,
                  );
                }).toList(),
              ),
            ),
          );
        }

        return Text.rich(
          TextSpan(children: textSpans),
          textAlign: widget.textAlign ?? TextAlign.center,
        );
      },
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
