import 'package:flutter/material.dart';
import 'package:bui_bloc/core/utils/screen_size_extension.dart';
import 'card_front_text.dart';

class Front6 extends StatelessWidget {
  const Front6({super.key});

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
                  size: context.getSize(
                      mobile: 50,
                      desktop: 60,
                      mediumDesktop: 40,
                      smallDesktop: 50),
                  color: Colors.white,
                ),
                const SizedBox(height: 20),
                const CardFrontText(
                  text:
                      'Wishing you peace 🎄\nThương bản thân nhiều hơn nhé! Em luôn xứng đáng được yêu! 🥰',
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
