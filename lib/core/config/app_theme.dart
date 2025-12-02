import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData get darkTheme {
    // Open Sans - Excellent Vietnamese support, very readable
    // One of the best fonts for Vietnamese text with clear diacritics
    final baseTextTheme = GoogleFonts.openSansTextTheme();

    // Modern purple/indigo/blue color scheme
    const primaryColor = Color(0xFF8B5CF6); // Purple
    const secondaryColor = Color(0xFF6366F1); // Indigo
    const backgroundColor = Color(0xFF1A1A2E); // Deep navy

    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: backgroundColor,
      primaryColor: primaryColor,
      colorScheme: const ColorScheme.dark(
        primary: primaryColor,
        secondary: secondaryColor,
        surface: Color(0xFF16213E),
        error: Color(0xFFF87171),
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: Colors.white,
        onError: Colors.white,
        onSurfaceVariant: Color(0xFFE5E7EB),
      ),
      // Inherit from base text theme and override color to white
      textTheme: baseTextTheme.copyWith(
        bodyLarge: baseTextTheme.bodyLarge?.copyWith(color: Colors.white),
        bodyMedium: baseTextTheme.bodyMedium?.copyWith(color: Colors.white),
        bodySmall: baseTextTheme.bodySmall?.copyWith(color: Colors.white),
        titleLarge: baseTextTheme.titleLarge?.copyWith(color: Colors.white),
        titleMedium: baseTextTheme.titleMedium?.copyWith(color: Colors.white),
        titleSmall: baseTextTheme.titleSmall?.copyWith(color: Colors.white),
        displayLarge: baseTextTheme.displayLarge?.copyWith(color: Colors.white),
        displayMedium:
            baseTextTheme.displayMedium?.copyWith(color: Colors.white),
        displaySmall: baseTextTheme.displaySmall?.copyWith(color: Colors.white),
        headlineLarge:
            baseTextTheme.headlineLarge?.copyWith(color: Colors.white),
        headlineMedium:
            baseTextTheme.headlineMedium?.copyWith(color: Colors.white),
        headlineSmall:
            baseTextTheme.headlineSmall?.copyWith(color: Colors.white),
        labelLarge: baseTextTheme.labelLarge?.copyWith(color: Colors.white),
        labelMedium: baseTextTheme.labelMedium?.copyWith(color: Colors.white),
        labelSmall: baseTextTheme.labelSmall?.copyWith(color: Colors.white),
      ),
      // AppBar theme
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.white),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      // Card theme
      cardTheme: CardThemeData(
        color: Colors.white.withValues(alpha: 0.1),
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(
            color: primaryColor.withValues(alpha: 0.3),
            width: 1,
          ),
        ),
      ),
      // Elevated button theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          foregroundColor: Colors.white,
          elevation: 4,
          shadowColor: primaryColor.withValues(alpha: 0.4),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
      // Input decoration theme
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.white.withValues(alpha: 0.1),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: primaryColor.withValues(alpha: 0.3),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: primaryColor.withValues(alpha: 0.3),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: primaryColor,
            width: 2,
          ),
        ),
      ),
    );
  }
}
