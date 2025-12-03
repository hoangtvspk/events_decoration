import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bui_bloc/core/utils/screen_size_extension.dart';

class Front2 extends StatelessWidget {
  const Front2({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: const DecorationImage(
            image: AssetImage('assets/images/front_2_bg.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            fit: StackFit.expand,
            children: [
              Positioned.fill(
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        const Color.fromARGB(255, 79, 92, 98)
                            .withValues(alpha: 0.8),
                        const Color.fromARGB(255, 79, 92, 98)
                            .withValues(alpha: 0.2),
                        Colors.transparent,
                      ],
                      stops: const [0.0, 0.3, 1.0],
                    ),
                  ),
                ),
              ),
              LayoutBuilder(
                builder: (context, constraints) {
                  return Stack(children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.all(context.getSize(
                                mobile: 20, desktop: 30, smallDesktop: 20)),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.ac_unit,
                                  size: context.getSize(
                                      mobile: 30,
                                      desktop: 60,
                                      smallDesktop: 30),
                                  color: Colors.white,
                                  shadows: [
                                    Shadow(
                                      color:
                                          Colors.black.withValues(alpha: 0.4),
                                      blurRadius: 8,
                                      offset: const Offset(0, 2),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                    height: context.getSize(
                                        mobile: 10,
                                        desktop: 20,
                                        smallDesktop: 10)),
                                Text(
                                  'Giáng sinh an lành, em bé!\nMong mọi thứ xoay quanh em luôn là những điều đáng yêu, và chính em là điều đáng yêu nhất! 🥰',
                                  style: GoogleFonts.inter(
                                    fontSize: context.getSize(
                                        mobile: 18,
                                        desktop: 20,
                                        smallDesktop: 18),
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                    height: 1.4,
                                    shadows: [
                                      Shadow(
                                        color:
                                            Colors.black.withValues(alpha: 0.7),
                                        blurRadius: 8,
                                        offset: const Offset(0, 2),
                                      ),
                                      Shadow(
                                        color:
                                            Colors.black.withValues(alpha: 0.5),
                                        blurRadius: 4,
                                        offset: const Offset(0, 1),
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            )),
                        // width 30% of the container
                      ],
                    ),
                    Positioned(
                      left: 0,
                      bottom: 0,
                      child: Image.asset(
                        'assets/images/embe_6.png',
                        width: context.getSize(
                            mobile: constraints.maxWidth * 0.5,
                            desktop: constraints.maxWidth * 0.5),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ]);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
