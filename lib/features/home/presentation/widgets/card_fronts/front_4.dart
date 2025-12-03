import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bui_bloc/core/utils/screen_size_extension.dart';

class Front4 extends StatelessWidget {
  const Front4({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: const DecorationImage(
            image: AssetImage('assets/images/embe_3.png'),
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
                            .withValues(alpha: 0.9),
                        const Color.fromARGB(255, 79, 92, 98)
                            .withValues(alpha: 0.5),
                        Colors.transparent,
                      ],
                      stops: const [0.0, 0.3, 1.0],
                    ),
                  ),
                ),
              ),
              LayoutBuilder(
                builder: (context, constraints) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                          padding: EdgeInsets.all(context.getSize(
                              mobile: 20, desktop: 30, smallDesktop: 20)),
                          child: Column(
                            children: [
                              Icon(
                                Icons.auto_awesome,
                                size: context.getSize(
                                    mobile: 30, desktop: 60, smallDesktop: 30),
                                color: Colors.white,
                                shadows: [
                                  Shadow(
                                    color: Colors.black.withValues(alpha: 0.4),
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
                                'Mọi nỗ lực rồi sẽ được gặt hái thành quả, hãy cứ tiếp tục làm thật tốt, chặng đường còn dài những có anh bước tiếp cùng em 🍀',
                                style: GoogleFonts.openSans(
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
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
