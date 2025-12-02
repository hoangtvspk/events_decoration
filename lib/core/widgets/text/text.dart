import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// A custom Text widget that automatically uses SelectableText on web
/// and regular Text on other platforms.
///
/// This widget provides the same API as Flutter's Text widget,
/// but ensures text is selectable on web for better UX.
///
/// Example:
/// ```dart
/// AppText(
///   'Hello World',
///   style: TextStyle(fontSize: 16),
/// )
/// ```
class AppText extends StatelessWidget {
  /// The text to display
  final String data;

  /// The style to apply to the text
  final TextStyle? style;

  /// How the text should be aligned horizontally
  final TextAlign? textAlign;

  /// The directionality of the text
  final TextDirection? textDirection;

  /// Whether the text should break at soft line breaks
  final bool? softWrap;

  /// How visual overflow should be handled
  final TextOverflow? overflow;

  /// The maximum number of lines for the text to span
  final int? maxLines;

  /// An alternative semantics label for this text
  final String? semanticsLabel;

  /// The widthBasis for text rendering
  final TextWidthBasis? textWidthBasis;

  /// The height behavior for the text (mobile/desktop only)
  final TextHeightBehavior? textHeightBehavior;

  /// Selection color for SelectableText (web only)
  final Color? selectionColor;

  /// Whether to enable text selection (web only, defaults to true on web)
  final bool? enableInteractiveSelection;

  const AppText(
    this.data, {
    super.key,
    this.style,
    this.textAlign,
    this.textDirection,
    this.softWrap,
    this.overflow,
    this.maxLines,
    this.semanticsLabel,
    this.textWidthBasis,
    this.textHeightBehavior,
    this.selectionColor,
    this.enableInteractiveSelection,
  });

  @override
  Widget build(BuildContext context) {
    // On web, use SelectableText for better UX
    if (kIsWeb) {
      return SelectableText(
        data,
        key: key,
        style: style,
        textAlign: textAlign,
        textDirection: textDirection,
        maxLines: maxLines,
        semanticsLabel: semanticsLabel,
        textWidthBasis: textWidthBasis,
        selectionColor: selectionColor,
        enableInteractiveSelection: enableInteractiveSelection ?? true,
      );
    }

    // On mobile/desktop, use regular Text
    return Text(
      data,
      key: key,
      style: style,
      textAlign: textAlign,
      textDirection: textDirection,
      softWrap: softWrap,
      overflow: overflow,
      maxLines: maxLines,
      semanticsLabel: semanticsLabel,
      textWidthBasis: textWidthBasis,
      textHeightBehavior: textHeightBehavior,
    );
  }
}
