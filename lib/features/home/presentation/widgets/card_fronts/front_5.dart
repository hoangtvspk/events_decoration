import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bui_bloc/core/widgets/text/text.dart';
import 'package:bui_bloc/core/utils/screen_size_extension.dart';

class Front5 extends StatelessWidget {
  const Front5({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.green.shade800,
              Colors.green.shade600,
            ],
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.3),
              blurRadius: 20,
              spreadRadius: 5,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Container(
            padding: const EdgeInsets.all(32),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.green.shade700,
                  Colors.teal.shade700,
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.eco,
                  size: context.getSize(mobile: 50, desktop: 60),
                  color: Colors.white,
                ),
                const SizedBox(height: 20),
                AppText(
                  'Wishing you peace, happiness, and prosperity in the coming year!',
                  style: GoogleFonts.openSans(
                    fontSize: context.getSize(mobile: 16, desktop: 20),
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                    height: 1.4,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

